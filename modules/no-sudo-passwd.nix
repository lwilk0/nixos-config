{ ... }:

{
  # Remove need for sudo password for user wilko
  security.sudo.extraRules = [
    { users = [ "wilko" ];
      commands = [
        { command = "ALL" ;
	  options = [ "NOPASSWD" ];
	}
      ];
    }
  ];
}
