" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

let skip_defaults_vim=1

"show numbers of lines
set number

"off vi interchageable
set nocompatible

"autoindent on
set autoindent

"Incremantal Search
set incsearch

"閉じ括弧が入力されたとき、対応する括弧を表示する
"if a closing parenthesis, show the paired parenthesis. 
set showmatch

"新しい行を作ったときに高度な自動インデントを行う
"smartindent on
set smartindent

"shift 4 space moving
set shiftwidth=4

"tab 4spaces moving
set tabstop=4

"change indent spaces depending on a filetype
augroup fileTypeIndent
    autocmd!
    autocmd BufNewFile,BufRead *.py setlocal tabstop=4 softtabstop=4 shiftwidth=4
    autocmd BufNewFile,BufRead *.rb setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.erb setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.html setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END

"syntax:on
syntax enable

"Mac ClipBoard
vmap <silent> sy :!pbcopy; pbpaste<CR>
map <silent> sp <esc>o<esc>v :!pbpaste<CR>

"S-h moving to left end
noremap <S-h> ^ 

"S-l moving to right end
noremap <S-l> $

"enable to move, in the INSERT mode.
inoremap <C-j> <down>
inoremap <C-k> <up>
inoremap <C-h> <left>
inoremap <C-l> <right>

"Auto Completion
inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap( ()<ESC>i
inoremap' ''<LEFT>
inoremap" ""<LEFT>

"NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=/home/vagrant/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('/home/vagrant/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'mattn/emmet-vim'
let g:user_emmet_leader_key = '<C-E>'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------
