# Vim Notes

These are notes on how I vim. These are the parts of vim that I bother remembering.

I'm a fairly minimal user---I have yet to commit a lot of vim commands to memory let alone get familiar enough to use them in my workflows.

## Navigation

In order of frequency, here are my top navigation methods (vim calls them motions).

* `h`, `j`, `k`, and `l` for single character movement
* `^` and `$` for beginning and end of the lines movement
* `b` and `w` for backwards / forwards by word (I use `e` far less often)
* `<shift>[H|M|L]` to go to head, middle, and lower of screen
* (for lsp enabled buffers) `gd`, `gD`, and `gi` to jump into references and implementations
* `:<number>` go to line number
* `g;` to go to place of last edit
* `gf` to go to file under cursor 
* `<shift><up/down arrow>` to move page up and down
* `<number><up/down arrow>` to move relative line number
* (use sparingly) `/<regex>` to search in file

## Visual Mode

* `<ctrl>v` and `<shift>v`. I like to use `<ctrl>v` and insert mode to add bullets points for multiple lines, for example. I may also use `J` to merge multiple lines.

## Edit Stuff 

* delete until character dt" will delete until a "
* delete inside di( will delete inside parentheses
* `J` will merge the current line
* Surround (requires a plugin)
    * `cs([` to change parentheses
    * `ds(` to delete parentheses

I haven't remembered the rest.

## Buffer Navigation

* `:bn` and `:bN` to go to and from last buffer

## Tab Management

* `gT` to go to the next tab
* keymap `<leader>tn` to open new tab
* keymap `<leader>te %` to move buffer to a new tab
* keymap `<leader>tc` to close a tab

## Git Management

I use vim fugitive. I have keymapped many of its feature to `<leader>g` prefix. This is alo why my ripgrep usage is `<leader>r` to deconflict with git commands.

* `<leader>gd` to pull a git diff of current buffer
* many others...

## Text Search

I use vim ripgrep and keymap to `<leader>r`. I rarely use vimgrep now.

## File Search

I use vim ctrlp and use `<ctrl>p`.

Also, I use CHADtree for a filetree.

## Terminal

* use Ctrl+\ Ctrl+n to exit terminal mode

## Markdown

I use the markdown-preview.nvim plugin.

`:MarkdownPreview` and it will open a browser.

## LaTeX

I use vimtex
* `\ll` will start the continuous compilation
* `:VimtexTocOpen` will open the table of contents (maybe should keymap this)

