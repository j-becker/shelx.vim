" Vim syntax file
" Language:         shelx input or output file
" Maintainer:       Jonathan Becker <jonathan_becker@gmx.de>
" Latest Revision:  2015-11-08

if exists("b:current_syntax")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

syntax case ignore

syn keyword shelxKeyword        ABIN ACTA ANIS ANSC ANSR BASF BIND BLOC BOND
                              \ BUMP CELL CGLS CHIV CONF CONN DAMP DANG DEFS
                              \ DELU DFIX DISP EADP END  EQIV EXTI EXYZ FEND
                              \ FLAT FMAP FRAG FREE FVAR GRID HFIX HKLF HTAB
                              \ ISOR LATT LAUE LIST MERG MORE MOVE MPLA NCSY   
                              \ NEUT OMIT PLAN PRIG RESI RIGU RTAB SADI SAME  
                              \ SFAC SHEL SIMU SIZE SPEC STIR SUMP SWAT SYMM   
                              \ TEMP TITL TWIN TWST UNIT WGHT WIGL WPDB XNPD   
                              \ ZERR

syn match shelxKeyword        'L.S.'

syn match shelxComment        'REM.*'

syn match shelxIgLine '^ .*.[a-zA-Z].*'

syn match shelxAFLine '^AFIX .*.\d\+'

syn match shelxPTLine '^PART \d\+'

hi def link shelxIgLine        Todo
hi def link shelxComment       Comment
hi def link shelxKeyword       Keyword
hi def link shelxAFLine     Delimiter
hi def link shelxPTLine     Identifier
hi def link shelxAtom       Todo        

let b:current_syntax = "shelx"

let &cpo = s:cpo_save
unlet s:cpo_save
