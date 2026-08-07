+++
title = "Adding smart punctuation to Expander"
author = ["Rajath Ramakrishna"]
lastmod = 2026-08-07T15:23:14-07:00
draft = true
+++

I use [GBoard](https://play.google.com/store/apps/details?id=com.google.android.inputmethod.latin) on my Pixel 10 Pro. I've been a GBoard user for several years. It has all the smartness that makes typing a breeze. However, it's missing one setting - smart punctuation. Let me explain.

Whenever I type fast and keep hitting space, GBoard both autocorrects and also inserts space after the corrected word. When I try to type punctuations, the space end up before the punctuation.

For example, I'd end up with a phrase like "how are you ?", instead of "how are you?" (notice the space before the question mark in the first variant).

This was a pet peeve of mine and I really wanted it to be solved. I'm not trying to be a grammar police, but bad formatting is something that makes me uncomfortable. More than that, GBoard for all its smartness could have fixed this. It's easy too. I don't understand why Google hasn't done this. I was using [Swiftkey](https://play.google.com/store/apps/details?id=com.touchtype.swiftkey) until a few years ago before it became bloated and slow and clunky. But Swiftkey did punctuations right.

So, anyway, I really wanted it to be solved and I added it as a feature in [Expander](https://github.com/rrajath/expander/) (my text expansion app). Here's how it works.

{{< video src="/videos/smart-punctuation-demo.webm" >}}

You may be thinking what is a smart punctuation doing in a text expansion app. I thought about it a lot as well. I debated adding it to the app because I thought it _doesn't really_ belong there. But the alternative was build another app, which didn't make sense. Although I could argue that it still is a text expansion/replacement where it replaces a space + punctuation with a punctuation + space. It's not a great argument, but it's all I've got.
