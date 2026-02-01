---
title: "OpenClaw use case: research assistant with Todoist"
date: 2026-02-01T07:32:14-08:00
draft: true
tags: []
---

I've been trying to use OpenClaw to automate some of the tasks I do. 

OpenClaw is great for acting as a research assistant and I configured it to do the research for some of the tasks I have in my Todoist. Whenever I think of capturing a task, I do it in Todoist and get to it later. 

To automate research tasks like comparing headphones, or summarizing a the comment thread of a HackerNews post, I asked the bot to create a cron job every 4 hours and do the research.

Now every 6 hours it checks Todoist and looks for tasks with the label `ellie` (the name of my bot) and picks up the task. It does all the research and puts what it finds in a markdown file in a specific directory. It also adds additional metadata, if any, at the end of the file. Once it does all that, it notifies me on Discord with a brief summary of what it did. 