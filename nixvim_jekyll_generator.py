#!/usr/bin/env python3
"""
This script generates a Jekyll blog post summarizing a NixVim configuration from a JSON file.
The blog post includes details about Vim configuration, global variables, key mappings,
options, and imported modules.

Usage:
    python nixvim_jekyll_generator.py --input <path_to_json_file> [--output <path_to_output_markdown>]

The script requires that you are in a git repository if you want to include commit information
and repo status in the markdown metadata.
"""

import json
import argparse
from datetime import datetime
import subprocess

def get_git_info():
    """ Returns the current git commit hash and whether the repo has uncommitted changes. """
    try:
        commit = subprocess.check_output(['git', 'rev-parse', 'HEAD']).decode('utf-8').strip()
        dirty = subprocess.check_output(['git', 'status', '--porcelain']).decode('utf-8').strip() != ''
        return commit, dirty
    except subprocess.CalledProcessError:
        return "Unknown", "Unknown"

def generate_jekyll_post(data, output_file):
    data_dict = json.loads(data)
    config = data_dict['config']
    imports = data_dict['imports']
    
    mode_descriptions = {
        "n": "Normal mode",
        "i": "Insert mode",
        "v": "Visual and Select mode",
        "s": "Select mode",
        "t": "Terminal mode",
        "": "Normal, visual, select and operator-pending mode",
        "x": "Visual mode only, without select",
        "o": "Operator-pending mode",
        "l": "Insert, command-line and lang-arg mode",
        "c": "Command-line mode",
        "!": "Insert and command-line mode"
    }
    
    commit, dirty = get_git_info()
    date_time = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    date_for_filename = datetime.now().strftime("%Y-%m-%d")

    with open(output_file, 'w') as file:
        file.write("---\n")
        file.write(f"title: 'NixVim Configuration Summary'\n")
        file.write(f"date: {date_for_filename}\n")
        file.write(f"categories: ['NixVim', 'configuration']\n")
        file.write("---\n\n")
        file.write(f"Generated on: {date_time}\n\n")
        file.write(f"Git commit: {commit}\n\n")
        file.write(f"Repository dirty: {dirty}\n\n")
        
        
        file.write("## Global Variables\n")
        for key, value in config['globals'].items():
            file.write(f"- {key}: {value}\n")
        file.write("\n")
        
        file.write("## Options\n")
        for opt, value in config['opts'].items():
            file.write(f"- {opt}: {value}\n")
        file.write("\n")
        
        file.write("## Imported Modules\n")
        for imp in imports:
            file.write(f"- {imp}\n")

        
        file.write("## Vim Configuration\n")
        file.write("```vim\n")
        file.write(config['extraConfigVim'] + "\n")
        file.write("```\n\n")

        file.write("## Key Mappings\n\n")
        file.write("| Key | Action | Mode | Description |\n")
        file.write("| --- | ------ | ---- | ----------- |\n")
        for mapping in config['keymaps']:
            mode = mapping['mode']
            description = mode_descriptions.get(mode, "Unknown mode")
            key_string = mapping['key'].replace('`', '\\`')
            file.write(f"| `{key_string}` | `{mapping['action']}` | {mode} | {description} |\n")
        file.write("\n")
        
        print(f"Jekyll post '{output_file}' has been generated.")

def main():
    parser = argparse.ArgumentParser(description="Generate a Jekyll blog post from a NixVim configuration JSON file.")
    parser.add_argument("--input", required=True, help="Path to the input JSON file.")
    parser.add_argument("--output", default="nixvim_summary.md", help="Path to the output Markdown file for Jekyll.")
    
    args = parser.parse_args()
    
    with open(args.input, 'r') as file:
        json_data = file.read()
    
    generate_jekyll_post(json_data, args.output)

if __name__ == "__main__":
    main()

