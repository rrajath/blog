+++
title = "Week Notes - 26-30"
author = ["Rajath Ramakrishna"]
date = 2026-07-27T22:07:00-07:00
lastmod = 2026-07-28T10:51:32-07:00
tags = ["weeknotes"]
draft = false
+++

Last week I spent the last day of Fable 5 access on revamping my dotfiles completely. This included nix-ifying all the configs that could be nix-ified. I also had elaborate nix configs for personal, work and shared modules/packages so that I could use the same config at workplace, but I decided to trim it down to only use it for personal for now, due to restrictions at workplace.

The resulting [dotfiles repo](https://github.com/rrajath/dotfiles/) is now much slimmer and much better organized. I also made Claude write the top level [README](https://github.com/rrajath/dotfiles/blob/master/README.org) which has lot more details about what's in the repo, how it's organized, etc. I also revamped my [CLAUDE.md](https://github.com/rrajath/dotfiles/blob/master/claude-code/CLAUDE.md) to have better guidelines.

I also added two new features for my Android app Grove for note-taking using org files. One was refining the agenda view with proper sections for overdue tasks, and other tasks that are grouped by days. The other feature was a fully featured search page that was built from the ground up to not only  have some presets like Overdue tasks, scheduled for today, etc but also have rich filters for TODO states, tags, files, schedule, deadlines, and of course, full text search.

I have a couple more big features in mind that I want to build. And then I'd be building a bunch of refinements. I'm excited for how this app is taking shape.
