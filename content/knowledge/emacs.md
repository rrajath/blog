+++
title = "Emacs"
author = ["Rajath Ramakrishna"]
date = 2020-09-08T00:00:00-07:00
draft = false
+++

tags
: [Productivity]({{< relref "productivity" >}}), [OrgMode]({{< relref "orgmode" >}})


## Keybindings {#keybindings}

Following are some of the commonly needed keybindings that I may not remember

| Feature                           | Keybinding             | Comment                                                                                                                             |
|-----------------------------------|------------------------|-------------------------------------------------------------------------------------------------------------------------------------|
| Doom reload                       | `SPC h r r`            | No need to restart Emacs. This is the same as running `doom sync`                                                                   |
| Search for text using pattern     | `SPC n v`              | Searches headings in open buffers (and I think even bookmarks)                                                                      |
| Surround region                   | `S (`                  | Select a word using visual mode and then press this to change it to `( word )`                                                      |
| Set Property                      | `SPC m o`              | Sets properties to headings                                                                                                         |
| Jump to Org Heading               | `C-c C-j` or `SPC s i` | Brings up a list of headings in a mini buffer where you can jump to any heading **in the current file**                             |
| Export subtree to a markdown file | `SPC m e C-s m m`      | Exports subtree in an org file to a .md file with the same name as the org file unless the property `EXPORT_FILE_NAME` is specified |
| Org Capture dispatch              | `SPC X`                | Gives a list of capture templates to choose from                                                                                    |
| Search for files in the project   | `SPC s p`              | You may have to switch to a different project if you want to find files in a different folder                                       |
| Locate files                      | `SPC s f`              | Searches for files by name in the entire OS, not just the current directory                                                         |
| Open private config folder        | `SPC f p`              | This opens the `~/.doom.d/` folder where you can select a file to open                                                              |
| Switch workspaces                 | `Cmd+<N>`              | Switch to the Nth workspace by hitting Cmd+N                                                                                        |
| Filter headings by tags           | `C-c \`                | Hitting this will give you a list of tags which you can select and filter by                                                        |
| Toggle Org Heading                | `SPC m h`              | Enable/disable heading on the current line                                                                                          |


## Jump to word in a file {#jump-to-word-in-a-file}

Type `g s SPC`. This will dim the screen where you can search for any string. After you type your characters, if there is only one match, it'll highlight the beginning of that word with a letter (usually, the letter `a`). Typing `a` will take the cursor to that word. If there are multiple words, Emacs will highlight each occurrence with one or two letter which you can then type and get to that word. It's super convenient in large files.

**Note**: This whole thing works only in the **visible portion of the screen** and not the entire doc.


## Jump to word in the same line {#jump-to-word-in-the-same-line}

Using `evil-snipe`. Use `s` (forward snipe) or `S` (backward snipe) and immediately type couple of characters of the word you want to jump to.
Use `,` to navigate to previous results and `;` to navigate to next results (if there are multiple results)

**Remember**: `evil-snipe` takes only two characters.


## Switch between **TODO** and **DONE** states using Enter {#switch-between-todo-and-done-states-using-enter}

Press Enter (or **RET**) to change the state of a **TODO** item between **TODO** and **DONE** states. This behavior is similar to crossing items off a checklist **[ ]**

**Remember**: this only switches between **TODO** and **DONE** and not any other states
