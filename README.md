# Grep motion
Grep for text objects. Works with pretty much everything, including:

```
w, W, e, E, b, B, t*, f*, i*, a*, and custom text objects
```

## Normal mode
Place your cursor somewhere, type `gr` and, then perform a text-object for what
you want to grep for.

## Visual mode
Visually select the pattern you want to grep for, type `gr`.

## Change program
This plugin defaults to `:grep`, if you want to use i.e [`:Ack`], you can
configure it be used like so:

```viml
let g:grep_motion_prg = ":Ack"
```

[:Ack]: https://github.com/mileszs/ack.vim

## Mappings
The mapping `gr` is set in both normal and visual-mode, if you want to remove it
to set your own mappings you set `g:grep_no_maps` in your `.vimrc`

If you want to use `qq` instead of `gr`:

```viml
let g:grep_motion_no_maps = 1
nnoremap <silent> qq :set opfunc=<SID>GrepMotion<CR>g@
xnoremap <silent> qq :<C-U>call <SID>GrepMotion(visualmode())<CR>
```

## License

Copyright (c) Teo Ljungberg. Distributed under the same terms as Vim itself. See
`:help license`.