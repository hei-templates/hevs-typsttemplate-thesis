<h1 align="center">
  <br>
  <img src="./04-resources/logos/hei-vs-light.svg" alt="HEI Logo Logo" width="200" height="200">
  <br>
  Hevs Typst Thesis Template
  <br>
</h1>

[![Read Template](https://img.shields.io/badge/Read-Template-blue)](https://github.com/tschinz/hevs-typsttemplate-thesis/blob/master/05-pdf/thesis.pdf) [![Download Template](https://img.shields.io/badge/Download-Template-brightgreen)](https://github.com/tschinz/hevs-typsttemplate-thesis/raw/master/05-pdf/thesis.pdf)

A Typst template for the HES-SO//Valais Wallis Bachelor thesis.

> **Warning**
> Disclaimer, this is an unofficial typst template not supported by the HEI-Vs. Use at your own risk, no support is provided for installation or use. You have been warned.

# Table of contents

<p align="center">
  <a href="#features">Features</a> •
  <a href="#getting-started">Getting started</a> •
  <a href="#contributing">Contributing</a> •
  <a href="#credits">Credits</a> •
  <a href="#find-us-on">Find us on</a>
</p>

## Features

[(Back to top)](#table-of-contents)

* Title page with official layout
* Table of contents, Table of figures, Table of tables, Table of listings
* Abstract
* Nice title styles for chapter and appendices
* Chapter table of contents (minitoc)
* Bibliography
* Glossary
* Code highlighting
* Nice default typography settings
* Custom Boxes

## Getting started

[(Back to top)](#table-of-contents)

### Installation

#### Windows

* Install [rust](https://www.rust-lang.org)
  ```bash
  curl https://sh.rustup.rs -sSf | sh
  ```

* Install [typst](https://typst.app/docs)
  ```bash
  cargo install --git https://github.com/typst/typst
  ```

* Install Fonts [Computer Moderns Font Family](https://www.ctan.org/pkg/cm-unicode)
  All files are located in `00-templates/font`

* (optional) Install [make](https://gnuwin32.sourceforge.net/packages/make.htm)

#### Linux

No explanation needed, install `make`, `rust` and `typst` fro myou favorite package manager.

#### MacOS

* Install [homebrew](https://brew.sh)
  ```bash
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/
  install.sh)"
  ```

* Install [typst](https://typst.app/docs)
  ```bash
  brew install typst
  ```

### How to use

1. Modify variables in `01-settings/metadata.typ`

2. Write your thesis

3. Use the given Makefile or your favorite IDE (e.g. VS Code) to build the PDF

   ```bash
   make help   # for more information
   make pdf    # builds your thesis in 05-pdf/
   make watch  # monitors the files and rebuilds incrementaly main.pdf
   make clean  # cleans intermediate files
   ```

   ## Contributing

   [(Back to top)](#table-of-contents)

1. Take a look at the [issues](https://github.com/tschinz/hevs-typsttemplate-thesis/issues) issues with the "Help wanted" tag

2. Choose something or open a new [issue](https://github.com/tschinz/hevs-typsttemplate-thesis/issues)

3. Fork the repo, fix the problem in a branch

4. Rebase your branch if needed

5. Submit a [pull request](https://github.com/tschinz/hevs-typsttemplate-thesis/pulls)

## Help

[(Back to top)](#table-of-contents)

[![Read Guide to Typst](https://img.shields.io/badge/Read-Guide_to_Typst-blue)](https://github.com/tschinz/hevs-typsttemplate-thesis/blob/master/guite-to-typst.pdf) [![Download Guide to Typst](https://img.shields.io/badge/Download-Guide_to_Typst-brightgreen)](https://github.com/tschinz/hevs-typsttemplate-thesis/raw/master/guide-to.typst.pdf)

## Credits

[(Back to top)](#table-of-contents)

* All from Typst
* Silvan Zahno

## License

[(Back to top)](#table-of-contents)

Apache License 2.0 see [LICENSE](LICENSE)


## Find us on

[(Back to top)](#table-of-contents)

* Webpage [hevs.ch](https://www.hevs.ch/synd)
* LinkedIn [HEI Valais-Wallis](https://www.linkedin.com/showcase/school-of-engineering-valais-wallis/)
* Youtube [HES-SO Valais-Wallis](https://www.youtube.com/user/HESSOVS/)
* Twitter [@hessovalais](https://twitter.com/hessovalais)
* Facebook [@hessovalais](https://www.facebook.com/hessovalais)