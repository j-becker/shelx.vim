shelx.vim
===========

Vim syntax highlight file for [shelx](http://shelx.uni-ac.gwdg.de/SHELX/) .res and .ins files. To load this, you need to define the filetype (e.g. in `filetype.vim`):

```
" Shelx files
au BufRead,BufNewFile *.res,*.ins  setf shelx
```
