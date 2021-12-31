so ~/.config/nvim/plugins.vim    "extra plugins file

"""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""
" We want the latest vim settings
set nocompatible

"Sets how many lines of history VIM has to remember
set history=500

" Only used in vim
set ttyfast

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

" set python path
let g:python3_host_prog="/usr/bin/python3"

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

" Hide fold numbering in left column
set foldcolumn=0

"----Split Management-----"
set splitbelow
set splitright

" Vertical seperator between windows
set fillchars=vert:│

"Ctrl + h to move to the left splits
nnoremap <C-h> <C-w>h 

"Ctrl + l to move to the right one
nnoremap <C-l> <C-w>l

" Open vertical split
nnoremap <silent> <Leader>v :vsplit<CR>

"Always show at least one line above/below the cursor
set scrolloff=1

"Delete over newlines, etc.
set backspace=2


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

"Use colors, This is useful for Terminal vim
set t_CO=256						

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

"1Tab == 2 spaces
set tabstop=2
set shiftwidth=2

"Auto indent
set ai

"Smart indent
set si

" When vim smartwraps overflowing text, the text on the new line is indented properly
set breakindent

" Don't let the filetype plugin insert newlines automatically
set textwidth=0 wrapmargin=0

" Do not let vim force line breaks when exceeding textwidth in insert mode
set formatoptions-=t


"""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""
"Map <space> to / (search) and Alt-<space> to ? (backward search)
nmap <space> /
nmap <A-space> ?
" Search highlight removal
nmap <Leader><space> :nohlsearch<cr>

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
nmap <leader>tn :tabnext<cr>
nmap <leader>tp :tabprevious<cr>

"let 'tl' toggle between this and the last accessed tab
let g:lasttab = 1
nmap <leader>tl :exe "tabn ".g:lasttab<cr>
au TabLeave * let g:lasttab = tabpagenr()

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
nmap <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
nmap <leader>cd :Rooter<cr>

" Specify the behavior when switching between buffers
try
set switchbuf=useopen,usetab,newtab
set stal=2
catch
endtry


"""""""""""""""""""""""""""""""""
" => Netrw
"""""""""""""""""""""""""""""""""
" Remove directory banner in netrw
let g:netrw_banner = 0
nmap - :Explore<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Omni complete functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set omnifunc=syntaxcomplete#Complete


"""""""""""""""""""""""""""""""""
" => Make it easy to edit the vimrc file.
"""""""""""""""""""""""""""""""""
nmap <Leader>ev :tabedit ~/.config/nvim/init.vim<cr>
nmap <Leader>epl :tabedit ~/.config/nvim/plugins.vim<cr>
nmap <Leader>el :tabedit ~/.config/nvim/lightline.vim<cr>


"""""""""""""""""""""""""""""""""
" => Lightline
"""""""""""""""""""""""""""""""""
so ~/.config/nvim/lightline.vim    "extra lightline file

"Always Show the status line
set laststatus=2


"""""""""""""""""""""""""""""""""
" => gutentags
"""""""""""""""""""""""""""""""""
let g:gutentags_ctags_executable = 'uctags'
let g:gutentags_project_roots = ['.git', 'package.json', 'composer.json']


"""""""""""""""""""""""""""""""""
" => rooter vim
"""""""""""""""""""""""""""""""""
let g:rooter_patterns = ['.git', 'package.json', 'composer.json']
let g:rooter_cd_cmd = 'cd'
let g:rooter_change_directory_for_non_project_files = 'home'
let g:rooter_resolve_links = 1

augroup vimrc_rooter
  autocmd VimEnter * :Rooter
augroup END


"""""""""""""""""""""""""""""""""
" => FZF
"""""""""""""""""""""""""""""""""
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }

let b:coc_root_patterns = ['.git', '.env', 'package,json', 'composer.json']

" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" Limit the window size to 40% screen from the bottom
let g:fzf_layout = { 'down': '~40%' }

" Mapping for most often used command
nnoremap <C-p> :GFilesCwd<cr>

" Just press <LEADER> + f when on a word to search for it
nnoremap <Leader>f :Rg <C-R><C-W><cr>

" Works for visual mode as well
vnoremap <Leader>f :Rg <C-R><cr>

" Pressing Ctrl+f and type the search pattern
nnoremap <C-f> :Rg<Space>

" Show Buffer list
nnoremap ; :Buffers<CR>

" Show Buffer list
nnoremap <leader>t :Tags<CR>

" All git commits
nnoremap <silent> <leader>gl :Commits<CR>

" All git commits in current buffer
nnoremap <silent> <leader>gL :Commits<CR>

" Search helptags
nnoremap <silent> <leader>hh :Helptags<CR>

" --column: Show column number
" --line-number: Show line number
" --no-heading: Do not show file headings in results
" --fixed-strings: Search term as a literal string
" --ignore-case: Case insensitive search
" --no-ignore: Do not respect .gitignore, etc...
" --hidden: Search hidden files and folders
" --follow: Follow symlinks
" --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
" --color: Search color options
command! -bang -nargs=* Find
  \ call fzf#vim#grep(
  \   'rg --line-number --no-heading --fixed-strings --smart-case --hidden --follow --glob --others "!.git/*" --color=always '.shellescape(<q-args>),
  \   1,
  \   fzf#vim#with_preview({'options': '--delimiter : --nth 2..'}, 'right:50%'),
  \   <bang>0
  \ )


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
" => Fugitive
"""""""""""""""""""""""""""""""""
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gp :Gpush<CR>
nnoremap <leader>gv :GV<CR>
nnoremap <leader>gvf :GV!<CR>

" Show commits for every source line
nnoremap <Leader>gl :Git blame<CR>

" Open current line in the browser
nnoremap <Leader>gb :.GBrowse<CR>

" Open visual selection in the browser
vnoremap <Leader>gb :GBrowse<CR>

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
  \ 'coc-project',
  \ 'coc-emmet',
  \ ]

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

" Tweak insert mode completion
"   noinsert: Do not insert text before accepting the completion
"   menuone: Use the popup menu even if there is only one match
"   noselect: Do not select a match in the menu, force manual selection
set completeopt=noinsert,menuone,noselect

" Snippet expand and additional edit feature of LSP requires confirm
" completion to work.
set confirm

" Do not show in-completion-menu messages, e.g. 'match 1 of 2'
set shortmess+=c

" Update sign column every quarter second
set updatetime=250

" Better display for messages
set cmdheight=1

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Escape completion with ctrl+c
inoremap <C-c> <ESC>

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Navigate between diagnostic items in signcolumn
nmap <silent> <Leader>dn <Plug>(coc-diagnostic-next)
nmap <silent> <Leader>dp <Plug>(coc-diagnostic-prev)

" Remap keys for goto
nmap <silent> gd <Plug>(coc-definition)

" Remap keys for gotos
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Fix autofix problem of current line
nmap <leader>Q  <Plug>(coc-fix-current)

" Remap for do codeAction of current line
nmap <leader>ac <Plug>(coc-codeaction)
vmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport')

" Using CocList
" Show all diagnostics
nnoremap <silent> <Leader>cd :<C-u>CocList diagnostics<cr>

" Manage extensions
nnoremap <silent> <Leader>ce :<C-u>CocList extensions<cr>

" Show commands
nnoremap <silent> <Leader>cc :<C-u>CocList commands<cr>

" Find symbol of current document
nnoremap <silent> <Leader>S :<C-u>CocList outline<cr>

" Search workspace symbols
nnoremap <silent> <Leader>s :<C-u>CocList -I symbols<cr>

" Do default action for next item.
nnoremap <silent> <Leader>cj :<C-u>CocNext<CR>

" Do default action for previous item.
nnoremap <silent> <Leader>ck :<C-u>CocPrev<CR>

" Resume latest coc list
nnoremap <silent> <Leader>cl :<C-u>CocListResume<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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

" Use auocmd to force lightline update when coc.nvim status changes.
autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()

" Prevent duplicate netrw buffers (bug caused by vinegar)
" See: https://codeyarns.com/2015/02/02/cannot-close-buffer-of-netrw-in-vim/
autocmd FileType netrw setl bufhidden=wipe

" Automatically place help buffer in vertical split layout
au BufEnter */doc/* if &filetype=='help' | wincmd L | endif

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

command! -bang -nargs=? GFilesCwd
  \ call fzf#vim#gitfiles(<q-args>, fzf#vim#with_preview(<q-args> == '?' ? { 'dir': getcwd(), 'placeholder': '' } : { 'dir': getcwd() }), <bang>0)


"-------------Tips and Reminders--------------"
" - Press 'zz' to instantly center the line where the cursor is located.
