" vim config file developed by m30055

" 4 character tabs and indents 
set tabstop=2       " 8 is too much
set shiftwidth=2    " 8 is too much
set softtabstop=2   " number of spaces in tab when editing

" Tabs to be expanded to spaces
set expandtab       " expand tabs

" Cause backspace to backspace over expanded tabs
set smarttab         

" Set case sensitivity on searches
set ignorecase    " Ignore case when searching
set smartcase     "    but, if case is used in the pattern, DON'T ignore it

set ruler         " Show line and column numbers, as well as percent of file
set showcmd       " Show partial command in status line

colorscheme desert

syntax enable
set ruler
set number
set cursorline
set wildmenu    " graphical menu when tabbing
set showmatch   " show matching parens, etc
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

set title

"Use TAB to complete when typing words, else inserts TABs as usual.
"Uses dictionary and source files to find matching words to complete.

"See help completion for source,
"Note: usual completion is on <C-n> but more trouble to press all the time.
"Never type the same word twice and maybe learn a new spellings!
"Use the Linux dictionary when spelling is in doubt.
"Window users can copy the file to their machine.
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
:set dictionary="/usr/dict/words"

" autoindent
set ai
" smart indent?
set si
" stricter rules for C programs
set cindent

" Send more characters for redraws
set ttyfast

" Enable mouse use in all modes
set mouse=a

" Set this to the name of your terminal that supports mouse codes.
" Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
set ttymouse=xterm

" yank more lines
set viminfo='20,<1000,s1000
