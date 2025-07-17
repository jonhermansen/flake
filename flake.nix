{
  description = "Jon test";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-25.05";
  };
  outputs =
    { self, nixpkgs }:
    {
      packages.x86_64-linux.emacs = nixpkgs.legacyPackages.x86_64-linux.emacs;
      packages.x86_64-linux.zsh = nixpkgs.legacyPackages.x86_64-linux.zsh;
      packages.x86_64-linux.default = self.packages.x86_64-linux.zsh;
    };
}
