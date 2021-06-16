with import <nixpkgs> { };

buildFHSUserEnv {
  name = "enter-fhs";
  targetPkgs = pkgs: with pkgs; [
    arduino
    wmname
  ];
  #multiPkgs = pkgs: with pkgs;
  #  [ zlib
  #    
  #];
  profile = ''
  export PS1="fhs%# "
  '';
  runScript = "bash -c 'wmname LG3D && arduino Model01-Config.ino'";
}
