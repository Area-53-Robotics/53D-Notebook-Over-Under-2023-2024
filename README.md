# 53D-Over-Under-Notebook

[![Build Typst Document](https://github.com/Area-53-Robotics/53D-Over-Under-Notebook/actions/workflows/build.yml/badge.svg)](https://github.com/Area-53-Robotics/53D-Over-Under-Notebook/actions/workflows/build.yml) [![Spell Check](https://github.com/Area-53-Robotics/53D-Over-Under-Notebook/actions/workflows/typos.yml/badge.svg)](https://github.com/Area-53-Robotics/53D-Over-Under-Notebook/actions/workflows/typos.yml) [![License: CC BY-NC-ND 4.0](https://img.shields.io/badge/License-CC_BY--NC--ND_4.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc-nd/4.0/) [![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

53D's notebook for the 2023-24 VRC Over Under challenge. Written by Ajibola Ajani, Jin Hao Cao, and Ishika Saha.


## Special Thanks To
- Felix for backend code support
- Terry for notebooking advice

## Typst Extensions Used
- [tablex](https://github.com/PgBiel/typst-tablex/)    
- [codly](https://github.com/Dherse/codly)
- [showybox](https://github.com/Pablo-Gonzalez-Calderon/showybox-package)
- [codetastic](https://github.com/jneug/typst-codetastic)

## How to Compile
1. Install the required fonts:
    - Linux Libertine
    - Orbitron
2. Install Typst

Download a [release](https://github.com/typst/typst/releases/), and add it to your system's PATH. 

You can also use a package manager:

```
# Windows
winget install --id Typst.Typst

# MacOS
brew install typst

# Arch Linux
sudo pacman -S typst

# Nix
nix run nixpkgs#typst
```
3. Clone the repository
```sh
git clone https://github.com/Area-53-Robotics/53D-Over-Under-Notebook.git
cd 53D-Over-Under-Notebook
```
4. Compile the project
```sh
typst compile main.typ
```


## License
The content of this notebook is licensed under a [Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License][cc-by-nc-nd].

The template that this notebook uses is licensed under [GNU General Public License v3.0](https://www.gnu.org/licenses/gpl-3.0.en.html).

[![CC BY-NC-ND 4.0][cc-by-nc-nd-image]][cc-by-nc-nd]

[cc-by-nc-nd]: https://creativecommons.org/licenses/by-nc-nd/4.0/
[cc-by-nc-nd-image]: https://licensebuttons.net/l/by-nc-nd/4.0/88x31.png
