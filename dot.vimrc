" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible


set vb " turns off visual bell

let g:fuzzy_ignore = "*.log" 
let g:fuzzy_matching_limit = 70
let mapleader=","





" Set title on X window
set title
set spell spelllang=en_us
"set spl=en,ru
set spl=en
set nospell
" Hide buffer instead of abandoning when unloading
set hidden ruler wmnu

" Set GUI font and options
set guioptions=agimrLt
" set imi=0

set autoindent
filetype on
filetype indent on
filetype plugin on

" pythod autocompletion {
" let g:pydiction_location = '~/.vim/after/ftplugin/pydiction/complete-dict'
" let g:pydiction_menu_height = 20
" if has("autocmd")
"    autocmd FileType python set complete+=k/Users/chexov/.vim/after/ftplugin/pydiction/pydiction.py iskeyword+=.,(
"endif " has("autocmd")
" }

" Set status line colors
highlight ModeMsg cterm=bold ctermfg=cyan ctermbg=black
highlight StatusLine ctermfg=blue ctermbg=brown
"

" set the search scan to wrap lines
set wrapscan

" set the search scan so that it ignores case when the search is all lower
" " case but recognizes uppercase if it's specified
"set ignorecase
set smartcase

" Make command line two lines high
set ch=2

" Allow backspacing over indent, eol, and the start of an insert
set backspace=2

"set textwidth=120

set path+=.,*

" Set up the gui cursor to look nice
set guicursor=n-v-c:block-Cursor-blinkon0
set guicursor+=ve:ver35-Cursor
set guicursor+=o:hor50-Cursor
set guicursor+=i-ci:ver25-Cursor
set guicursor+=r-cr:hor20-Cursor
set guicursor+=sm:block-Cursor-blinkwait175-blinkoff150-blinkon175





" Highlight trailing whitespace and tab characters. Note that the foreground
" " colors are overridden here, so this only works with the "set list"
" settings
" " below.
autocmd ColorScheme * highlight ExtraWhitespace ctermfg=red guifg=red
highlight ExtraWhitespace ctermfg=red guifg=red cterm=bold gui=bold
match ExtraWhitespace /\s\+$\|\t/
"

" I like to stick to lines under 80 columns
au BufWinEnter * let w:m1=matchadd('Search', '\%<81v.\%>77v', -1)
"au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)

set nocompatible
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set nobackup            " do not keep a backup file, use versions instead
set history=50          " keep 50 lines of command line history
set ruler               " show the cursor position all the time
set showcmd             " display incomplete commands
set incsearch           " do incremental searching
set number
set showmatch           " Show matching brackets.
set showmode            " Show current mode.
set ttyfast             " We have a fast terminal connection.
set ttyscroll=0         " Turn off scrolling (this is faster).

" avoid tabs
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
"autocmd BufRead *.py
autocmd BufRead *.py set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
autocmd BufRead *.py set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
"
"set ai sw=2 ts=42 sta et fo=croql smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

" autocmd BufWritePre normal m`:%s/\s\+$//e `` " remove extra whitespace at the end of the line
autocmd BufWritePre *.py :%s/\s\+$//e

au BufEnter *.py set ai sw=4 ts=4 sta et fo=croql

au BufRead,BufNewFile *.go set filetype=go
"au! Syntax go source "where your go.vim file is" 

"smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

"au BufRead,BufNewFile *.wiki setfiletype Wikipedia
"au BufRead,BufNewFile *.wikipedia.org.* setfiletype Wikipedia

map Q gq        " Don't use Ex mode, use Q for formatting

cmap w!! %!sudo tee > /dev/null %

" Insert comments markers
map - :s/^/#/<CR>:nohlsearch<CR>


" Moving between the tabs
nmap { :tabprev<CR>
nmap } :tabnext<CR>

map th :tabfirst<CR>
map tj :tabnext<CR>
map tk :tabprev<CR>
map tl :tablast<CR>
map tt :tabedit<Space>
map tn :tabnext<Space>
map tm :tabm<Space>


"set paste      " Seting paste mode without modification
augroup vimrcEx     " Put these in an autocmd group, so that we can delete them easily.
au!

filetype plugin indent on           " Enable file type detection
autocmd FileType text setlocal textwidth=78     " For all text files set 'textwidth' to 78 characters

noremap <C-X> <C-W><C-W>        " Switching between windows by pressing one time CTRL-X keys.
vmap S y/<C-R>=escape(@",'/\')<CR>  " Search for the current Visual selection.


""" {KEYBINDS}
map   <silent> <F2>    :write<CR>       " F2   -  write file without confirmation
map   <silent> <F3>    :Explore<CR> " F3   -  call file explorer Ex
map   <silent> <F6>    :copen<CR>   " F6   -  list all errors
map   <silent> <F7>    :cp<CR>      " F7   -  display previous error
map   <silent> <F8>    :cn<CR>      " F8   -  display next error
map   <silent> <F9>    :let &paste=1-&paste<CR>     " F9   -  in/out of paste mode
map   <silent> <F10>   :let &hlsearch=1-&hlsearch<CR>   " F10  -  Also switch on highlighting the last used search pattern.
map   <silent> <F12>   :let &number=1-&number<CR>   " F12  -  toggle line numbers

set wcm=<Tab>

""showtabline 0, 1 or 2; when to use a tab pages line
set stal=1
""tabpagemax  maximum number of tab pages to open for -p and "tab all"
set tpm=10
""tabline custom tab pages line
set tal=
""guitablabel custom tab page label for the GUI
set gtl=
""guitabtooltip custom tab page tooltip for the GUI



"menu Encoding.koi8-u            :call SwEnc('KOI8-U')<CR>
"menu Encoding.windows-1251      :call SwEnc('CP1251')<CR>
"menu Encoding.ibm-866           :call SwEnc('CP866')<CR>
"menu Encoding.utf-8             :call SwEnc('UTF-8')<CR>
"map <C-C> :emenu Encoding.<TAB>
" Map semicolon (;) to colon (:)
"nmap ; :


""" {CODEPAGES, ENCODING}
"set langmap=£ÊÃÕËÅÎÇÛÝÚÈßÆÙ×ÁÐÒÏÌÄÖÜÑÞÓÍÉÔØÂÀ.³êãõëåîçûýúèÿæù÷áðòïìäöüñþóíéôøâà.;`qwertyuiop[]asdfghjkl;'zxcvbnm,./`QWERTYUIOP[]ASDFGHJKL;'ZXCVBNM,./

set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8

"set encoding=utf-8
"set termencoding=utf-8
"set fileencodings=utf-8,koi8-u,koi8-r,cp1251,cp866

set autoindent      " The autoindent setting causes Vim to indent new lines by a similar amount to the one next to them
set autowrite       " The autowrite setting tells Vim to write the old file out when switching from one file to another
set sw=4

"set foldmethod=indent
"highlight Folded ctermfg=red
"highlight FoldColumn ctermfg=white
"set fillchars=fold:

set laststatus=2
set statusline=
set statusline+=%-3.3n\                      " buffer number
set statusline+=%f\                          " filename
set statusline+=%h%m%r%w                     " status flags
set statusline+=\[%{strlen(&ft)?&ft:'none'}] " file type
set statusline+=%=                           " right align remainder
set statusline+=0x%-8B                       " character value
set statusline+=%-14(%l,%c%V%)               " line, character
set statusline+=%<%P                         " file position
set statusline+=format=%{&fileformat}\ file=%{&fileencoding}\ enc=%{&encoding}\ %b\ 0x%B\ %l,%c%V\ %P

hi StatusLine   term=NONE cterm=NONE ctermfg=white  ctermbg=blue
hi StatusLineNC term=NONE cterm=NONE ctermfg=black  ctermbg=white
set nohlsearch      " Also switch on highlighting the last used search pattern.
syntax on
set background=dark

set wildmenu
set wildmode=list:longest,full

set listchars=tab:>-,trail:-
set list
"set invlist

""" {ABBRIVIATIONS}

"autocmd FileType python compiler pylint

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
 autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif


" http://ja.pastebin.ca/raw/1243579
" }}}
" MyTabLine {{{
" This is an attempt to emulate the default Vim-7 tabs as closely as possible but with numbered tabs.
" TODO: set truncation when tabs don't fit on line, see :h columns
if exists("+showtabline")
    function! MyTabLine()
        let s = ''
        for i in range(tabpagenr('$'))
            " set up some oft-used variables
            ""let tab = i + 1 " range() starts at 0
            let tab = i + 0 " range() starts at 0
            let winnr = tabpagewinnr(tab) " gets current window of current tab
            let buflist = tabpagebuflist(tab) " list of buffers associated with the windows in the current tab
            let bufnr = buflist[winnr - 1] " current buffer number
            let bufname = bufname(bufnr) " gets the name of the current buffer in the current window of the current tab

            let s .= '%' . tab . 'T' " start a tab
            let s .= (tab == tabpagenr() ? '%#TabLineSel#' : '%#TabLine#') " if this tab is the current tab...set the right highlighting
            let s .= ' #' . tab " current tab number
            let n = tabpagewinnr(tab,'$') " get the number of windows in the current tab
            if n > 1
                let s .= ':' . n " if there's more than one, add a colon and display the count
            endif
      let bufmodified = getbufvar(bufnr, "&mod")
            if bufmodified
                let s .= ' +'
            endif
            if bufname != ''
                let s .= ' ' . pathshorten(bufname) . ' ' " outputs the one-letter-path shorthand & filename
            else
                let s .= ' [No Name] '
            endif
        endfor
        let s .= '%#TabLineFill#' " blank highlighting between the tabs and the righthand close 'X'
        let s .= '%T' " resets tab page number?
        let s .= '%=' " seperate left-aligned from right-aligned
        let s .= '%#TabLine#' " set highlight for the 'X' below
        let s .= '%999XX' " places an 'X' at the far-right
        return s
    endfunction
    set tabline=%!MyTabLine()
endif

