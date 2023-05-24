# Autogenerated from euler.yaml. Do not edit.

{
  description = "juspay-extra";
  inputs = {
    # Laziness of nix allows us to be lazy here and avoid resolving deps
    # The downside is that most of this .follows are redundant
    
  };

  outputs = flakeInputs@{ self, euler-build, ... }:
    euler-build.mkEulerFlake {
      overlayPath = ./nix/overlay.nix;
      extraOverlayPaths = [
        
      ];
      mkConfig = { nixpkgs }: {
        flakeName = "juspay-extra";
        defaultPackageName = "juspay-extra";
        exportPackages = [
          "juspay-extra"
        ];
        shellTools = with nixpkgs; [
          haskell-language-server
        ];
        # shellAttrs = {
        # };
      };
      inputs = flakeInputs;
    };
}
