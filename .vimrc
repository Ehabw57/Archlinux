set nu
set relativenumber
set iskeyword-=_
set ignorecase
set smartindent
set shiftwidth=4
set showcmd
set hidden
syntax on
set nowrap

let mapleader = " "
nnoremap <C-u> <C-u>zz			" Always center cursor when scrolling up
nnoremap <C-d> <C-d>zz			" Always center cursor when scrolling down
nnoremap n nzz				" Always center cursor when searching next
nnoremap N Nzz				" Always center cursor when searching pervouis
nnoremap J J^
xnoremap <leader>k :m-2<CR>gv=gv
xnoremap <leader>j :m'>+2<CR>gv=gv

nnoremap <leader>e :e ./<CR>		" Open Netrw
nnoremap <leader>n :bn <CR>		" Show next buffer
nnoremap <leader>p :w<CR>:bw<CR>	" Save and clear buffer
nnoremap <leader>q :bw! <CR>		" Clear buffer

nnoremap <leader>s :split <CR> 	" Open new window horzantly
nnoremap <leader>v :vsplit <CR> 	" Open new window vertacally
nnoremap <leader>c :q <CR> 		" Close current window
nnoremap <leader>h <C-w>h		" Foucs left window
nnoremap <leader>j <C-w>j		" Foucs up window
nnoremap <leader>k <C-w>k		" Foucs down window
nnoremap <leader>l <C-w>l		" Foucs right window

