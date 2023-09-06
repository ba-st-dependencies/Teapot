# Teapot  

A fork of JSON Web Token to be used as a dependency in [ba-st](https://githu.com/ba-st) for GS/64 & Pharo.

The `upstream` branch is supposed to track the changes in the `master` branch of [zeroflag/Teapot](https://github.com/zeroflag/Teapot)

The `release-candidate` is the branch where our changes land before releasing a version.

[![Pharo - Unit Tests](https://github.com/ba-st-dependencies/Teapot/actions/workflows/unit-tests.yml/badge.svg)](https://github.com/ba-st-dependencies/Teapot/actions/workflows/unit-tests.yml/badge.svg)
[![GS64 - Unit Tests](https://github.com/ba-st-dependencies/Teapot/actions/workflows/unit-tests-gs64.yml/badge.svg)](https://github.com/ba-st-dependencies/Teapot/actions/workflows/unit-tests-gs64.yml)
[![Coverage Status](https://codecov.io/github/ba-st-dependencies/Teapot/coverage.svg?branch=release-candidate)](https://codecov.io/gh/ba-st-dependencies/Teapot/branch/release-candidate)

[![Baseline Groups](https://github.com/ba-st-dependencies/Teapot/actions/workflows/loading-groups.yml/badge.svg)](https://github.com/ba-st-dependencies/Teapot/actions/workflows/loading-groups.yml)
[![GS64 Components](https://github.com/ba-st-dependencies/Teapot/actions/workflows/loading-gs64-components.yml/badge.svg)](https://github.com/ba-st-dependencies/Teapot/actions/workflows/loading-gs64-components.yml)
[![Markdown Lint](https://github.com/ba-st-dependencies/Teapot/actions/workflows/markdown-lint.yml/badge.svg)](https://github.com/ba-st-dependencies/Teapot/actions/workflows/markdown-lint.yml)

[![GitHub release](https://img.shields.io/github/release/ba-st-dependencies/Teapot.svg)](https://github.com/ba-st-dependencies/Teapot/releases/latest)
[![Pharo 9.0](https://img.shields.io/badge/Pharo-9.0-informational)](https://pharo.org)
[![Pharo 10](https://img.shields.io/badge/Pharo-10-informational)](https://pharo.org)
[![Pharo 11](https://img.shields.io/badge/Pharo-11-informational)](https://pharo.org)

[![GS64 3.6.6](https://img.shields.io/badge/GS64-3.6.6-informational)](https://gemtalksystems.com/products/gs64/)

Teapot is micro web framework on top of
the [Zinc HTTP components](https://github.com/svenvc/zinc), that focuses on
simplicity and ease of use. It's around 600 lines of code, not counting the tests.

> *Name origin*: [418 I'm a teapot](http://en.wikipedia.org/wiki/List_of_HTTP_status_codes)
> (RFC 2324) is an HTTP status code.

This code was defined in 1998 as one of the traditional IETF April Fools' jokes,
in RFC 2324, Hyper Text Coffee Pot Control Protocol. The RFC specifies this code
should be returned by tea pots requested to brew coffee.

## Quick links

- [**Explore the docs**](docs/README.md)

## License

- The code is licensed under [MIT](LICENSE).
- The documentation is licensed under [CC BY-SA 4.0](http://creativecommons.org/licenses/by-sa/4.0/).

## Quick Start

- Download the latest [Pharo 64 bits VM](https://get.pharo.org/64/).
- Download a ready to use image from the [release page](http://github.com/ba-st-dependencies/Teapot/releases/latest)
- Explore the [documentation](docs/).

```smalltalk
Metacello new
  baseline: 'Teapot';
  repository: 'github://ba-st-dependencies/Teapot/source';
  load.
```

## Installation

To load the project in a Pharo image, or declare it as a dependency of your own
project follow this [instructions](docs/Installation.md)

## Contributing

Check the [Contribution Guidelines](CONTRIBUTING.md)
