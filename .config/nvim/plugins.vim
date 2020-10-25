" Install Vim Plug if not installed

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin()

function! DoRemote(arg)
      UpdateRemotePlugins
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Basic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'cocopon/iceberg.vim'            "A dark blue theme
Plug 'itchyny/lightline.vim'          "statusline/tabline for vim
Plug 'josa42/vim-lightline-coc'
Plug 'itchyny/vim-gitbranch'
Plug 'niklaas/lightline-gitdiff'
Plug 'fisle/vim-no-fixme'             "Vim plugin for lightline to show amount of TODO|FIXME|XXX in current file
Plug 'tpope/vim-surround'             "quoting/parenthesizing made simple
Plug 'ervandew/supertab'              "Perform all your vim insert mode completions with tab
Plug 'junegunn/vim-easy-align'        "A simple easy to use vim alignment plugin
Plug 'sjl/gundo.vim'                  "visualize your vim undo
Plug 'majutsushi/tagbar'              "displays tags in a window, ordered by scope
Plug 'mtscout6/vim-tagbar-css'
Plug 'tpope/vim-fugitive'             "A git wrapper
Plug 'sodapopcan/vim-twiggy'          "Maintain your bearings while branching with Git
Plug 'rbong/vim-flog'
Plug 'MarcWeber/vim-addon-mw-utils'   "needed for vim-snipmate
Plug 'junegunn/gv.vim'
Plug 'tomtom/tlib_vim'                "needed for vim-snipmate
Plug 'garbas/vim-snipmate'            "TextMate snippets feature in vim
Plug 'SirVer/ultisnips'               "The ultimate snippet solution for Vim. Send pull requests to SirVer/ultisnips!
Plug 'phux/vim-snippets'              "vim-snipmate default snippets (Previously snipmate-snippets)
Plug 'ntpeters/vim-better-whitespace' "Better whitespace highlighting for Vim
Plug 'airblade/vim-gitgutter'         "A Vim plugin shows a git diff in the gutter and stages/undoes hunks
Plug 'editorconfig/editorconfig-vim'  "EditorConfig plugin for vim
Plug 'xolox/vim-session'              "Session management 
Plug 'xolox/vim-misc'                 "Session management 
Plug 'jiangmiao/auto-pairs'           "Vim plugin, insert or delete brackets, parens, quotes in pair
Plug 'alvan/vim-closetag'             "Autoclose HTML Tags
Plug 'shime/vim-livedown'             "A Vim plugin for Livedown
Plug 'terryma/vim-multiple-cursors'   "True Sublime Text style multiple selections for Vim
Plug 'tpope/vim-commentary'           "comment stuff out
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }             "Fuzzy search
Plug 'junegunn/fzf.vim'               "Fuzzy search
Plug 'mhinz/vim-grepper'              "Helps you win at grep
Plug 'brooth/far.vim'                 "Find and Replace
Plug 'janko-m/vim-test'               "A Vim wrapper for running tests on different granularities
Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'
Plug 'KabbAmine/zeavim.vim'
Plug 'rajasegar/vim-search-web'
Plug 'vim-vdebug/vdebug'
Plug 'kkoomen/vim-doge'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CoC
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-phpls',
  \ 'coc-css',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-stylelintplus',
  \ 'coc-jest'
  \ ]


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => PHP, Laravel, Symfony
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'StanAngeloff/php.vim'           "Up-to-date php syntax file
Plug 'arnaud-lb/vim-php-namespace'    "types use statements for you
Plug 'stephpy/vim-php-cs-fixer'       "A tool to automatically fix PHP coding standard issues
Plug 'SirVer/ultisnips'               "UltiSnips - The ultimate snippet solution for Vim.
Plug 'tobyS/vmustache'                "Mustache templates system for VIMScript (required for PDV)
Plug 'shawncplus/phpcomplete.vim'     "Improved PHP omni-completion
Plug 'jwalton512/vim-blade'           "Vim syntax highlighting for Blade templates


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => HTML, CSS, SASS, LESS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'othree/html5.vim'               "HTML5 omnicomplete and syntax
Plug 'hail2u/vim-css3-syntax'         "CSS3 snytax support
Plug 'groenewege/vim-less'            "Vim syntax for less
Plug 'gorodinskiy/vim-coloresque'     "css/less/sass/html color preview for vim
Plug 'cakebaker/scss-syntax.vim'      "Vim syntax file for scss
Plug 'mattn/emmet-vim'                "Emmet Plugin


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Javascript
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'HerringtonDarkholme/yats.vim'
Plug 'othree/yajs.vim'                                "Yet Another JavaScript Syntax file
Plug 'othree/javascript-libraries-syntax.vim'         "Syntax file for JavaScript Libraries
Plug 'othree/es.next.syntax.vim'                      "The syntax file for EcmaScript future syntax
Plug 'elzr/vim-json'                                  "a better JSON for vim
Plug 'othree/jsdoc-syntax.vim'                        "standalone Jsdoc syntax for vim
Plug 'heavenshell/vim-jsdoc'                          "generates JSDoc block commentsi
Plug '1995eaton/vim-better-javascript-completion'     "An expansion of vim's current Jacascript syntax file
Plug 'posva/vim-vue'                                  "Vim syntax highlighting for Vue components.
Plug 'sekel/vim-vue-syntastic'
Plug 'othree/jspc.vim'                                "JS Parameter Complete
Plug 'ternjs/tern_for_vim', { 'do': 'npm install && npm install -g tern' }
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'mlaursen/vim-react-snippets'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'
call plug#end()
