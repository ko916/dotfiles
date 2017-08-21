set number
set cursorline
set cursorcolumn
set clipboard=unnamed,autoselect

" カラー設定
colorscheme solarized
set background=dark
syntax enable

" BackSpaceの設定
set backspace=indent,eol,start

" dein.vim setting
if &compatible
  set nocompatible
endif
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

if dein#load_state(expand('~/.vim/dein'))
    call dein#begin(expand('~/.vim/dein'))

    " プラグインリストを収めたTOMLファイル
    let g:dein_dir = expand('~/.vim/dein')
    let s:toml = g:dein_dir . '/dein.toml'
    let s:lazy_toml = g:dein_dir . '/dein_lazy.toml'

    " TOMLファイルにpluginを記述
    call dein#load_toml(s:toml, {'lazy': 0})
    call dein#load_toml(s:lazy_toml, {'lazy': 1})

    call dein#end()
    call dein#save_state()
endif

" 未インストールを確認
if dein#check_install()
    call dein#install()
endif

filetype plugin indent on

" docstringは表示しない for jedi-vim
autocmd FileType python setlocal completeopt-=preview

" dein.vim ここまで

