noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Up> <Nop>
noremap <Right> <Nop>

" -----------------------------------------------------------------------------
"     - Colours -
" -----------------------------------------------------------------------------
colorscheme togglebit

" -----------------------------------------------------------------------------
"     - Leader -
" -----------------------------------------------------------------------------
let g:mapleader="\\"

" -----------------------------------------------------------------------------
"     - Default settings -
" -----------------------------------------------------------------------------
" set nopreviewwindow
set fillchars+=vert:│
set tabstop=4
set expandtab
set shiftwidth=4
set whichwrap=b,s,<,>,h,l,[,]
set incsearch
set ignorecase
set smartcase
set smartindent
set wildmenu
set wildmode=full
set foldmethod=indent
set foldenable
set foldlevelstart=10
set foldnestmax=10
set ruler
set laststatus=0
set splitright
set splitbelow
set backspace=indent,eol,start
set nowrap
set nohlsearch
set ttimeoutlen=10
set mouse=
set noswapfile
set colorcolumn=80
set nosmd
set hidden
set nomodeline

let g:netrw_banner=0

" -----------------------------------------------------------------------------
"     - I love my blocky cursor! -
" -----------------------------------------------------------------------------
set guicursor=

" -----------------------------------------------------------------------------
"     - Generic key bindings -
" -----------------------------------------------------------------------------
let g:UltiSnipsExpandTrigger = '<leader>t'

nmap <C-p> :FZF<CR>
nmap <C-h> :vertical resize -4<CR>
nmap <C-l> :vertical resize +4<CR>
nmap <C-k> :resize +4<CR>
nmap <C-j> :resize -4<CR>
nmap <Leader>} ysiw}
nmap <C-f> :Rg 

" " Terminal flapping
" nmap <C-w>k <C-\\><C-n><C-w>k 
" nmap <C-w>j <C-\\><C-n><C-w>j 
" nmap <C-w>h <C-\\><C-n><C-w>h 
" nmap <C-w>l <C-\\><C-n><C-w>l 

" -----------------------------------------------------------------------------
"     - Grep -
" -----------------------------------------------------------------------------
set grepprg=rg\ --vimgrep

function RipGrepping(search_term)
    silent! exe 'grep! -i -F "' . a:search_term . '"'
    redraw!
    if len(getqflist()) > 0
        :copen
    endif
endfunction
command! -nargs=* Find call RipGrepping(<q-args>)

" nmap <C-f> :Find 


" -----------------------------------------------------------------------------
"     - Debugging -
" -----------------------------------------------------------------------------
packadd termdebug

" -----------------------------------------------------------------------------
"     - Explore -
" -----------------------------------------------------------------------------
nmap <silent><C-n> :15Lexplore!<cr>
let g:netrw_liststyle = 3


" -----------------------------------------------------------------------------
"     - Date functions -
" -----------------------------------------------------------------------------
" Insert date stamp above current line.
" This is useful when organising tasks in README.md
function! InsertDateStamp()
    let l:date = system('date +\%F')
    let l:oneline_date = split(date, "\n")[0]
    execute "normal! a" . oneline_date . "\<Esc>"
endfunction

:command! DS call InsertDateStamp()


" -----------------------------------------------------------------------------
"     - Human error correction -
" -----------------------------------------------------------------------------
:command! W w