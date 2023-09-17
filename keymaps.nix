{}:
{
  config = {
    options = { 
      # display relative numbers on the side
      number = true; 
      relativenumber = true; 
      
      # this will fold the code on open
      # foldmethod = "indent";
    };
    maps = {
      normal."<space>" = {
        action = "za";
      };
      visual."<space>" = {
        action = "zf";
      };
    };
  };
}
