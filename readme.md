# vim-native-syntax

This vim plugin provides additional C and C++ syntax files providing a minimal
set of additional features beyond those provided by default. The majority of the
contents of these files have been cherry picked from [vim-cpp-enhanced-highlight](https://github.com/octol/vim-cpp-enhanced-highlight)
to be focusing on language constructs and specifically not keywords found in
the C & C++ standard libraries and Boost.

## Installation

The preferred installation method is [vundle](https://github.com/gmarik/Vundle.vim)
but any method can be used.

### Vundle

If you have [vundle](https://github.com/gmarik/Vundle.vim) installed, add to
your `.vimrc` and run `:PluginInstall` from vim.

```vim
Plugin 'kbenzie/vim-native-syntax'
```

#### Manual

If you do not use a plugin manager for vim, simply clone this repository if you
do not already have a `~/.vim/after` directory.

```sh
git clone https://github.com/octol/kbenzie/vim-native-syntax ~/.vim/after
```

Or simply copy the files `c.vim` and `cpp.vim` into `~/.vim/after/syntax`.

## Features

### C

* Highlight functions declarations and invocations, link to the `Function`
  highlight group.
* Highlight `NOTE` in comment blocks, link to the `Note` highlight group (undefined).

### C++

* Highlight template function declarations and invocations, link to the
  `Function` highlight group.
* Highlight the identifiers before the scope operator, link to the `Statement`
  highlight group.
* Highlight the `auto` keyword, link to the `Type` highlight group.

## Attributions

* Jon Haggblad jon@haeggblad.com
* (http://stackoverflow.com/questions/736701/class-function-names-highlighting-in-vim)[http://stackoverflow.com/questions/736701/class-function-names-highlighting-in-vim]
* (http://www.vim.org/scripts/script.php?script_id=4293)[http://www.vim.org/scripts/script.php?script_id=4293]
* (http://www.vim.org/scripts/script.php?script_id=2224)[http://www.vim.org/scripts/script.php?script_id=2224]
* (http://www.vim.org/scripts/script.php?script_id=1640)[http://www.vim.org/scripts/script.php?script_id=1640]
* (http://www.vim.org/scripts/script.php?script_id=3064)[http://www.vim.org/scripts/script.php?script_id=3064]
