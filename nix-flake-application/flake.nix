# nix-flake-application/flake.nix
#
# This file packages pythoneda-artifact/nix-flake-application as a Nix flake.
#
# Copyright (C) 2023-today rydnr's pythoneda-artifact/nix-flake-application-artifact
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.
{
  description = "Application layer of pythoneda-artifact/nix-flake";
  inputs = rec {
    nixos.url = "github:NixOS/nixpkgs/nixos-23.05";
    flake-utils.url = "github:numtide/flake-utils/v1.0.0";
    pythoneda-artifact-nix-flake = {
      url =
        "github:pythoneda-artifact/nix-flake-artifact/0.0.1a9?dir=nix-flake";
      inputs.nixos.follows = "nixos";
      inputs.flake-utils.follows = "flake-utils";
      inputs.pythoneda-shared-git-shared.follows =
        "pythoneda-shared-git-shared";
      inputs.pythoneda-shared-nix-flake-shared.follows =
        "pythoneda-shared-nix-flake-shared";
      inputs.pythoneda-shared-pythoneda-banner.follows =
        "pythoneda-shared-pythoneda-banner";
      inputs.pythoneda-shared-pythoneda-domain.follows =
        "pythoneda-shared-pythoneda-domain";
      inputs.stringtemplate3.follows = "stringtemplate3";
    };
    pythoneda-artifact-nix-flake-infrastructure = {
      url =
        "github:pythoneda-artifact/nix-flake-infrastructure-artifact/0.0.1a5?dir=nix-flake-infrastructure";
      inputs.nixos.follows = "nixos";
      inputs.flake-utils.follows = "flake-utils";
      inputs.pythoneda-artifact-nix-flake.follows =
        "pythoneda-artifact-nix-flake";
      inputs.pythoneda-shared-artifact-changes-events.follows =
        "pythoneda-shared-artifact-changes-events";
      inputs.pythoneda-shared-artifact-changes-events-infrastructure.follows =
        "pythoneda-shared-artifact-changes-events-infrastructure";
      inputs.pythoneda-shared-artifact-changes-shared.follows =
        "pythoneda-shared-artifact-changes-shared";
      inputs.pythoneda-shared-code-requests-events.follows =
        "pythoneda-shared-code-requests-events";
      inputs.pythoneda-shared-code-requests-events-infrastructure.follows =
        "pythoneda-shared-code-requests-events-infrastructure";
      inputs.pythoneda-shared-code-requests-jupyterlab.follows =
        "pythoneda-shared-code-requests-jupyterlab";
      inputs.pythoneda-shared-code-requests-shared.follows =
        "pythoneda-shared-code-requests-shared";
      inputs.pythoneda-shared-git-shared.follows =
        "pythoneda-shared-git-shared";
      inputs.pythoneda-shared-pythoneda-banner.follows =
        "pythoneda-shared-pythoneda-banner";
      inputs.pythoneda-shared-pythoneda-domain.follows =
        "pythoneda-shared-pythoneda-domain";
      inputs.pythoneda-shared-pythoneda-infrastructure.follows =
        "pythoneda-shared-pythoneda-infrastructure";
      inputs.stringtemplate3.follows = "stringtemplate3";
    };
    pythoneda-shared-artifact-changes-events = {
      url =
        "github:pythoneda-shared-artifact-changes/events-artifact/0.0.1a21?dir=events";
      inputs.nixos.follows = "nixos";
      inputs.flake-utils.follows = "flake-utils";
      inputs.pythoneda-shared-artifact-changes-shared.follows =
        "pythoneda-shared-artifact-changes-shared";
      inputs.pythoneda-shared-code-requests-events.follows =
        "pythoneda-shared-code-requests-events";
      inputs.pythoneda-shared-code-requests-shared.follows =
        "pythoneda-shared-code-requests-shared";
      inputs.pythoneda-shared-pythoneda-banner.follows =
        "pythoneda-shared-pythoneda-banner";
      inputs.pythoneda-shared-pythoneda-domain.follows =
        "pythoneda-shared-pythoneda-domain";
    };
    pythoneda-shared-artifact-changes-events-infrastructure = {
      url =
        "github:pythoneda-shared-artifact-changes/events-infrastructure-artifact/0.0.1a16?dir=events-infrastructure";
      inputs.nixos.follows = "nixos";
      inputs.flake-utils.follows = "flake-utils";
      inputs.pythoneda-shared-artifact-changes-events.follows =
        "pythoneda-shared-artifact-changes-events";
      inputs.pythoneda-shared-artifact-changes-shared.follows =
        "pythoneda-shared-artifact-changes-shared";
      inputs.pythoneda-shared-code-requests-events.follows =
        "pythoneda-shared-code-requests-events";
      inputs.pythoneda-shared-code-requests-shared.follows =
        "pythoneda-shared-code-requests-shared";
      inputs.pythoneda-shared-pythoneda-banner.follows =
        "pythoneda-shared-pythoneda-banner";
      inputs.pythoneda-shared-pythoneda-domain.follows =
        "pythoneda-shared-pythoneda-domain";
      inputs.pythoneda-shared-pythoneda-infrastructure.follows =
        "pythoneda-shared-pythoneda-infrastructure";
    };
    pythoneda-shared-artifact-changes-shared = {
      url =
        "github:pythoneda-shared-artifact-changes/shared-artifact/0.0.1a15?dir=shared";
      inputs.nixos.follows = "nixos";
      inputs.flake-utils.follows = "flake-utils";
      inputs.pythoneda-shared-pythoneda-banner.follows =
        "pythoneda-shared-pythoneda-banner";
      inputs.pythoneda-shared-pythoneda-domain.follows =
        "pythoneda-shared-pythoneda-domain";
    };
    pythoneda-shared-code-requests-events = {
      url =
        "github:pythoneda-shared-code-requests/events-artifact/0.0.1a11?dir=events";
      inputs.nixos.follows = "nixos";
      inputs.flake-utils.follows = "flake-utils";
      inputs.pythoneda-shared-artifact-changes-shared.follows =
        "pythoneda-shared-artifact-changes-shared";
      inputs.pythoneda-shared-code-requests-shared.follows =
        "pythoneda-shared-code-requests-shared";
      inputs.pythoneda-shared-pythoneda-banner.follows =
        "pythoneda-shared-pythoneda-banner";
      inputs.pythoneda-shared-pythoneda-domain.follows =
        "pythoneda-shared-pythoneda-domain";
    };
    pythoneda-shared-code-requests-events-infrastructure = {
      url =
        "github:pythoneda-shared-code-requests/events-infrastructure-artifact/0.0.1a7?dir=events-infrastructure";
      inputs.nixos.follows = "nixos";
      inputs.flake-utils.follows = "flake-utils";
      inputs.pythoneda-shared-artifact-changes-shared.follows =
        "pythoneda-shared-artifact-changes-shared";
      inputs.pythoneda-shared-code-requests-events.follows =
        "pythoneda-shared-code-requests-events";
      inputs.pythoneda-shared-code-requests-shared.follows =
        "pythoneda-shared-code-requests-shared";
      inputs.pythoneda-shared-pythoneda-banner.follows =
        "pythoneda-shared-pythoneda-banner";
      inputs.pythoneda-shared-pythoneda-domain.follows =
        "pythoneda-shared-pythoneda-domain";
      inputs.pythoneda-shared-pythoneda-infrastructure.follows =
        "pythoneda-shared-pythoneda-infrastructure";
    };
    pythoneda-shared-code-requests-jupyterlab = {
      url =
        "github:pythoneda-shared-code-requests/jupyterlab-artifact/0.0.1a13?dir=jupyterlab";
      inputs.nixos.follows = "nixos";
      inputs.flake-utils.follows = "flake-utils";
      inputs.pythoneda-shared-code-requests-shared.follows =
        "pythoneda-shared-code-requests-shared";
      inputs.pythoneda-shared-git-shared.follows =
        "pythoneda-shared-git-shared";
      inputs.pythoneda-shared-nix-flake-shared.follows =
        "pythoneda-shared-nix-flake-shared";
      inputs.pythoneda-shared-pythoneda-banner.follows =
        "pythoneda-shared-pythoneda-banner";
      inputs.pythoneda-shared-pythoneda-domain.follows =
        "pythoneda-shared-pythoneda-domain";
    };
    pythoneda-shared-code-requests-shared = {
      url =
        "github:pythoneda-shared-code-requests/shared-artifact/0.0.1a11?dir=shared";
      inputs.nixos.follows = "nixos";
      inputs.flake-utils.follows = "flake-utils";
      inputs.pythoneda-shared-pythoneda-banner.follows =
        "pythoneda-shared-pythoneda-banner";
      inputs.pythoneda-shared-pythoneda-domain.follows =
        "pythoneda-shared-pythoneda-domain";
    };
    pythoneda-shared-git-shared = {
      url = "github:pythoneda-shared-git/shared-artifact/0.0.1a21?dir=shared";
      inputs.nixos.follows = "nixos";
      inputs.flake-utils.follows = "flake-utils";
      inputs.pythoneda-shared-pythoneda-banner.follows =
        "pythoneda-shared-pythoneda-banner";
      inputs.pythoneda-shared-pythoneda-domain.follows =
        "pythoneda-shared-pythoneda-domain";
    };
    pythoneda-shared-nix-flake-shared = {
      url =
        "github:pythoneda-shared-nix-flake/shared-artifact/0.0.1a8?dir=shared";
      inputs.nixos.follows = "nixos";
      inputs.flake-utils.follows = "flake-utils";
      inputs.pythoneda-shared-git-shared.follows =
        "pythoneda-shared-git-shared";
      inputs.pythoneda-shared-pythoneda-banner.follows =
        "pythoneda-shared-pythoneda-banner";
      inputs.pythoneda-shared-pythoneda-domain.follows =
        "pythoneda-shared-pythoneda-domain";
      inputs.stringtemplate3.follows = "stringtemplate3";
    };
    pythoneda-shared-pythoneda-application = {
      url =
        "github:pythoneda-shared-pythoneda/application-artifact/0.0.1a32?dir=application";
      inputs.nixos.follows = "nixos";
      inputs.flake-utils.follows = "flake-utils";
      inputs.pythoneda-shared-pythoneda-banner.follows =
        "pythoneda-shared-pythoneda-banner";
      inputs.pythoneda-shared-pythoneda-domain.follows =
        "pythoneda-shared-pythoneda-domain";
      inputs.pythoneda-shared-pythoneda-infrastructure.follows =
        "pythoneda-shared-pythoneda-infrastructure";
    };
    pythoneda-shared-pythoneda-banner = {
      url = "github:pythoneda-shared-pythoneda/banner/0.0.1a17";
      inputs.nixos.follows = "nixos";
      inputs.flake-utils.follows = "flake-utils";
    };
    pythoneda-shared-pythoneda-domain = {
      url =
        "github:pythoneda-shared-pythoneda/domain-artifact/0.0.1a43?dir=domain";
      inputs.nixos.follows = "nixos";
      inputs.flake-utils.follows = "flake-utils";
      inputs.pythoneda-shared-pythoneda-banner.follows =
        "pythoneda-shared-pythoneda-banner";
    };
    pythoneda-shared-pythoneda-infrastructure = {
      url =
        "github:pythoneda-shared-pythoneda/infrastructure-artifact/0.0.1a29?dir=infrastructure";
      inputs.nixos.follows = "nixos";
      inputs.flake-utils.follows = "flake-utils";
      inputs.pythoneda-shared-pythoneda-banner.follows =
        "pythoneda-shared-pythoneda-banner";
      inputs.pythoneda-shared-pythoneda-domain.follows =
        "pythoneda-shared-pythoneda-domain";
    };
    stringtemplate3 = {
      url = "github:rydnr/nix-flakes/stringtemplate3-3.1?dir=stringtemplate3";
      inputs.nixos.follows = "nixos";
      inputs.flake-utils.follows = "flake-utils";
    };
  };
  outputs = inputs:
    with inputs;
    flake-utils.lib.eachDefaultSystem (system:
      let
        org = "pythoneda-artifact";
        repo = "nix-flake-application";
        version = "0.0.1a4";
        sha256 = "sha256-53jX4nAxPPOupDtO1H+htMsfwgZHrgWUMIa8Vrsjf4w=";
        pname = "${org}-${repo}";
        pythonpackage = "pythoneda.artifact.nix_flake.application";
        package = builtins.replaceStrings [ "." ] [ "/" ] pythonpackage;
        entrypoint = "nix_flake_artifact_app";
        entrypoint-path = "${package}/${entrypoint}.py";
        description = "Application layer of pythoneda-artifact/nix-flake";
        license = pkgs.lib.licenses.gpl3;
        homepage = "https://github.com/${org}/${repo}";
        maintainers = with pkgs.lib.maintainers;
          [ "rydnr <github@acm-sl.org>" ];
        archRole = "B";
        space = "D";
        layer = "A";
        nixosVersion = builtins.readFile "${nixos}/.version";
        nixpkgsRelease =
          builtins.replaceStrings [ "\n" ] [ "" ] "nixos-${nixosVersion}";
        shared = import "${pythoneda-shared-pythoneda-banner}/nix/shared.nix";
        pkgs = import nixos { inherit system; };
        pythoneda-artifact-nix-flake-application-for = { python
          , pythoneda-artifact-nix-flake
          , pythoneda-artifact-nix-flake-infrastructure
          , pythoneda-shared-artifact-changes-events
          , pythoneda-shared-artifact-changes-events-infrastructure
          , pythoneda-shared-artifact-changes-shared
          , pythoneda-shared-code-requests-events
          , pythoneda-shared-code-requests-events-infrastructure
          , pythoneda-shared-code-requests-jupyterlab
          , pythoneda-shared-code-requests-shared, pythoneda-shared-git-shared
          , pythoneda-shared-nix-flake-shared
          , pythoneda-shared-pythoneda-application
          , pythoneda-shared-pythoneda-banner, pythoneda-shared-pythoneda-domain
          , pythoneda-shared-pythoneda-infrastructure, stringtemplate3 }:
          let
            pnameWithUnderscores =
              builtins.replaceStrings [ "-" ] [ "_" ] pname;
            pythonVersionParts = builtins.splitVersion python.version;
            pythonMajorVersion = builtins.head pythonVersionParts;
            pythonMajorMinorVersion =
              "${pythonMajorVersion}.${builtins.elemAt pythonVersionParts 1}";
            wheelName =
              "${pnameWithUnderscores}-${version}-py${pythonMajorVersion}-none-any.whl";
            banner_file = "${package}/nix_flake_artifact_banner.py";
            banner_class = "NixFlakeArtifactBanner";
          in python.pkgs.buildPythonPackage rec {
            inherit pname version;
            projectDir = ./.;
            pyprojectTemplateFile = ./pyprojecttoml.template;
            pyprojectTemplate = pkgs.substituteAll {
              authors = builtins.concatStringsSep ","
                (map (item: ''"${item}"'') maintainers);
              dbusNext = python.pkgs.dbus-next.version;
              desc = description;
              grpcio = python.pkgs.grpcio.version;
              joblib = python.pkgs.joblib.version;
              inherit homepage pname pythonpackage version;
              package = builtins.replaceStrings [ "." ] [ "/" ] pythonpackage;
              pythonMajorMinor = pythonMajorMinorVersion;
              pythonedaArtifactNixFlake = pythoneda-artifact-nix-flake.version;
              pythonedaArtifactNixFlakeInfrastructure =
                pythoneda-artifact-nix-flake-infrastructure.version;
              pythonedaSharedArtifactChangesEvents =
                pythoneda-shared-artifact-changes-events.version;
              pythonedaSharedArtifactChangesEventsInfrastructure =
                pythoneda-shared-artifact-changes-events-infrastructure.version;
              pythonedaSharedArtifactChangesShared =
                pythoneda-shared-artifact-changes-shared.version;
              pythonedaSharedCodeRequestsEvents =
                pythoneda-shared-code-requests-events.version;
              pythonedaSharedCodeRequestsEventsInfrastructure =
                pythoneda-shared-code-requests-events-infrastructure.version;
              pythonedaSharedCodeRequestsJupyterlab =
                pythoneda-shared-code-requests-jupyterlab.version;
              pythonedaSharedCodeRequestsShared =
                pythoneda-shared-code-requests-shared.version;
              pythonedaSharedGitShared = pythoneda-shared-git-shared.version;
              pythonedaSharedNixFlakeShared =
                pythoneda-shared-nix-flake-shared.version;
              pythonedaSharedPythonedaApplication =
                pythoneda-shared-pythoneda-application.version;
              pythonedaSharedPythonedaBanner =
                pythoneda-shared-pythoneda-banner.version;
              pythonedaSharedPythonedaDomain =
                pythoneda-shared-pythoneda-domain.version;
              pythonedaSharedPythonedaInfrastructure =
                pythoneda-shared-pythoneda-infrastructure.version;
              requests = python.pkgs.requests.version;
              src = pyprojectTemplateFile;
              stringtemplate3 = stringtemplate3.version;
            };
            src = pkgs.fetchFromGitHub {
              owner = org;
              rev = version;
              inherit repo sha256;
            };
            bannerTemplateFile =
              "${pythoneda-shared-pythoneda-banner}/templates/banner.py.template";
            bannerTemplate = pkgs.substituteAll {
              project_name = pname;
              file_path = banner_file;
              inherit banner_class org repo;
              tag = version;
              pescio_space = space;
              arch_role = archRole;
              hexagonal_layer = layer;
              python_version = pythonMajorMinorVersion;
              nixpkgs_release = nixpkgsRelease;
              src = bannerTemplateFile;
            };

            format = "pyproject";

            nativeBuildInputs = with python.pkgs; [ pip pkgs.jq poetry-core ];
            propagatedBuildInputs = with python.pkgs; [
              dbus-next
              grpcio
              joblib
              pythoneda-artifact-nix-flake
              pythoneda-artifact-nix-flake-infrastructure
              pythoneda-shared-artifact-changes-events
              pythoneda-shared-artifact-changes-events-infrastructure
              pythoneda-shared-artifact-changes-shared
              pythoneda-shared-code-requests-events
              pythoneda-shared-code-requests-events-infrastructure
              pythoneda-shared-code-requests-jupyterlab
              pythoneda-shared-code-requests-shared
              pythoneda-shared-git-shared
              pythoneda-shared-nix-flake-shared
              pythoneda-shared-pythoneda-application
              pythoneda-shared-pythoneda-banner
              pythoneda-shared-pythoneda-domain
              pythoneda-shared-pythoneda-infrastructure
              requests
              stringtemplate3
            ];

            #            pythonImportsCheck = [ pythonpackage ];

            unpackPhase = ''
              cp -r ${src} .
              sourceRoot=$(ls | grep -v env-vars)
              chmod -R +w $sourceRoot
              cp ${pyprojectTemplate} $sourceRoot/pyproject.toml
              cp ${bannerTemplate} $sourceRoot/${banner_file}
            '';

            postInstall = ''
              pushd /build/$sourceRoot
              for f in $(find . -name '__init__.py'); do
                if [[ ! -e $out/lib/python${pythonMajorMinorVersion}/site-packages/$f ]]; then
                  cp $f $out/lib/python${pythonMajorMinorVersion}/site-packages/$f;
                fi
              done
              popd
              mkdir $out/dist $out/bin
              cp dist/${wheelName} $out/dist
              jq ".url = \"$out/dist/${wheelName}\"" $out/lib/python${pythonMajorMinorVersion}/site-packages/${pnameWithUnderscores}-${version}.dist-info/direct_url.json > temp.json && mv temp.json $out/lib/python${pythonMajorMinorVersion}/site-packages/${pnameWithUnderscores}-${version}.dist-info/direct_url.json
              chmod +x $out/lib/python${pythonMajorMinorVersion}/site-packages/${entrypoint-path}
              export _PYTHONEDA_DEPS="$(echo $PYTHONPATH | sed 's : \n g' | wc -l)"
              export _PYTHONEDA_PYTHONEDA_DEPS="$(echo $PYTHONPATH | sed 's : \n g' | grep 'pythoneda' | wc -l)"
              echo '#!/usr/bin/env sh' > $out/bin/${entrypoint}.sh
              echo "echo 'Running ${org}/${repo}-${version} on Python ${python.version}'" >> $out/bin/${entrypoint}.sh
              echo "export PYTHONPATH=\"$(python ${pythoneda-shared-pythoneda-domain}/dist/scripts/process_pythonpath.py)\"" >> $out/bin/${entrypoint}.sh;
              echo "${python}/bin/python $out/lib/python${pythonMajorMinorVersion}/site-packages/${entrypoint-path} \$@" >> $out/bin/${entrypoint}.sh
              chmod +x $out/bin/${entrypoint}.sh
            '';

            meta = with pkgs.lib; {
              inherit description homepage license maintainers;
            };
          };
      in rec {
        apps = rec {
          default = pythoneda-artifact-nix-flake-application-default;
          pythoneda-artifact-nix-flake-application-default =
            pythoneda-artifact-nix-flake-application-python311;
          pythoneda-artifact-nix-flake-application-python38 = shared.app-for {
            package =
              self.packages.${system}.pythoneda-artifact-nix-flake-application-python38;
            inherit entrypoint;
          };
          pythoneda-artifact-nix-flake-application-python39 = shared.app-for {
            package =
              self.packages.${system}.pythoneda-artifact-nix-flake-application-python39;
            inherit entrypoint;
          };
          pythoneda-artifact-nix-flake-application-python310 = shared.app-for {
            package =
              self.packages.${system}.pythoneda-artifact-nix-flake-application-python310;
            inherit entrypoint;
          };
          pythoneda-artifact-nix-flake-application-python311 = shared.app-for {
            package =
              self.packages.${system}.pythoneda-artifact-nix-flake-application-python311;
            inherit entrypoint;
          };
        };
        defaultApp = apps.default;
        defaultPackage = packages.default;
        devShells = rec {
          default = pythoneda-artifact-nix-flake-application-default;
          pythoneda-artifact-nix-flake-application-default =
            pythoneda-artifact-nix-flake-application-python311;
          pythoneda-artifact-nix-flake-application-python38 =
            shared.devShell-for {
              package =
                packages.pythoneda-artifact-nix-flake-application-python38;
              python = pkgs.python38;
              pythoneda-shared-pythoneda-banner =
                pythoneda-shared-pythoneda-banner.packages.${system}.pythoneda-shared-pythoneda-banner-python38;
              pythoneda-shared-pythoneda-domain =
                pythoneda-shared-pythoneda-domain.packages.${system}.pythoneda-shared-pythoneda-domain-python38;
              inherit archRole layer nixpkgsRelease org pkgs repo space;
            };
          pythoneda-artifact-nix-flake-application-raw-python38 =
            shared.raw-devShell-for {
              package =
                packages.pythoneda-artifact-nix-flake-application-python38;
              python = pkgs.python38;
              pythoneda-shared-pythoneda-banner =
                pythoneda-shared-pythoneda-banner.packages.${system}.pythoneda-shared-pythoneda-banner-python38;
              pythoneda-shared-pythoneda-domain =
                pythoneda-shared-pythoneda-domain.packages.${system}.pythoneda-shared-pythoneda-domain-python38;
              inherit archRole layer nixpkgsRelease org pkgs repo space;
            };
          pythoneda-artifact-nix-flake-application-python39 =
            shared.devShell-for {
              package =
                packages.pythoneda-artifact-nix-flake-application-python39;
              python = pkgs.python39;
              pythoneda-shared-pythoneda-banner =
                pythoneda-shared-pythoneda-banner.packages.${system}.pythoneda-shared-pythoneda-banner-python39;
              pythoneda-shared-pythoneda-domain =
                pythoneda-shared-pythoneda-domain.packages.${system}.pythoneda-shared-pythoneda-domain-python39;
              inherit archRole layer nixpkgsRelease org pkgs repo space;
            };
          pythoneda-artifact-nix-flake-application-raw-python39 =
            shared.raw-devShell-for {
              package =
                packages.pythoneda-artifact-nix-flake-application-python39;
              python = pkgs.python39;
              pythoneda-shared-pythoneda-banner =
                pythoneda-shared-pythoneda-banner.packages.${system}.pythoneda-shared-pythoneda-banner-python39;
              pythoneda-shared-pythoneda-domain =
                pythoneda-shared-pythoneda-domain.packages.${system}.pythoneda-shared-pythoneda-domain-python39;
              inherit archRole layer nixpkgsRelease org pkgs repo space;
            };
          pythoneda-artifact-nix-flake-application-python310 =
            shared.devShell-for {
              package =
                packages.pythoneda-artifact-nix-flake-application-python310;
              python = pkgs.python310;
              pythoneda-shared-pythoneda-banner =
                pythoneda-shared-pythoneda-banner.packages.${system}.pythoneda-shared-pythoneda-banner-python310;
              pythoneda-shared-pythoneda-domain =
                pythoneda-shared-pythoneda-domain.packages.${system}.pythoneda-shared-pythoneda-domain-python310;
              inherit archRole layer nixpkgsRelease org pkgs repo space;
            };
          pythoneda-artifact-nix-flake-application-raw-python310 =
            shared.raw-devShell-for {
              package =
                packages.pythoneda-artifact-nix-flake-application-python310;
              python = pkgs.python310;
              pythoneda-shared-pythoneda-banner =
                pythoneda-shared-pythoneda-banner.packages.${system}.pythoneda-shared-pythoneda-banner-python310;
              pythoneda-shared-pythoneda-domain =
                pythoneda-shared-pythoneda-domain.packages.${system}.pythoneda-shared-pythoneda-domain-python310;
              inherit archRole layer nixpkgsRelease org pkgs repo space;
            };
          pythoneda-artifact-nix-flake-application-python311 =
            shared.devShell-for {
              package =
                packages.pythoneda-artifact-nix-flake-application-python311;
              python = pkgs.python311;
              pythoneda-shared-pythoneda-banner =
                pythoneda-shared-pythoneda-banner.packages.${system}.pythoneda-shared-pythoneda-banner-python311;
              pythoneda-shared-pythoneda-domain =
                pythoneda-shared-pythoneda-domain.packages.${system}.pythoneda-shared-pythoneda-domain-python311;
              inherit archRole layer nixpkgsRelease org pkgs repo space;
            };
          pythoneda-artifact-nix-flake-application-raw-python311 =
            shared.raw-devShell-for {
              package =
                packages.pythoneda-artifact-nix-flake-application-python311;
              python = pkgs.python311;
              pythoneda-shared-pythoneda-banner =
                pythoneda-shared-pythoneda-banner.packages.${system}.pythoneda-shared-pythoneda-banner-python311;
              pythoneda-shared-pythoneda-domain =
                pythoneda-shared-pythoneda-domain.packages.${system}.pythoneda-shared-pythoneda-domain-python311;
              inherit archRole layer nixpkgsRelease org pkgs repo space;
            };
        };
        packages = rec {
          default = pythoneda-artifact-nix-flake-application-default;
          pythoneda-artifact-nix-flake-application-default =
            pythoneda-artifact-nix-flake-application-python311;
          pythoneda-artifact-nix-flake-application-python38 =
            pythoneda-artifact-nix-flake-application-for {
              python = pkgs.python38;
              pythoneda-artifact-nix-flake =
                pythoneda-artifact-nix-flake.packages.${system}.pythoneda-artifact-nix-flake-python38;
              pythoneda-artifact-nix-flake-infrastructure =
                pythoneda-artifact-nix-flake-infrastructure.packages.${system}.pythoneda-artifact-nix-flake-infrastructure-python38;
              pythoneda-shared-artifact-changes-events =
                pythoneda-shared-artifact-changes-events.packages.${system}.pythoneda-shared-artifact-changes-events-python38;
              pythoneda-shared-artifact-changes-events-infrastructure =
                pythoneda-shared-artifact-changes-events-infrastructure.packages.${system}.pythoneda-shared-artifact-changes-events-infrastructure-python38;
              pythoneda-shared-artifact-changes-shared =
                pythoneda-shared-artifact-changes-shared.packages.${system}.pythoneda-shared-artifact-changes-shared-python38;
              pythoneda-shared-code-requests-events =
                pythoneda-shared-code-requests-events.packages.${system}.pythoneda-shared-code-requests-events-python38;
              pythoneda-shared-code-requests-events-infrastructure =
                pythoneda-shared-code-requests-events-infrastructure.packages.${system}.pythoneda-shared-code-requests-events-infrastructure-python38;
              pythoneda-shared-code-requests-jupyterlab =
                pythoneda-shared-code-requests-jupyterlab.packages.${system}.pythoneda-shared-code-requests-jupyterlab-python38;
              pythoneda-shared-code-requests-shared =
                pythoneda-shared-code-requests-shared.packages.${system}.pythoneda-shared-code-requests-shared-python38;
              pythoneda-shared-git-shared =
                pythoneda-shared-git-shared.packages.${system}.pythoneda-shared-git-shared-python38;
              pythoneda-shared-nix-flake-shared =
                pythoneda-shared-nix-flake-shared.packages.${system}.pythoneda-shared-nix-flake-shared-python38;
              pythoneda-shared-pythoneda-application =
                pythoneda-shared-pythoneda-application.packages.${system}.pythoneda-shared-pythoneda-application-python38;
              pythoneda-shared-pythoneda-banner =
                pythoneda-shared-pythoneda-banner.packages.${system}.pythoneda-shared-pythoneda-banner-python38;
              pythoneda-shared-pythoneda-domain =
                pythoneda-shared-pythoneda-domain.packages.${system}.pythoneda-shared-pythoneda-domain-python38;
              pythoneda-shared-pythoneda-infrastructure =
                pythoneda-shared-pythoneda-infrastructure.packages.${system}.pythoneda-shared-pythoneda-infrastructure-python38;
              stringtemplate3 =
                stringtemplate3.packages.${system}.stringtemplate3-python38;
            };
          pythoneda-artifact-nix-flake-application-python39 =
            pythoneda-artifact-nix-flake-application-for {
              python = pkgs.python39;
              pythoneda-artifact-nix-flake =
                pythoneda-artifact-nix-flake.packages.${system}.pythoneda-artifact-nix-flake-python39;
              pythoneda-artifact-nix-flake-infrastructure =
                pythoneda-artifact-nix-flake-infrastructure.packages.${system}.pythoneda-artifact-nix-flake-infrastructure-python39;
              pythoneda-shared-artifact-changes-events =
                pythoneda-shared-artifact-changes-events.packages.${system}.pythoneda-shared-artifact-changes-events-python39;
              pythoneda-shared-artifact-changes-events-infrastructure =
                pythoneda-shared-artifact-changes-events-infrastructure.packages.${system}.pythoneda-shared-artifact-changes-events-infrastructure-python39;
              pythoneda-shared-artifact-changes-shared =
                pythoneda-shared-artifact-changes-shared.packages.${system}.pythoneda-shared-artifact-changes-shared-python39;
              pythoneda-shared-code-requests-events =
                pythoneda-shared-code-requests-events.packages.${system}.pythoneda-shared-code-requests-events-python39;
              pythoneda-shared-code-requests-events-infrastructure =
                pythoneda-shared-code-requests-events-infrastructure.packages.${system}.pythoneda-shared-code-requests-events-infrastructure-python39;
              pythoneda-shared-code-requests-jupyterlab =
                pythoneda-shared-code-requests-jupyterlab.packages.${system}.pythoneda-shared-code-requests-jupyterlab-python39;
              pythoneda-shared-code-requests-shared =
                pythoneda-shared-code-requests-shared.packages.${system}.pythoneda-shared-code-requests-shared-python39;
              pythoneda-shared-git-shared =
                pythoneda-shared-git-shared.packages.${system}.pythoneda-shared-git-shared-python39;
              pythoneda-shared-nix-flake-shared =
                pythoneda-shared-nix-flake-shared.packages.${system}.pythoneda-shared-nix-flake-shared-python39;
              pythoneda-shared-pythoneda-application =
                pythoneda-shared-pythoneda-application.packages.${system}.pythoneda-shared-pythoneda-application-python39;
              pythoneda-shared-pythoneda-banner =
                pythoneda-shared-pythoneda-banner.packages.${system}.pythoneda-shared-pythoneda-banner-python39;
              pythoneda-shared-pythoneda-domain =
                pythoneda-shared-pythoneda-domain.packages.${system}.pythoneda-shared-pythoneda-domain-python39;
              pythoneda-shared-pythoneda-infrastructure =
                pythoneda-shared-pythoneda-infrastructure.packages.${system}.pythoneda-shared-pythoneda-infrastructure-python39;
              stringtemplate3 =
                stringtemplate3.packages.${system}.stringtemplate3-python39;
            };
          pythoneda-artifact-nix-flake-application-python310 =
            pythoneda-artifact-nix-flake-application-for {
              python = pkgs.python310;
              pythoneda-artifact-nix-flake =
                pythoneda-artifact-nix-flake.packages.${system}.pythoneda-artifact-nix-flake-python310;
              pythoneda-artifact-nix-flake-infrastructure =
                pythoneda-artifact-nix-flake-infrastructure.packages.${system}.pythoneda-artifact-nix-flake-infrastructure-python310;
              pythoneda-shared-artifact-changes-events =
                pythoneda-shared-artifact-changes-events.packages.${system}.pythoneda-shared-artifact-changes-events-python310;
              pythoneda-shared-artifact-changes-events-infrastructure =
                pythoneda-shared-artifact-changes-events-infrastructure.packages.${system}.pythoneda-shared-artifact-changes-events-infrastructure-python310;
              pythoneda-shared-artifact-changes-shared =
                pythoneda-shared-artifact-changes-shared.packages.${system}.pythoneda-shared-artifact-changes-shared-python310;
              pythoneda-shared-code-requests-events =
                pythoneda-shared-code-requests-events.packages.${system}.pythoneda-shared-code-requests-events-python310;
              pythoneda-shared-code-requests-events-infrastructure =
                pythoneda-shared-code-requests-events-infrastructure.packages.${system}.pythoneda-shared-code-requests-events-infrastructure-python310;
              pythoneda-shared-code-requests-jupyterlab =
                pythoneda-shared-code-requests-jupyterlab.packages.${system}.pythoneda-shared-code-requests-jupyterlab-python310;
              pythoneda-shared-code-requests-shared =
                pythoneda-shared-code-requests-shared.packages.${system}.pythoneda-shared-code-requests-shared-python310;
              pythoneda-shared-git-shared =
                pythoneda-shared-git-shared.packages.${system}.pythoneda-shared-git-shared-python310;
              pythoneda-shared-nix-flake-shared =
                pythoneda-shared-nix-flake-shared.packages.${system}.pythoneda-shared-nix-flake-shared-python310;
              pythoneda-shared-pythoneda-application =
                pythoneda-shared-pythoneda-application.packages.${system}.pythoneda-shared-pythoneda-application-python310;
              pythoneda-shared-pythoneda-banner =
                pythoneda-shared-pythoneda-banner.packages.${system}.pythoneda-shared-pythoneda-banner-python310;
              pythoneda-shared-pythoneda-domain =
                pythoneda-shared-pythoneda-domain.packages.${system}.pythoneda-shared-pythoneda-domain-python310;
              pythoneda-shared-pythoneda-infrastructure =
                pythoneda-shared-pythoneda-infrastructure.packages.${system}.pythoneda-shared-pythoneda-infrastructure-python310;
              stringtemplate3 =
                stringtemplate3.packages.${system}.stringtemplate3-python310;
            };
          pythoneda-artifact-nix-flake-application-python311 =
            pythoneda-artifact-nix-flake-application-for {
              python = pkgs.python311;
              pythoneda-artifact-nix-flake =
                pythoneda-artifact-nix-flake.packages.${system}.pythoneda-artifact-nix-flake-python311;
              pythoneda-artifact-nix-flake-infrastructure =
                pythoneda-artifact-nix-flake-infrastructure.packages.${system}.pythoneda-artifact-nix-flake-infrastructure-python311;
              pythoneda-shared-artifact-changes-events =
                pythoneda-shared-artifact-changes-events.packages.${system}.pythoneda-shared-artifact-changes-events-python311;
              pythoneda-shared-artifact-changes-events-infrastructure =
                pythoneda-shared-artifact-changes-events-infrastructure.packages.${system}.pythoneda-shared-artifact-changes-events-infrastructure-python311;
              pythoneda-shared-artifact-changes-shared =
                pythoneda-shared-artifact-changes-shared.packages.${system}.pythoneda-shared-artifact-changes-shared-python311;
              pythoneda-shared-code-requests-events =
                pythoneda-shared-code-requests-events.packages.${system}.pythoneda-shared-code-requests-events-python311;
              pythoneda-shared-code-requests-events-infrastructure =
                pythoneda-shared-code-requests-events-infrastructure.packages.${system}.pythoneda-shared-code-requests-events-infrastructure-python311;
              pythoneda-shared-code-requests-jupyterlab =
                pythoneda-shared-code-requests-jupyterlab.packages.${system}.pythoneda-shared-code-requests-jupyterlab-python311;
              pythoneda-shared-code-requests-shared =
                pythoneda-shared-code-requests-shared.packages.${system}.pythoneda-shared-code-requests-shared-python311;
              pythoneda-shared-git-shared =
                pythoneda-shared-git-shared.packages.${system}.pythoneda-shared-git-shared-python311;
              pythoneda-shared-nix-flake-shared =
                pythoneda-shared-nix-flake-shared.packages.${system}.pythoneda-shared-nix-flake-shared-python311;
              pythoneda-shared-pythoneda-application =
                pythoneda-shared-pythoneda-application.packages.${system}.pythoneda-shared-pythoneda-application-python311;
              pythoneda-shared-pythoneda-banner =
                pythoneda-shared-pythoneda-banner.packages.${system}.pythoneda-shared-pythoneda-banner-python311;
              pythoneda-shared-pythoneda-domain =
                pythoneda-shared-pythoneda-domain.packages.${system}.pythoneda-shared-pythoneda-domain-python311;
              pythoneda-shared-pythoneda-infrastructure =
                pythoneda-shared-pythoneda-infrastructure.packages.${system}.pythoneda-shared-pythoneda-infrastructure-python311;
              stringtemplate3 =
                stringtemplate3.packages.${system}.stringtemplate3-python311;
            };
        };
      });
}
