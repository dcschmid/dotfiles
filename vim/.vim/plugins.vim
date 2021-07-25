" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin()
" Git
Plug 'tpope/vim-fugitive'      " Git plugin with commands 'G<command>'
Plug 'tpope/vim-rhubarb'       " Enables GBrowse from fugitive to open Github URLs 
Plug 'junegunn/gv.vim'         " A git commit browser for vim                                            
Plug 'airblade/vim-gitgutter'  " Shows git diff markers in the sign column
Plug 'sodapopcan/vim-twiggy' " Git branch management for Vim 

" Navigation
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }  " Fuzzy file++ searching
Plug 'junegunn/fzf.vim'                              " Asynchronous file/tags searcher

" Editing
Plug 'editorconfig/editorconfig-vim'  " Editorconfig helps maintain consistent coding styles
Plug 'danro/rename.vim'               " Enables :Rename <new_name>
Plug 'tpope/vim-commentary'           " Adds comment action with 'gc'
Plug 'terryma/vim-multiple-cursors'   " Use multiple cursor in vim
Plug 'alvan/vim-closetag'             " Autoclose HTML Tags 

" Visual
Plug 'gkeep/iceberg-dark'
Plug 'cocopon/iceberg.vim'            " Iceberg is well-designed, bluish color scheme for Vim
Plug 'roman/golden-ratio'             " Auto-expands current split
Plug 'valloric/MatchTagAlways'        " Always highlight enclosing tags
Plug 'ap/vim-css-color'               " A very fast, multi-syntax context-sensitive color name highlighter
Plug 'itchyny/lightline.vim'          " Lightweight statusline without slow plugin integrations
Plug 'josa42/vim-lightline-coc'       " This plugin provides coc diagnostics indicator for the lightline vim plugin.

" Syntax Highlight
Plug 'pangloss/vim-javascript'                                         " Vastly improved Javascript indentation and syntax support in Vim. 
Plug 'leafgarland/typescript-vim'                                      " Typescript syntax files for Vim 
Plug 'peitalin/vim-jsx-typescript'                                     " React JSX syntax highlighting for vim and Typescript 
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }   " Vim bundle for http://styled-components.com based javascript files. 
Plug 'jparise/vim-graphql'                                             " provides GraphQL file detection, syntax highlighting, and indentation
Plug 'leafOfTree/vim-vue-plugin'                                       " Vim syntax and indent plugin for .vue files 

" Auto-completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}  " Make your Vim/Neovim as smart as VSCode.

" Language Tools
Plug 'dpelle/vim-LanguageTool'       " LanguageTool grammar checker 
Plug 'voldikss/vim-translator'       " Translating plugin for Vim/Neovim 

" Tools
Plug 'brooth/far.vim'                " Find And Replace 
Plug 'ludovicchabant/vim-gutentags'  " A Vim plugin that manages your tag files 
Plug 'airblade/vim-rooter'           " Changes Vim working directory to project root.  

call plug#end()
