# My setup for neovim

# Keybinds
## Normal Mode
\<leader\> = ","

\<leader\>w = write<br>\
\<leader\>Z = save all split windows and quit\
\<leader\>pd = exit file to directory tree

\<F2\> = toggle numbers

\<leader\>h = move one split window left\
\<leader\>j = move one split window down\
\<leader\>k = move one split window up\
\<leader\>l = move one split window right

\<leader\>{{ = auto close curly braces and put cursor in line between them\
\<leader\>{ = auto close curly braces on same line and but cursor between them\
\<leader\>( = same for parens\
\<leader\>[ = same for brackets\
\<leader\>" = same for quotes

n = go to next search match like normal but keep cursor in middle of screen \
N = go to previous search match like normal but keep cursor in middle of screen

\<leader\>y = paste to system clipboard \
\<leader\>Y = paste line to system clipboard

Ctrl-o = jump back to the previous file/location\
Ctrl-i = jump forward to the next file/location\
Ctrl-6 = switch between previoiusly edited file\
\<backspace\> = remapped to be the same as Ctrl-6

Q = do nothing

### Folding Commands - Standard Vim

zfxj = create a fold for current line and x next lines\
zfxk = create a fold for current line and x previous lines\
zfa\[delim\] = create a fold from the line with the first delim until the line with the closing delim\
\:x,y fo\(ld\) = folds lines x through y, \"ld\" is optional\
\:..,x = fold from current cursor line back to line x\
zf\/string = create a fold from the cursor to the first instance of the search string

zj = move to next fold\
zk = move to previous fold\
\[z = move to start of fold\
\]z = move to end of fold

\<space\> = unfold under cursor\
zo = open fold under cursor\
zO = open fold under cursor including nested folds\
zc = close fold under cursor\
zm = close all first-level folds\
zr = open all first-level folds\
zM = close all folds including nested folds\
zR = open all folds including nested folds

dd = delete entire closed fold\
yy = yank entire closed fold


## Insert Mode
\<leader\>ll = move cursor right one

## Visual Mode
J = move highlighted block up one line\
K = move highlighted block down one line

\<leader\>y = paste highlighted text to system clipboard

### Folding Commands - Standard Vim
zf = create fold


## LSP
\<C-n\> = select next autocomplete item\
\<C-p\> = select previous autocomplete item\
\<C-y\> = confirm selected autocomplete item\
\<C-space\> = idk...

K = bring up hover menu\
gd = go to definition\
    \<C-o\> go back\
    \<C-i\> go forward\
gvd = go to definition in a vertical split\
ghd = go to definition in a horizontal split\
gr = display references, everywhere that this function is called\
\[d = go to next diagnostic item\
\]d = go to previous diagnostic item

## Harpoon
\<leader\>ha = add file to harpoon list\
\<leader\>hn = go to next file in harpoon list\
\<leader\>hp = go to previous file in harpoon list\
\<leader\>hm = bring up harpoon menu\
\<leader\>h1 = go to first file in harpoon list\
\<leader\>h2 = go to second file in harpoon list\
\<leader\>h3 = go to third file in harpoon list\
\<leader\>h4 = go to fourth file in harpoon list

## Telescope
\<leader\>pf = search files in working project\
\<C-p\> = search git files\
\<leader\>pws = not really sure, grep word from files?\
\<leader\>pWs = not really sure, grep WORD from files?\
\<leader\>ps = grep word from working project\
\<leader\>ph = bring up help tags in working project

## Fugitive
\<leader\>gs = bring up git status

## Undotree
\<leader\>u = bring up undo history

## VimTeX - Folding Enabled
\\ll = start or stop compiling the document, if started it will recompile on every write\
\\lk = stop the compilation process\
\\lc = clear auxiliary files

