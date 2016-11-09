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
Plugin 'vim-scripts/HTML.zip'
Plugin 'vim-scripts/rails.vim'
Plugin 'vim-scripts/python.vim'


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
colorscheme   desert      "  主题　
set novisualbell            " 关闭使用可视响铃代替呼叫
set t_vb=                   " 置空错误铃声的终端代码
set smartindent             " 开启新行时使用智能自动缩进
set encoding=utf-8 fileencodings=ucs-bom,utf-8,cp936 "编码设置

