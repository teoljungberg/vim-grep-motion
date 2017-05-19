# Grep motion
Grep for text objects. Works with pretty much everything, including:

```
w, W, e, E, b, B, t*, f*, i*, a*, and custom text objects
```

## :grep
`gr` will populate the quickfix list using `:grep`.

## :lgrep
`gl` will populate the location list using `:lgrep`.

## Normal mode
Place your cursor somewhere, type `gr` or `gl` and, then perform a text-object
for what you want to grep for.

## Visual mode
Visually select the pattern you want to grep for, type `gr` or `gl`.

## Mappings
The mappings `gr` and `gl` are set in both normal and visual-mode, but will
adhere to any custom mapping you have configured.

## License

Copyright (c) Teo Ljungberg. Distributed under the same terms as Vim itself. See
`:help license`.
