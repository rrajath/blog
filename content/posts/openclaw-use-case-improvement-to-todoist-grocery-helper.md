+++
title = "OpenClaw use case: improvement to Todoist grocery helper"
author = ["Rajath Ramakrishna"]
lastmod = 2026-02-08T13:57:30-08:00
tags = ["workflows", "todoist", "openclaw"]
draft = false
+++

I [recently wrote about](https://rrajath.com/posts/openclaw-use-case-add-groceries-to-todoist) how I used [OpenClaw](https://openclaw.io) to add groceries to my [Todoist](https://todoist.com) Shopping List project which is where I maintain my grocery list. I made an enhancement to this workflow which does the following. For each item I add:

1.  OpenClaw checks if the item is unlabeled (I use QFC as my default grocery store, so unlabeled ones means I have to buy them at QFC)
2.  If it has a label, it adds that item to the Shopping List project with that label
3.  If it doesn't, then OpenClaw uses browser control and goes to the QFC website
4.  It then finds deals for that item (if any)
5.  It clips those coupons and adds them to my card

Now, all I have to do is say "add eggs" in my messaging app and the bot will both add the item to Todoist as well as add coupons to my card (if it finds them).
