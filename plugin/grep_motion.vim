if !exists("g:grep_motion_no_maps")
  nnoremap <silent> gr :set opfunc=<SID>GrepMotion<CR>g@
  xnoremap <silent> gr :<C-U>call <SID>GrepMotion(visualmode())<CR>
endif

if !exists("g:grep_motion_prg")
  let g:grep_motion_prg = "grep"
endif

function! s:CopyMotionForType(type)
  if a:type ==# 'v'
    silent execute "normal! `<" . a:type . "`>y"
  elseif a:type ==# 'char'
    silent execute "normal! `[v`]y"
  endif
endfunction

function! s:GrepMotion(type) abort
  let reg_save = @@

  call s:CopyMotionForType(a:type)

  execute "" . g:grep_motion_prg . " " . shellescape(@@)

  let @@ = reg_save
endfunction
