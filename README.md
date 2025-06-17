# homebrew-tap

Homebrew formulae that allows installation of tools through the [Homebrew](https://brew.sh) package manager that aren't in [`homebrew/*`](https://github.com/Homebrew) taps.

## Installation

```bash
brew tap cawaltrip/tap
brew install <FORMULA>
```

## Formulae

| Repository | Formula | Description |
| ---------- | ------- | ----------- |
| [cartools](https://github.com/showxu/cartools)  | [formula](Formula/cartool.rb) | CLI tool to extract Apple compiled asset catalogs (.car files). |
| [cmake](https://github.com/Kitware/CMake)  | [formula](Formula/cmake.rb) | CMake version 3.25.3 for testing. |
| [crudini](https://github.com/pixelb/crudini)    | [formula](Formula/crudini.rb) | A utility for manipulating ini files. |
| [chezmoi](https://github.com/cawaltrip/chezmoi) | [formula](Formula/chezmoi.rb) | Personal fork of [chezmoi](https://www.chezmoi.io/) to use when waiting for updates to chezmoi releases. | 
| [onelogin-aws-cli](https://github.com/physera/onelogin-aws-cli) | [formula](Formula/onelogin-aws-cli.rb) | Assume an AWS Role and cache credentials using Onelogin. | 

## Casks

| Repository | Formula | Description |
| ---------- | ------- | ----------- |
| [font-fira-code-nerd-font](https://github.com/cawaltrip/nerd-fonts)  | [formula](Casks/font-fira-code-nerd-font.rb) | Developer targeted fonts with a high number of glyphs (incl. Battery Nerd). |

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh/)

### Building new Python applications
```bash
$ mkdir new-package-dir
$ pyenv virtualenv 3.12 new-package-homebrew-venv
$ pip install <new-package> homebrew-pypi-poet
$ poet -f <new-package>
```