+++
title = "Exploring Helix Editor"
author = ["Rajath Ramakrishna"]
date = 2022-12-25T23:10:00-08:00
lastmod = 2022-12-25T23:10:41-08:00
draft = false
+++

A few weeks ago, my coworker was talking about [Helix Editor](https://helix-editor.com). I'm generally fascinated by CLI tools, so I decided to check it out.

As soon as I tried it I was super impressed with how many features were packed in it. Tree-Sitter, Language Servers, multiple selections and many more. I have been struggling the past few months to get a good IDE experience set up on Emacs and every time I try, it falls short by just a little bit and I end up switching back to VS Code. I remember doing tons of different customizations, trying out several packages and their individual settings just so that all those packages play along together very well. But it only got me to about 90% of what I like. I'd run into all kinds of weird issues every now and then and it would take my focus away from the task at hand.

Helix on the other hand required almost zero config. Pretty much every single default it came with was intuitive. It supports so many languages, and with tree-sitter integration things are a lot smoother and faster while editing code. But the thing I was most impressed with was the speed. I've never seen that level of speed and responsiveness from any editor. Not Emacs, not VSCode, definitely not IntelliJ. I tried opening a few random projects and tried editing the code a little bit and the experience was awesome. Everything, from auto-complete to opening overlay menus, filtering files from a list of hundreds, even narrowing down commands from the command palette was very smooth.

Helix also deviates from vim and has its own keybindings (inspired by Kakoune). Being a long time vim user, I hated them at first, but then I really understood why things are done differently and I totally agree with it. Vim has a "do first, select later" kind of navigation which is not super efficient. With vim you first specify that you want to change or delete something and then you specify what you want to do the operation on. For example, `c2w` will delete the next two words from the cursor's position and change the cursor to insert mode. If you go wrong in specifying how many words (in this instance), you'll have to undo and start over. Helix follows a "select first, do later" approach which is great. Once you're happy with the selection, you can do whatever you want with it. To do the above operation in Helix, I'd have to do `v2wc`. There's one more keystroke here, but it's a lot more intuitive and I make fewer mistakes.

There were a couple of things I really wanted in Helix - a tab bar so that I can see the open files (this was recently added and is now available), a tree explorer as a sidebar or an overlay (this was recently merged and should be available soon), and a way to automatically reload a file if that file was changed outside of Helix.

I've really been enjoying Helix. I love the thriving community and the effort that goes into fixing bugs and adding features. I'm still learning the keybindings and how to efficiently navigate in the file. I'd recommend it to everyone to at least give it a try.
