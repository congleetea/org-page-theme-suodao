# org-page-one-column

This repository contains a theme for [Org-page](https://github.com/kelvinh/org-page)

## Install

``` bash
git clone htpp://github.com/0x7cc/org-page-one-column ~/.emacs.d/elpa/org-page-[XXXX.XX]/themes/
```

Or

``` bash
git clone htpp://github.com/0x7cc/org-page-one-column ~/src/[ORG-PAGE SOURCE FOR WEBSITE]/themes/
```

Then in your `org-page` configuration:

```elisp
(setq op/theme-root-directory "~/src/[ORG-PAGE SOURCE FOR WEBSITE]/themes")
(setq op/theme 'org-page-one-column)
```

## USAGE:

```Make
make 'compile'
```

This generate the css files at `resources/css/`:

- `main.css` - not compressed
- `main-min.css` - compressed and default css required by `templates/header.mustache`

```Make
make 'deps'
```

Install dependencies(ruby gem sass).

### IMPORTANT

If you don't want to use [SASS](http://sass-lang.com/), you can use the pure `resources/css/main.css`.

Then change `templates/header.mustache` from this:

```HTML
<link rel="stylesheet" href="/media/css/main-min.css" type="text/css">
```

To this:

```HTML
<link rel="stylesheet" href="/media/css/main.css" type="text/css">
```

## License

Use of this source code is governed by a BSD-style license that can be found in the LICENSE file.
