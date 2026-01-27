+++
title = "org-retro-journal: an emacs package for looking back through your journal"
author = ["Rajath Ramakrishna"]
date = 2026-01-26T22:54:00-08:00
lastmod = 2026-01-26T22:56:43-08:00
tags = ["emacs", "vibecoding"]
draft = false
+++

I've been journaling in org-mode since 2020. It's a simple `journal.org` file in `datetree` format, where I add entries each day. One thing I never did is to go back and read what I had written. I really like the Memories feature in Google Photos where it shows what I was doing that day or around that day a year ago, 2 years ago, 3 years ago and so on. And I wanted a similar feature for my journal.

So, with some assistance from the LLM, I vibecoded an emacs package called [org-retro-journal](https://github.com/rrajath/org-retro-journal) that does exactly this. The package scans each year to find entries from the same or nearest date in previous years. It then presents these in an ephemeral buffer. I even added a few keyboard shortcuts that enable the user to go backward and forward through time one day at a time. Or the user can pick a specific date and view past entries for each year around that date. I wanted the level of detail to be just the headings so that I could go into any of them to read more. Plus, these org subtrees are _copied_ to the ephemeral buffer, so any accidental edits won't affect the original file.


## Screenshot {#screenshot}

Here's what it looks like in action:
![](/images/OrgRetroJournal.png)

This is invoked by calling the function `org-retro-journal-review`, which can be bound to any key.


## Conclusion {#conclusion}

This was a fun exercise. As mentioned earlier in this post, I co-developed it with LLM assistance. I'm not super proficient in Emacs Lisp to the point where I can write complex functions. Given enough time, I would have figured it out, but due to lack of time and LLMs being pretty good at writing code, I chose to use an LLM to assist me with this. The whole process took less than half an hour.
