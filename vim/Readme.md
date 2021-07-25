# My awesome vim dotfile

![alt text](https://github.com/dcschmid/dotfiles/blob/master/screenshots/vim.png  "Vim")

This is my actually vim configuration, what I am using for private and for working development. 
You can use it as a base for your own vim configuration.

## Used Plugins
### Git
- [vim-fugitive](http://github.com/tpope/vim-fugitive) - Git plugin with commands 'G<command>'
- [vim-rhubarb](http://github.com/tpope/vim-rhubarb) - Enables GBrowse from fugitive to open GitHub URLs
- [gv.vim](http://github.com/junegunn/gv.vim) - A git commit browser for vim
- [vim-gitgutter](http://github.com/airblade/vim-gitgutter) - Shows git diff markers in the sign column
- [vim-twiggy](http://github.com/sodapopcan/vim-twiggy) -  Git branch management for Vim

### Navigation
- [fzf](http://github.com/junegunn/fzf) - Fuzzy file++ searching
- [fzf.vim](http://github.com/junegunn/fzf.vim) - Asynchronous file searcher

### Editing
- [editorconfig-vim](http://github.com/editorconfig/editorconfig-vim) - Editorconfig helps maintain consistent coding styles
- [rename.vim](http://github.com/danro/rename.vim) - Enables :Rename <new_name>
- [vim-commentary](http://github.com/tpope/vim-commentary) - Adds comment action with 'gc'
- [vim-multiple-cursors](http://github.com/terryma/vim-multiple-cursors) - Use multiple cursor in vim
- [vim-closetag](http://github.com/alvan/vim-closetag) - Autoclose HTML Tags

### Visual
- [iceberg-dark](http://github.com/gkeep/iceberg-dark) - Dark blue color scheme for various programs, complementary to iceberg.vim  
- [iceberg.vim](http://github.com/cocopon/iceberg.vim) - Iceberg is well-designed, bluish color scheme for Vim
- [golden-ratio](http://github.com/roman/golden-ratio) - Auto-expands current split
- [MatchTagAlways](http://github.com/alvan/valloric/MatchTagAlways) - Always highlight enclosing tags
- [vim-css-color](http://github.com/ap/vim-css-color) -  A very fast, multi-syntax context-sensitive color name highlighter
- [lightline.vim](http://github.com/itchyny/lightline.vim) - Lightweight statusline without slow plugin integrations
- [vim-lightline-coc](http://github.com/josa42/vim-lightline-coc) - This plugin provides coc diagnostics indicator for the lightline vim plugin

###  Syntax Highlight
- [vim-javascript](http://github.com/pangloss/vim-javascript) - Vastly improved Javascript indentation and syntax support in Vim. 
- [typescript-vim](http://github.com/leafgarland/typescript-vim) - Typescript syntax files for Vim
- [vim-jsx-typescript](http://github.com/peitalin/vim-jsx-typescript) - React JSX syntax highlighting for vim and Typescript
- [vim-styled-components](http://github.com/styled-components/vim-styled-components) - Vim bundle for styled-components based javascript files
- [vim-graphql](http://github.com/jparise/vim-graphql) - provides GraphQL file detection, syntax highlighting, and indentation
- [vim-vue-plugin](http://github.com/leafOfTree/vim-vue-plugin) - Vim syntax and indent plugin for .vue files

### Auto-completion
- [coc.nvim](http://github.com/neoclide/coc.nvim) - Make your Vim/Neovim as smart as VSCode

#### CoC Plugins
- [coc-tsserver](https://github.com/neoclide/coc-tsserver) - Tsserver extension for coc.nvim that provide rich features like VSCode for javascript & typescript
- [coc-css](https://github.com/neoclide/coc-css) - Css language server extension
- [coc-html](https://github.com/neoclide/coc-html) - Html language server extension
- [coc-json](https://github.com/neoclide/coc-json) - Json language extension
- [coc-stylelintplus](https://github.com/bmatcuk/coc-stylelintplus) - stylelint extension supporting additional features
- [coc-vetur](https://github.com/neoclide/coc-vetur) - Vue language server extension
- [coc-spell-checker](https://github.com/iamcco/coc-spell-checker) - A basic spell checker that works well with camelCase code
- [coc-project](https://github.com/iamcco/coc-project) - project extension 

### Tools
- [far.vim](http://github.com/brooth/far.vim) - Find And Replace
- [vim-LanguageTool](http://github.com/dpelle/vim-LanguageTool) - LanguageTool grammar checker
- [vim-rooter](http://github.com/airblade/vim-rooter) - Changes Vim working directory to project root.
- [vim-gutentags](http://github.com/ludovicchabant/vim-gutentags) - A Vim plugin that manages your tag files


## Shortcuts
Leader key = , (Comma)

### Edit vim files 

| Shortcut      | Functionality                                   |
| ------------- | ----------------------------------------------- |
| leader + ev   |  edit vimrc file                                |
| leader + epl  |  edit plugins.vim file                          |
| leader + el   |  edit lightline.vim file                        |

### Basic

| Shortcut      | Functionality                                   |
| ------------- | ----------------------------------------------- |
| leader + w    |  fast save                                      |
| leader + ba   |  close all the buffers                          |
| leader + cd   |  set cwd to project working directory           |
| -             |  open netrw                                     |
| leader + r    |  replace text with english translation          |
| leader + l    |  run grammar check                              |

### Split management

| Shortcut    | Functionality         |
| ----------- | --------------------- |
| ctrl + h    | switch to left split  |
| ctrl + l    | switch to right split |
| leader + v  | open vertical split   |

### Search

| Shortcut       | Functionality            |
| -------------- | ------------------------ |
| space          |  search                  |
| ctrl + space   |  backward search         |
| leader + space |  remove search higlights |

### Move between windows 

| Shortcut    | Functionality            |
| ----------- | ------------------------ |
| ctrl + h    |  move to left window     |
| ctrl + j    |  move to bottom window   |
| ctrl + k    |  move to top  window     |
| ctrl + l    |  move to right window    |

### Managing Tabs

| Shortcut       | Functionality                              |
| -------------  | ------------------------------------------ |
| leader + nt    |  new tab                                   |
| leader + ct    |  close tab                                 |
| leader + tm    |  move tab                                  |
| leader + tl    |  go to last tab                            |
| leader + tn    |  next tab                                  |
| leader + tp    |  prev tab                                  |
| leader + tl    |  toggle between this and last accessed tab |

### FZF Search 

| Shortcut    | Functionality                           |
| ----------- | --------------------------------------- |
| ctrl + p    |  search files in project                |
| leader + f  |  search for the hovered or marked word  |
| ctrl + f    |  type the search pattern                |
| ;           |  show buffer list                       |
| leader + gl |  show all git commits                   |
| leader + gL |  show git commits for current file      |
| leader + hh |  search in helpfiles                    |
| leader + t  |  show tags list                         |

### Fugitive 

| Shortcut     | Functionality                                    |
| ------------ | ------------------------------------------------ |
| leader + gs  |  git status                                      |
| leader + gc  |  git commit                                      |
| leader + gp  |  git push                                        |
| leader + gv  |  open commit browser                             |
| leader + gvf |  list commits thats affected to the current file |
| leader + gl  |  show commits for every source line              |
| leader + gb  |  open current line in the browser                |
| leader + gb  |  open visual selection in the browser            |

### CoC 

| Shortcut      | Functionality                                    |
| ------------- | ------------------------------------------------ |
| ctrl + space  | trigger completion                               |
| ctrl + c      | escape completion                                |
| leader + dn   | next diagnostic item                             |     
| leader + dp   | prev diagnostic item                             |
| gd            | jump to definition of current symbol             |
| gy            | jump to type definition of current symbol        |
| gi            | jump to implementation of current symbol         |
| gr            | jump to references of current symbol             |
| K             | show documentation of current symbol             |
| leader + rn   | rename symbol under to a new word                |
| leader + f    | format selected range                            |
| leader + Q    | try first quickfix action for diagnostic         |
| leader + ac   | get and run code actions for current file        |
| leader + a    | get and run code actions for selected region     |
| leader + cd   | show all diagnostics                             |
| leader + ce   | manage extensions                                | 
| leader + cc   | show commands                                    |
| leader + S    | find symbol of current document                  |
| leader + s    | search workspace symbols                         |
| leader + cj   | next item                                        |
| leader + ck   | prev item                                        |
| leader + cl   | resume latest coc list                           |

