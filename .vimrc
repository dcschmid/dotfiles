"Plugins Plug 'itchyny/lightline.vim'
so ~/.vim/plugins.vim    "extra plugins file

"""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""
" We want the latest vim settings
set nocompatible

"Sets how many lines of history VIM has to remember
set history=500

"Set to autoread when a file is changed from the outside
set autoread

"The default leader is \m but a comma is much better
let mapleader=','
let g:mapleader=','

"fast saving
nmap <leader>w :w!<cr>

" Use ag over grep
set grepprg=ag\ --nogroup\ --nocolor

" Use the system register
set clipboard^=unnamed 


"""""""""""""""""""""""""""""""""
" => Vim user interface
"""""""""""""""""""""""""""""""""
"turn on the wild menu
set wildmenu

"always show current position
set ruler

"Height of the command bar
set cmdheight=1

"a buffer becomes hidden when its abandoned
set hid

"configure backspace so it acts as it should act
set backspace=indent,eol,start
set whichwrap+=<,>,h,l

"Ignore case when searching
set ignorecase

"when searching try to be smart about cases
set smartcase

"highlight search results
set hlsearch

"makes search act like search in modern browsers
set incsearch

"don't redraw while executing macros (good performance config)
set lazyredraw

"for regular expressions turn magic on
set magic

"show matching brackets when text indicator is over them
set showmatch

"how many tenths of a second to blink when matching brackets
set mat=2

"no annoying sounds on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Add a bit extra margin to the left
set foldcolumn=0

"Let's activate line numbers
set number

"Disable show node
set noshowmode

"----Split Management-----"
set splitbelow
set splitright

" Vertical seperator between windows
set fillchars=vert:│

"Ctrl + h to move to the left splits
nnoremap <C-h> <C-w>h 

"Ctrl + l to move to the right one
nnoremap <C-l> <C-w>l


"""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""
"Enable syntax highlighting
syntax enable

" activates filetype detection
filetype plugin indent on

" activates syntax highlighting among other things
syntax on

"Colorscheme and enable 256 Colors
colorscheme iceberg
set t_CO=256						"Use colors, This is useful for Terminal vim

"set utf8 as standard encoding
set encoding=utf8

"Use unix as standard file type
set ffs=unix,dos,mac


"""""""""""""""""""""""""""""""""
" => Files, backups, undo
"""""""""""""""""""""""""""""""""
"Automatically write the file when switching
set autowriteall

"Turn Backup off, since most stuff is in SVN, git etc
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""
" => Text, Tab and indent related
"""""""""""""""""""""""""""""""""
"Use spaces instead of tabs
set expandtab

"be smart when using tabs
set smarttab

"1Tab == 4 spaces
set tabstop=2
set shiftwidth=2

"Auto indent
set ai

"Smart indent
set si


"""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""
"Map <space> to / (search) and Ctrl-<space> to ? (backward search)
nmap <space> /
nmap <c-space> ?

"smart way to move between windows
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

"close all the buffers
nmap <leader>ba :bufdo

"Useful mappings for managing tabs
nmap <leader>nt :tabnew<cr>
nmap <leader>to :tabonly<cr>
nmap <leader>tc :tabclose<cr>
nmap <leader>tm :tabmove

"let 'tl' toggle between this and the last accessed tab
let g:lasttab = 1
nmap <leader>tl :exe "tabn ".g:lasttab<cr>
au TabLeave * let g:lasttab = tabpagenr()

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
nmap <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
nmap <leader>cd :cd %:p:h<cr>:pwd<cr>

" Specify the behavior when switching between buffers
try
set switchbuf=useopen,usetab,newtab
set stal=2
catch
endtry


"""""""""""""""""""""""""""""""""
" => Netrw
"""""""""""""""""""""""""""""""""
let g:netrw_banner = 0
nmap - :Explore<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Omni complete functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set omnifunc=syntaxcomplete#Complete


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Add simple highlight removal.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <Leader><space> :nohlsearch<cr>


"""""""""""""""""""""""""""""""""
" => Make it easy to edit the vimrc file.
"""""""""""""""""""""""""""""""""
nmap <Leader>ev :tabedit ~/.vimrc<cr>
nmap <Leader>es :e ~/.vim/snippets/
nmap <Leader>epl :tabedit ~/.vim/plugins.vim<cr>
nmap <Leader>el :tabedit ~/.vim/lightline.vim<cr>


"""""""""""""""""""""""""""""""""
" => Status line
"""""""""""""""""""""""""""""""""
"Always Show the status line
set laststatus=2

"lightline
so ~/.vim/lightline.vim    "extra lightline file


"""""""""""""""""""""""""""""""""
" => NERDTree
"""""""""""""""""""""""""""""""""
" Always show dot (hidden) files
let NERDTreeShowHidden=1
" Close the NERDTree after opening a file
let NERDTreeQuitOnOpen=1
" Leader + n to open the NT
map <Leader>n :NERDTreeFind<CR> 


"""""""""""""""""""""""""""""""""
" => FZF
"""""""""""""""""""""""""""""""""
" Limit the window size to 40% screen from the bottom
let g:fzf_layout = { 'down': '~40%' }

" Mapping for most often used command
nnoremap <C-p> :GFiles<cr>

" Just press <LEADER> + f when on a word to search for it
nnoremap <Leader>f :Rg <C-R><C-W><cr>

" Works for visual mode as well
vnoremap <Leader>f y:Rg <C-R>"<cr>

" Pressing Ctrl+f and type the search pattern
nnoremap <C-F> :Rg<Space>

" Show Buffer list
nnoremap ; :Buffers<CR>


"""""""""""""""""""""""""""""""""
" => vim-closetag
"""""""""""""""""""""""""""""""""
let g:closetag_filenames = '*.html,*.xhtml,*.jsx,*.tsx,*.vue'


"""""""""""""""""""""""""""""""""
" => vim-matchtagalways
"""""""""""""""""""""""""""""""""
let g:mta_filetypes = {
\ 'html' : 1,
\ 'typescriptreact': 1,
\ 'vue': 1,
\}


"""""""""""""""""""""""""""""""""
" => Far
"""""""""""""""""""""""""""""""""
let g:far#source  = 'g'


"""""""""""""""""""""""""""""""""
" => Fugitive
"""""""""""""""""""""""""""""""""
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gp :Gpush<CR>
nnoremap <leader>gv :GV<CR>
nnoremap <leader>gvf :GV!<CR>


"""""""""""""""""""""""""""""""""
" => Language Tools
"""""""""""""""""""""""""""""""""
:let g:languagetool_jar='$HOME/LanguageTool-5.4/languagetool-commandline.jar'


"""""""""""""""""""""""""""""""""
" => coc
"""""""""""""""""""""""""""""""""
let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-css',
  \ 'coc-html',
  \ 'coc-json',
  \ 'coc-stylelintplus',
  \ 'coc-vetur',
  \ 'coc-spell-checker',
  \ ]

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other
inoremap <silent><expr> <TAB>
\ pumvisible() ? "\<C-n>" :
\ <SID>check_back_space() ? "\<TAB>" :
          \ coc#refresh()

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Remap keys for goto
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for do codeAction of current line
nmap <leader>ac <Plug>(coc-codeaction)
vmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)

" Fix autofix problem of current line
nmap <leader>qf <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols features
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <C-d> for select selections ranges, needs server support, like:
" coc-tsserver
nmap <silent> <C-d> <Plug>(coc-range-select)
xmap <silent> <C-d> <Plug>(coc-range-select)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! s:check_back_space() abort
   let col = col('.') - 1
   return !col || getline('.')[col - 1] =~# '\s'
endfunction

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Auto-Commands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufEnter *.{js,jsx,ts,tsx,vue} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx,vue} :syntax sync clear

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

"-------------Tips and Reminders--------------"
" - Press 'zz' to instantly center the line where the cursor is located.
