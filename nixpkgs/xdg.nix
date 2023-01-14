{ ... }:
let
  homePath = builtins.toString ../..;
in
{
  xdg.configFile = {
    "sheldon/plugins.toml".source = "${homePath}/.dotfiles/sheldon/plugins.toml";
    "yamllint/config".source = "${homePath}/.dotfiles/yamllint/config";
    "mypy/config".source = "${homePath}/.dotfiles/mypy/config";
  };
}
