" Keybindings
" -----------

let mapleader = ","
let maplocalleader = ";"

" Make Y consistent with D and C
map Y           y$

" Auto-indent whole file
map <silent> <F8> mzgg=G'z :delmarks z<CR>:echo "Reformatted."<CR>

" File tree browser
map \           :NERDTreeToggle<CR>

" File tree browser showing current file - pipe (shift-backslash)
map \|          :NERDTreeFind<CR>

" Find File/Buffer/Tag
map <leader>F   :CtrlPClearCache<CR>:CtrlP<CR>
map <Leader>f   :CtrlP<CR>
map <Leader>b   :CtrlPBuffer<CR>

" Comment/uncomment lines
map <leader>/   <plug>NERDCommenterToggle

" In command-line mode, <C-A> should go to the front of the line, as in bash.
cmap <C-A> <C-B>

" Disable middle mouse button, F1
map <MiddleMouse>   <Nop>
imap <MiddleMouse>  <Nop>
map <F1>            <Nop>
imap <F1>           <Nop>

" hassle free copy/paste
nmap <F1> :.w !pbcopy<CR><CR>
vmap <F1> :w !pbcopy<CR><CR>
nmap <F2> :set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
imap <F2> <Esc>:set paste<CR>:r !pbpaste<CR>:set nopaste<CR>

" clear search highlighting
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" AckGrep current word
map <leader>a :call AckGrep()<CR>
" AckVisual current selection
vmap <leader>a :call AckVisual()<CR>

" Bubble single lines
nmap { [e
nmap } ]e
" Bubble multiple lines
vmap { [egv
vmap } ]egv

" Run tests
map <Leader>t :VroomRunNearestTest<CR>
map <Leader>T :VroomRunTestFile<CR>

" Horizontal block movement
vmap > >gv
vmap < <gv
