# vim-lark-syntax

Plugin to add syntax highlighting to grammar files of the python 
package lark-parser.

![screenshot](https://github.com/omega16/vim-lark-syntax/example.png)

## Installation

### Manual installation

Clone this repository to your own vim plugins folder 

```
cd your_vim_plugin_path; git clone https://github.com/lark-parser/vim-lark-syntax
```

### Plugin manager

Probably something like 

```
MANAGER_NAME 'lark-parser/vim-lark-syntax'
```


## TODO

- [ ] Correct regex patterns highlight
 + Disable highlight of **()[]{}** if they 
  are preceded by odd number of '\'.
 + Highlight **\***,**+**,**?** 
- [ ] Highlight **,** inside templates 

