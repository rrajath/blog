+++
title = "OrgMode Smart Archive"
author = ["Rajath Ramakrishna"]
date = 2020-09-08T00:00:00-07:00
draft = false
+++

tags
: [OrgMode]({{< relref "orgmode" >}}), [Emacs]({{< relref "emacs" >}}), [Workflows]({{< relref "workflows" >}})


## Smart Archive {#smart-archive}

So far, my workflow in [OrgMode]({{< relref "orgmode" >}}) for managing tasks and events was to have one file called `organize.org` that contains top-level headings - **Tasks**, **Events** that contained respective items. Once I finished those items, I'd move them to a different file called `archive.org`.

Initially, I was directly archiving all tasks/events, so my `archive.org` was just a dumping ground of everything. Later I realized, it's hard to go back and look at it and separate them out, so I created similar top-level headings.

Now my `archive.org` had **Tasks** and **Events** as the top-level headings and I would archive all the DONE tasks and events to their respective headings. This also felt a little tedious because each time I had to archive something, I had to select the specific file and heading.

What I figured out later was to have a `:PROPERTIES:` drawer containing the location of the archive file _and_ the heading under which it can be archived to. And, I did this for all the headings where I usually archive stuff. Now that I've set this up, all I do is hit `SPC m A` and the item goes to the right location. And not just that, it also adds a `:PROPERTIES:` drawer in the destination location with all the relevant details like where that heading came from, at what time the task was archived, etc.

Now, if I have to look at all the things I've done and events I've attended over the past day/week/month/quarter/year, I just have to go to `archive.org` and do a sparse tree search (`SPC m s s`) on that tree and I can slice and dice the data however I want.
