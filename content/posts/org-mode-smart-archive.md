+++
title = "OrgMode Smart Archive"
author = ["Rajath Ramakrishna"]
date = 2020-09-17T21:32:00-07:00
lastmod = 2020-09-17T21:39:08-07:00
tags = ["productivity", "orgmode", "emacs"]
draft = false
+++

So far, my workflow in [OrgMode](https://orgmode.org/) for managing tasks and events was to have one file called `organize.org` that contains top-level headings - **Tasks**, **Events** that contained respective items. Once I finished those items, I'd move them to a different file called `archive.org`. So, my `organize.org` file looked something like this:

**`organize.org`**

```nil
 * Tasks
  * Task 1
  * Task 2
 * Events
  * Event 1
  * Event 2
```

Initially, I was directly archiving all the tasks/events that I completed, so my `archive.org` became a dumping ground. A few weeks later I looked at my archive file and it was so hard to go look at it and separate them out, so I created similar top-level headings.

Now my `archive.org` had **Tasks** and **Events** as the top-level headings and I would archive all the DONE tasks and events to their respective headings. This also felt a little tedious because each time I had to archive something, I had to select the specific file and heading. I could have used the archive feature that org-mode provides, but that creates a new file whenever I want to archive something from another file. I want to maintain just one file for archive and if I want to archive anything from any of the other files, they'll all go to this one `archive.org`. This is part of my PARA workflow.

_**Note**: By the way, I use Doom Emacs, so some of the keybindings I mention in this article will be specific to [Doom Emacs](https://github.com/hlissner/doom-emacs). They may not work with [Spacemacs](https://www.spacemacs.org/) or [Vanilla Emacs](https://www.gnu.org/software/emacs/)._

What I figured out later was to have a `:PROPERTIES:` drawer containing the location of the archive file _and_ the heading under which it can be archived to. And, I did this for all the headings where I usually archive stuff. Now that I've set this up, all I do is hit `SPC m A` (or `M-x org-archive-subtree`) and the item goes to the right location. And not just that, it also adds a `:PROPERTIES:` drawer in the destination location with all the relevant details like where that heading came from, at what time the task was archived, etc.

**`organize.org`**

```nil
 * Tasks
   :PROPERTIES:
   :ARCHIVE: ./archive.org::* Tasks
   :END:
 * Events
   :PROPERTIES:
   :ARCHIVE: ./archive.org::* Events
   :END:
```

Now, if I have to look at all the things I've done and events I've attended over the past day/week/month/quarter/year, I just have to go to `archive.org` and do a sparse tree search (`SPC m s s` or `M-x org-sparse-tree`) on that tree and I can slice and dice the data however I want. In case you want to know what properties get added in `archive.org`, here's a preview.

**`archive.org`**

```nil
 * Tasks
 ** DONE Task 1
    CLOSED: [2020-09-12 Sat 11:51]
    :PROPERTIES:
    :ARCHIVE_TIME: 2020-09-12 Sat 11:52
    :ARCHIVE_FILE: ~/Documents/org-mode/organize.org
    :ARCHIVE_OLPATH: Tasks
    :ARCHIVE_CATEGORY: organize
    :ARCHIVE_TODO: DONE
    :ARCHIVE_ITAGS: task
    :END:
```
