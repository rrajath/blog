+++
title = "Some thoughts on personal AI assistants"
author = ["Rajath Ramakrishna"]
date = 2026-07-08T00:40:00-07:00
lastmod = 2026-07-08T00:40:46-07:00
draft = false
+++

I used to use OpenClaw for a bit when it got popular. I was excited like many, but not so much to get myself a Mac Mini. I wanted to see what a personal assistant could do for me. I wrote about some of my adventures with OpenClaw in [my](https://rrajath.com/posts/openclaw-adventures/) [previous](https://rrajath.com/posts/openclaw-use-case-research-assistant-with-todoist/) [blog](https://rrajath.com/posts/openclaw-use-case-add-groceries-to-todoist/) [posts](https://rrajath.com/posts/openclaw-use-case-improvement-to-todoist-grocery-helper/). I also didn't give it access to everything I had like some people did and
I only gave it access to Todoist and Raindrop which were the two apps that could actually benefit from some automation. Beyond that, I made it do some level of research and made it generate reports, to which I made some enhancements later on.

I found that OpenClaw depended on skills that were posted on [ClawdHub](https://clawhub.ai/) and that a significant portion of those were prompt injected. This did make me feel very uncomfortable. Also, I was running OpenClaw on my Raspberry Pi and it was taking up a lot of RAM. I only had 8GB RAM on it. These, in addition to the bugginess of OpenClaw, the rate at which updates were rolling in and breaking things, made me want to just quit. But I had hope.

Before I gave up, I thought of seeing what else was out there. I wanted something lighter and came across [Hermes Agent](https://hermes-agent.nousresearch.com/). This was a lot better than OpenClaw and it wrote skills from scratch. It basically created new skills. It was a lot more impressive than OpenClaw. It had a better memory system, and you could just swap the memory with something else, like [Honcho](https://honcho.dev/). It was a lot more reliable than OpenClaw and I was genuinely happy that I finally found a personal assistant I could use reliably.

This was okay for a few weeks and my usage was pretty minimal. I was basically using the same workflows with Hermes Agent as I did with OpenClaw. And it worked for the most part. But there were times when the most basic requests would just flat out fail. It said it updated its memory and skills, yet it just failed. If it happened just once, I would have let it go, but it happened some 3+ times.

One such example is where I had a [skill to add groceries](https://rrajath.com/posts/openclaw-use-case-add-groceries-to-todoist/) to my Todoist Shopping List project. All I wanted was to just throw a list of groceries at Hermes via Discord with no context and it should create that item in my Todoist's Shopping List project. This was working well. But once in a while it would respond with something like, "I see you pasted some groceries, what would you like me do with it?". Or, I would just type banana in the chat, hoping it would add that to my Todoist. And instead it would respond with 🍌

For something that I'd want to use as a personal AI assistant, I couldn't rely on it. At all. Maybe we're not there yet.
We have new AI assistants that pop up every day. Each such project boasts about how it's better than its competitor. Yet, nothing has made a big enough splash for everyone to consistently and reliably use the assistant where it makes a genuine difference in their lives.

Setting up crazy workflows, multiple agents, dozens of skills, and of course, dashboards, is easy. The purpose of such AI assistants would be to be in the state of "set it and forget it" and have it do things on our behalf, in the background. But when it hallucinates, gives up, or straight up not understand something that it used to, it becomes an extra step of verification, baby-sitting and hand-holding, which kind of defies the point of an assistant.

I'm excited to see the improvements in the AI assistants and whatever comes next, but I'm not ready to use one on a daily basis.
