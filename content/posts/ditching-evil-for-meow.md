+++
title = "Ditching Evil for Meow"
author = ["Rajath Ramakrishna"]
date = 2023-02-25T20:42:00-08:00
lastmod = 2023-02-25T20:47:57-08:00
draft = false
+++

I've been a vim user for as long as I can remember. I like vim so much that I try to incorporate vim keybindings wherever I can. Like, using [Vimium extension](https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb?hl=en) in Firefox/Chrome, [vim extention in IntelliJ/VSCode](https://marketplace.visualstudio.com/items?itemName=vscodevim.vim), [evil mode in Emacs](https://github.com/emacs-evil/evil), etc.

I recently [stumbled upon Helix Editor](https://rrajath.com/posts/exploring-helix-editor/) which made me rethink vim’s way of navigation. Helix was so much more intuitive for me in terms of selection-&gt;action paradigm instead of vim’s action-&gt;selection. I liked Helix so much that I started using it as an IDE. Even though I had good muscle memory of vim keybindings, I decided to spend some time and learn Helix’s keybindings.

As I started using Helix more and more, I wanted to have a consistent experience in the two text editors I use the most - Helix (for IDE) and Emacs (for organizing my life). So, I wanted to get rid of Evil on Emacs since it was confusing me quite a lot. So, I started looking for packages that resembled Helix way of navigation and [Meow](https://github.com/meow-edit/meow) is the one that closely matched it. I did try couple of packages like [boon](https://github.com/jyp/boon) and [xah-fly-keys](http://xahlee.info/emacs/misc/xah-fly-keys.html) and found Meow to be the closest to what I was looking for in terms of ease of use and customizability.

I’m pleasantly surprised with Meow and how configurable it is and I got used to it real quick. I had to do a few customizations to get it to work to my liking, but that’ll be a different post altogether. But for those that like the Helix/Kakoune way of navigating and want to have the same in Emacs, Meow is a great choice.

Also, I have [quite an extensive config](https://github.com/rrajath/dotfiles/blob/master/.emacs.d/PrivateConfig.org#meow) in Meow where I had to port [most of what I had in General](https://github.com/rrajath/dotfiles/blob/master/.emacs.d/PrivateConfig.org#general). Some of the [custom functions](https://github.com/rrajath/dotfiles/blob/master/.emacs.d/PrivateConfig.org#custom-functions) are to mimic Helix behaviors. [Other keymap related functions](https://github.com/rrajath/dotfiles/blob/master/.emacs.d/PrivateConfig.org#custom-keymaps) are to mimic what I had in General. I’ll explain some of them in future posts.
