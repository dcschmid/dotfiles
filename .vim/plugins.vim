filetype off                  				" required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'           "Plugin installer
Plugin 'tpope/vim-vinegar'              "expand netrw
Plugin 'majutsushi/tagbar'              "displays tags in a window, ordered by scope
Plugin 'scrooloose/nerdtree'            "tree explorer
Plugin 'Xuyuanp/nerdtree-git-plugin'    "showing git status flags in NERDTree
Plugin 'ctrlpvim/ctrlp.vim'             "Fuzzy file,buffer,mru,tag ...finder
Plugin 'rking/ag.vim'                   "plugin for the_silver_searcher
Plugin 'skwp/greplace.vim'              "Global search and replace
Plugin 'tpope/vim-surround'             "quoting/parenthesizing made simple
Plugin 'StanAngeloff/php.vim'           "Up-to-date php syntax file
Plugin 'arnaud-lb/vim-php-namespace'    "types use statements for you
Plugin 'ervandew/supertab'              "Perform all your vim insert mode completions with tab
Plugin 'stephpy/vim-php-cs-fixer'       "A tool to automatically fix PHP coding standard issues
Plugin 'tobyS/vmustache'                "Mustache templates system for VIMScript (required for PDV)
Plugin 'tobyS/pdv'                      "PHP Documentator for vim
Plugin 'SirVer/ultisnips'               "The ultimate snippet solutuin for vim
Plugin 'tpope/vim-fugitive'             "A git wrapper
Plugin 'airblade/vim-gitgutter'         "A Vim plugin shows a git diff in the gutter and stages/undoes hunks
Plugin 'othree/html5.vim'               "HTML5 omnicomplete and syntax
Plugin 'hail2u/vim-css3-syntax'         "CSS3 snytax support
Plugin 'groenewege/vim-less'            "Vim syntax for less
Plugin 'gorodinskiy/vim-coloresque'     "css/less/sass/html color preview for vim
Plugin 'cakebaker/scss-syntax.vim'      "Vim syntax file for scss
Plugin 'pangloss/vim-javascript'        "Vastly improved Javascript indentation and syntax support in vim
Plugin 'jwalton512/vim-blade'           "Vim syntax highlighting for Blade templates
Plugin 'scrooloose/syntastic'           "Syntax checking hacks for vim
Plugin 'posva/vim-vue'                  "Vim syntax highlighting for Vue components.
Plugin 'itchyny/lightline.vim'          "statusline/tabline for vim
Plugin 'sjl/gundo.vim'                  "visualize your vim undo
Plugin 'ntpeters/vim-better-whitespace' "Better whitespace highlighting for Vim
Plugin 'isRuslan/vim-es6'               "Snippets and Syntax Highlighting for vim
Plugin 'shawncplus/phpcomplete.vim'     "Improved PHP omni-completion
Plugin 'craigemery/vim-autotag'         "Automatically discover and properly update ctags files on save
Plugin 'junegunn/vim-easy-align'        "A simple easy to use vim alignment plugin

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
