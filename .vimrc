"vim 插件加载"
"https://github.com/VundleVim/Vundle.vim"
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"Plugin 'ascenator/L9', {'name': 'newL9'} debian testin
"9没有安装L9,不需要重新改名，


"插件网站　　http://vimawesome.com/　
"http://vim-scripts.org/vim/scripts.html　选择自己所需要的插件 
"plugin 
Plugin 'vim-ruby/vim-ruby'
Plugin 'vim-scripts/rails.vim'
Plugin 'vim-scripts/python.vim'
Plugin 'tomasr/molokai'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/a.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'mbbill/echofunc'
Plugin 'vim-scripts/The-NERD-tree'
Plugin 'fatih/vim-go'
Plugin 'SirVer/ultisnips'
Plugin 'vim-syntastic/syntastic' 
Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-bundler'
Plugin 'Valloric/YouCompleteMe'
Plugin 'bling/vim-bufferline'


call vundle#end()            " required
filetype plugin indent on    " required
filetype plugin on
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" vim +PluginInstall +qall
"ctrlp 配置
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip 
let g:ctrlp_user_command = 'find %s -type f' 

"nerd 
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-R> :NERDTreeToggle<CR>
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q| endif
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'



" vim-syntastic/syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" 自动补全
" Go to definition else declaration
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
" " 主动调用补全
let g:ycm_key_invoke_completion = '<C-a>'

"vim 配置文件详解"
syntax enable             " 
syntax on   　　　　　    "  自动语法高亮 
set ignorecase smartcase  "  搜索时忽略大小写，但在有一个或以上大写字母时仍大小写敏感
set hlsearch              "  搜索时高亮显示被找到的文本
set showmatch             "  插入括号时，短暂地跳转到匹配的对应括号
set matchtime=2           "  短暂跳转到匹配括号的时间
set nowrap                "  不自动换行
set magic                 "  显示括号配对情况
set background=dark       " 　背景颜色
set backspace=indent,eol,start "backspace 键可以使用
set nobackup                   " 关闭缓存
colorscheme   desert      "  主题　
set novisualbell            " 关闭使用可视响铃代替呼叫
set t_vb=                   " 置空错误铃声的终端代码
set smartindent             " 开启新行时使用智能自动缩进
set encoding=utf-8 fileencodings=ucs-bom,utf-8,cp936 "编码设置

cnoremap <C-a> <Home>
cnoremap <C-e> <End>

set completeopt=longest,menu


