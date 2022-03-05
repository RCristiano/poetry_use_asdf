<img src="https://cdn.rawgit.com/oh-my-fish/oh-my-fish/e4f1c2e0219a17e2c748b824004c8d0b38055c16/docs/logo.svg" align="left" width="144px" height="144px"/>

#### poetry
> A plugin for [Oh My Fish][omf-link].

[![MIT License](https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square)](/LICENSE)
[![Fish Shell Version](https://img.shields.io/badge/fish-v3.0.0-007EC7.svg?style=flat-square)](https://fishshell.com)
[![Oh My Fish Framework](https://img.shields.io/badge/Oh%20My%20Fish-Framework-007EC7.svg?style=flat-square)](https://www.github.com/oh-my-fish/oh-my-fish)

<br/>

This plugin wraps [poetry][poetry-link] to provide a convenient interface to manage your python versions installed by [asdf][asdf-link].

Adds completions to the `poetry env use` command to complete with installed python versions and to `poetry env remove` to complete with env names provided by `poetry env list`.

## Install

```fish
omf install https://github.com/RCristiano/poetry_use_asdf
```

## Usage

```fish
poetry env use <python_version>
```

# License

[MIT][mit] © [Rodrigo Cristiano][author] et [al][contributors]


[mit]:            https://opensource.org/licenses/MIT
[author]:         https://github.com/RCristiano
[contributors]:   https://github.com/RCristiano/plugin-poetry/graphs/contributors
[omf-link]:       https://www.github.com/oh-my-fish/oh-my-fish
[poetry-link]:    https://www.python-poetry.org/
[asdf-link]:      https://asdf-vm.com/

[license-badge]:  https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square
