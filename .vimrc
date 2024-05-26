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
nnoremap <leader> <nop>

" I like to be foucased
nnoremap <C-u> <C-u>zz			" Always center cursor when scrolling up
nnoremap <C-d> <C-d>zz			" Always center cursor when scrolling down
nnoremap n nzz				" Always center cursor when searching next
nnoremap N Nzz				" Always center cursor when searching pervouis

" Joining and breaking
nnoremap J J``				" Join Two lines
nnoremap K i<CR><ESC>			" Braek line

" Move in visual
xnoremap <leader>k :m-2<CR>gv=gv	" Move slected lines up in visual mode
xnoremap <leader>j :m'>+2<CR>gv=gv	" Move slected lines down in visual mode

" Everything about buffers
nnoremap <leader>e :e ./<CR>		" Open Netrw
nnoremap <leader>pn :bn <CR>		" Show next buffer
nnoremap <leader>pp :bn <CR>		" Show next buffer
nnoremap <leader>pw :w<CR>:bw<CR>	" Save and clear buffer
nnoremap <leader>pq :bw! <CR>		" Clear buffer without saving
nnoremap <leader>w :w <CR>		" Clear buffer without saving


" Wellcome windows
nnoremap <leader>sv :split <CR> 	" Open new window horzantly
nnoremap <leader>sh :vsplit <CR> 	" Open new window vertacally
nnoremap <leader>q :q! <CR> 		" Close current window
nnoremap <leader>h <C-w>h		" Foucs left window
nnoremap <leader>j <C-w>j		" Foucs up window
nnoremap <leader>k <C-w>k		" Foucs down window
nnoremap <leader>l <C-w>l		" Foucs right window

