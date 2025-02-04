# My setup for neovim

# Keybinds
## Normal Mode
\<leader\> = ","

\<leader\>w = write<br>
\<leader\>Z = save all split windows and quit  
\<leader\>pd = exit file to directory tree

\<F2\> = toggle numbers

\<leader\>h = move one split window left  
\<leader\>j = move one split window down  
\<leader\>k = move one split window up  
\<leader\>l = move one split window right

\<leader\>{{ = auto close curly braces and put cursor in line between them  
\<leader\>{ = auto close curly braces on same line and but cursor between them  
\<leader\>( = same for parens  
\<leader\>[ = same for brackets  
\<leader\>" = same for quotes

n = go to next search match like normal but keep cursor in middle of screen  
N = go to previous search match like normal but keep cursor in middle of screen

\<leader\>y = paste to system clipboard  
\<leader\>Y = paste line to system clipboard

Q = do nothing

## Insert Mode
\<leader\>ll = move cursor right one

## Visual Mode
J = move highlighted block up one line  
K = move highlighted block down one line

\<leader\>y = paste highlighted text to system clipboard

## LSP

\<C-n\> = select next autocomplete item  
\<C-p\> = select previous autocomplete item  
\<C-y\> = confirm selected autocomplete item  
\<C-space\> = idk...

## Harpoon

\<leader\>ha = add file to harpoon list  
\<leader\>hn = go to next file in harpoon list  
\<leader\>hp = go to previous file in harpoon list  
\<leader\>hm = bring up harpoon menu  
\<leader\>h1 = go to first file in harpoon list  
\<leader\>h2 = go to second file in harpoon list  
\<leader\>h3 = go to third file in harpoon list  
\<leader\>h4 = go to fourth file in harpoon list

## Telescope

\<leader\>pf = search files in working project  
\<C-p\> = search git files  
\<leader\>pws = not really sure, grep word from files?  
\<leader\>pWs = not really sure, grep WORD from files?  
\<leader\>ps = grep word from working project  
\<leader\>ph = bring up help tags in working project

## Fugitive

\<leader\>gs = bring up git status

## Undotree

\<leader\>u = bring up undo history
