+++
title = "A better Back to Indentation in Emacs"
author = ["Rajath Ramakrishna"]
date = 2025-01-17T16:23:00-08:00
lastmod = 2025-01-17T16:23:58-08:00
draft = false
+++

When I'm on a line that is indented, I like to switch between going to the beginning of the line and the first non-whitespace charater. These have two different keybindings, `C-a` and `M-m` respectively. I wanted just one keybinding to switch between these two positions.

I tried searching if this already exists in Emacs and I couldn't find it. So, I wrote a small function and bound it to `C-a`.

```emacs-lisp
(defun rr/beginning-of-line ()
  "Go to beginning of line or to first non-whitespace character
depending on current position of point"
  (interactive)
  (if (= 0 (current-column))
      (back-to-indentation)
    (beginning-of-line)))
```

Now whenever I hit `C-a`, I jump between beginning of line and first non-whitespace character.
