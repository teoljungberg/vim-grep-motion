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

## Mappings
The mapping `gr` is set in both normal and visual-mode, but will adhere to any
custom mapping you have configured. If you want to remove it to set your own
mappings you set `g:grep_no_maps` in your `.vimrc`

If you want to use `qq` instead of `gr`:

```viml
nnoremap <silent> qq :set opfunc=<SID>GrepMotion<CR>g@
xnoremap <silent> qq :<C-U>call <SID>GrepMotion(visualmode())<CR>
```

## License

Copyright (c) Teo Ljungberg. Distributed under the same terms as Vim itself. See
`:help license`.
