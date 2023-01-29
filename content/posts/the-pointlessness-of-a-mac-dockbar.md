+++
title = "The pointlessness of a Mac Dockbar"
author = ["Rajath Ramakrishna"]
date = 2023-01-28T20:59:00-08:00
lastmod = 2023-01-28T21:00:04-08:00
tags = ["rant"]
draft = false
+++

One of the things that was initially unique to Mac was the dockbar. I remember the first time I used a Mac, I was quite fascinated by it. I liked the zoom-in effect as I hovered my mouse over each item on it.

{{< figure src="/images/MacDockbar.png" >}}

A fresh install of MacOS (or OSX back in the day) comes with a persistent dockbar at the bottom taking up a good chunk of the screen real estate. So, even when you maximize any app, it won’t take up the full screen because of the dockbar sitting at the bottom..

After a few days of using it, I started getting pretty annoyed with it and I turned on auto-hide. That only solved the problem partially. Every time I moved my mouse to the bottom of the screen, even for a moment, it popped up, disrupting my flow. More than 90-95% of the time, they were all misfires.

So, I ended up setting a delay on the dockbar to 3 seconds so that it doesn’t keep popping up when my mouse accidentally moves to the bottom edge of the screen. Instead, if the mouse stayed at the bottom for 3 seconds, only then it would popup. This made things better, but not great.

The whole time, I questioned, what was the point of a dockbar anyway? I feel like it’s more eye candy and gimmicky than useful. If anything, it gets in the way more than it helps. I never understand why some people depend on it and actually use it. It’s so much slower to use the dockbar. Here’s why: You already know which app you want to open. If it’s already open, you hit `Cmd+Tab` and just switch to it. If it’s not open, you hit `Cmd+Space` to invoke Spotlight and type a few characters of the app you want to open and you just switch to it.

Let’s say you’re using just your trackpad and your hand is not close to the keyboard. If you want to switch to another app with just your trackpad, doing an Exposé gesture is much better and easier than scanning the Dockbar for it. With Exposé, you get window previews which make it a lot easier to select from. Dockbar has so much fluff in it with all the apps that are statically present in it that it takes longer to sift through them and find the app you’re looking for.

I guess the only use of a Dockbar is when one is looking for an app but they don’t know its name, they only know what it looks like. Other than that, I don’t see a reason to use Dockbar. I would definitely recommend getting rid of it or at least setting an autohide delay of a few seconds. To do that, run this command:

```bash
defaults write com.apple.Dock autohide-delay -float 3 && killall Dock
```
