{ pkgs, lib, config, inputs, ... }:

{
  # https://devenv.sh/basics/
  #env.GREET = "devenv";

  # https://devenv.sh/packages/
  packages = with pkgs; let
    #agenix = callPackage "${inputs.agenix}/pkgs/agenix.nix" {
    #  ageBin = "${rage}/bin/rage";
    #};
  in [
    git keyutils rage pinentry-gtk2
    ragenix # currently the example works only with ragenix, due to
            # https://github.com/ryantm/agenix/issues/272
  ];

  # https://devenv.sh/scripts/
  #scripts.hello.exec = ''
  #  echo hello from $GREET
  #'';

  #enterShell = ''
  #  hello
  #  git --version
  #'';

  # https://devenv.sh/git-hooks/
  # git-hooks.hooks.shellcheck.enable = true;

  # See full reference at https://devenv.sh/reference/options/
}
