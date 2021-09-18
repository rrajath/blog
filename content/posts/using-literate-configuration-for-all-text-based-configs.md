+++
title = "Using literate configuration for all text-based configs"
author = ["Rajath Ramakrishna"]
lastmod = 2021-09-17T21:18:22-07:00
draft = true
+++

Has it ever happened to you that you look at your config (vim, tmux, whatever) after a while and see an obscure piece of code there that you have no recollection adding and what it's even doing? This has happened to me so many times. So, what can we do about it? Add comments while adding new pieces of config? Couple of lines of comments are fine, but if you need more explanation than that, it just gets cluttered. If you want to add links, they are not clickable, unless you have an editor or terminal that can handle text links and make them clickable.

So what can we do? What we _can_ do is change that config to a literate configuration.


## What is Literate Configuration {#what-is-literate-configuration}

Literate Configuration comes from the [literate programming paradigm](https://en.wikipedia.org/wiki/Literate%5Fprogramming). Simple put, you write your config like documentation where you'd have code blocks interspersed within your config. You run a simple command to "tangle" these documentation-like files and the code blocks in them get evaluated and then written to a separate file (like an actual config file). And, tangling is a process of extracting source blocks in an org file into the location specified at the top of the org file or in the source block itself.

Once you follow this, you will never touch the actual config. You basically write documentation for each part of your config and let it generate your config file with your code in it. Your application understands the file your literate config generates and you understand the file you write since it's well-documented.


## So, why literate configuration anyway? {#so-why-literate-configuration-anyway}

Changing your configs to make them look like documentation sounds like a lot of work. But, there are many benefits to using a literate configuration:

-   **Easy to understand**. Thanks to the documentation surrounding the code snippets
-   **Easy to share**. People you share this with need no explanation as to what's in your config, your documentation takes care of that
-   **Easy to maintain**. You never touch the actual config, you only update this .org file and make it generate the actual source file
-   **Easy to publish**. If you want to publish your config online, it's super easy. GitHub, for example, natively supports org the same way it supports Markdown. So, these org files are rendered nicely, just as regular documentation.

One of the issues I used to have with maintaining multiple dotfiles for my applications is that they're all in different places. If I have to check them all into a git repo, I'd either have all of them in one location and create symlinks to them in the apps that use them, or use a program like [GNU Stow](https://www.gnu.org/software/stow).

I didn't like either of these methods. Literate configuration solves this in the most elegant way. All you have to do is have your literate configs (org files) in a git repo (used for dotfiles) and set the tangle locations in each of these files to where each of the apps needs them. Once that is done, your dotfiles will only contain org files and all your apps will contain the config files they need.


## How to build a literate config? {#how-to-build-a-literate-config}

Building a literate configuration needs just one prerequisite - Emacs, because we need a way to "tangle" the source blocks in the org files. Since Emacs ships with org mode and org babel, tangling is just a keybinding away. We only need two things in order to create a literate configuration: a source block and a tangle attribute. Here's an example to show how that's done.


### Example {#example}

Enabling tangle in an org file can be done by specifying a tangle location at the top as part of the `#+PROPERTY` attribute, like this:

```text
#+PROPERTY: header-args :tangle /path/to/file-name.extension
```

Here's what a code block looks like in an org file.

```text
#+begin_src emacs-lisp
  (setq foo "bar")
#+end_src
```

You can write your documentation around these code blocks and hitting `C-c C-v t` (or invoking the function `org-babel-tangle`) at the top of your file would tangle them to the file specified in the `#+PROPERTY` attribute of your org file.


## Conclusion {#conclusion}

Using literate configuration for config files is great and I converted almost all my configs to literate configs. For reference, have a look at my [literate configuration for my Emacs setup](https://github.com/rrajath/dotfiles/blob/master/.emacs.d/PrivateConfig.org). Look at the source blocks to see actual configs. Use the "Raw" button on github notice line 2 where it says `:tangle ./private-config.el`
