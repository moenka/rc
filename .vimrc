" ~/.vimrc

let vim_dir = '$HOME/.vim'

" Mighty undo
if has('persistent_undo')
  let undo_dir = expand(vim_dir . '/undo')
  " Create dirs
  call system('mkdir ' . vim_dir)
  call system('mkdir ' . undo_dir)
  let &undodir = undo_dir
  set undofile
endif

" Tab size
set expandtab
set hlsearch
set preserveindent
set shiftwidth=4
set softtabstop=0
set tabstop=4

" Colorscheme
syntax enable
colorscheme desert

" File detection
au BufEnter,BufRead *.conf setf dosini

