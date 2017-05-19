if maparg("gr", "n") ==# ""
  nnoremap <silent> gr :set opfunc=<SID>Grep<CR>g@
endif

if maparg("gr", "x") ==# ""
  xnoremap <silent> gr :<C-U>call <SID>Grep(visualmode())<CR>
endif

if maparg("gl", "n") ==# ""
  nnoremap <silent> gl :set opfunc=<SID>LGrep<CR>g@
endif

if maparg("gl", "x") ==# ""
  xnoremap <silent> gl :<C-U>call <SID>LGrep(visualmode())<CR>
endif

function! s:CopyMotionForType(type)
  if a:type ==# "v"
    silent execute "normal! `<" . a:type . "`>y"
  elseif a:type ==# "char"
    silent execute "normal! `[v`]y"
  endif
endfunction

function! s:Grep(type) abort
  call <SID>GrepMotion(a:type, "grep")
endfunction

function! s:LGrep(type) abort
  call <SID>GrepMotion(a:type, "lgrep")
endfunction

function! s:GrepMotion(type, command) abort
  let reg_save = @@

  call s:CopyMotionForType(a:type)

  execute ":" . a:command . " " . shellescape(@@)

  let @@ = reg_save
endfunction
