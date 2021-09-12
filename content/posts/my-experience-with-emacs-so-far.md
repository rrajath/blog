+++
title = "My experience with Emacs so far"
author = ["Rajath Ramakrishna"]
date = 2021-09-11T21:48:00-07:00
lastmod = 2021-09-11T21:48:42-07:00
draft = false
+++

I've been a vim user for about 15 years and loved every aspect of it. I'm nowhere close to the vim wizards I've seen on YouTube nor some of my coworkers who spend most part of their day writing shell scripts in vim. But among my friends and my team, I was considered a power-user. I used a lot of plugins to get things done much easily, I had my shortcuts that my friends found fascinated by and some of them were kind of amazed that I would do a code walkthrough jumping from function to function and file to file using just vim where most of them were going to their IDEs to do that.

But that's about it. My vim usage was just for making quick edits to code (larger edits meant opening up an IDE), editing shell scripts and viewing files quickly. I had to use a different tool for managing my tasks, journaling, saving links, etc.


## Using Notion {#using-notion}

I came across [Notion](https://notion.so) and I fell in love with how great it looked and how customizable it was. A lot of them were drag and drop, all the saved links had thumbnails, I could write comments, it was great for task management - I could set up dates and deadlines and get notifications accordingly, templates were great (I came up with my own journaling template since I used bullet journaling), tables were awesome and I could create different views. I used it for couple of years and I thoroughly enjoyed it.


### Downsides of Notion {#downsides-of-notion}

There were couple of downsides with my Notion setup.

1.  There was no offline support (at least at that time when I was using it). My notes were stored somewhere else and I needed internet to access it every time. This means, I couldn't use it at work.
2.  My notes were in a format that I couldn't control. If I didn't like Notion some time in the future, I couldn't just export it to a different note taking app. I should either wait for the other app to add support to import Notion docs into it or export each and every note I had to markdown and then find a way to deal with it.

There were other downsides to Notion depending on the usage, but these were the ones I was affected by the most. I wanted a note taking system that would stand the test of time, something that was preferably open source, one where I had control of my notes, offline supported, customizable.

As I was searching for alternatives, I saw several HackerNews posts about note-taking, I kept seeing emacs (and specifically org-mode) pop up everywhere and every single person had only postive things to say about it.


## My first introduction to Emacs (spacemacs) {#my-first-introduction-to-emacs--spacemacs}

A couple of years ago I was talking to a coworker of mine about vim and he said he uses emacs. Until then, nobody I met talked about emacs. With all the HN posts I read before, I was curious to try it and asked him where do I start. He said, use [spacemacs](https://www.spacemacs.org). So, I did.

I liked some parts of spacemacs, especially [org-mode](https://orgmode.org). I got pretty excited and I started using it as my daily driver, but after using it for a couple of weeks I gave up. I found spacemacs to be very clunky and slow. I didn't like the UI very much, and frankly, I didn't know how customizable emacs was at the time. Spacemacs had something called layers that I could enable. Elisp was so foreign to me that I didn't bother customizing anything because I had to learn a new language just to customize what I use and the amount of parenthesis threw me off.


## Doom Emacs {#doom-emacs}

About a year ago, I heard about [Doom Emacs](https://github.com/hlissner/doom-emacs), I think in one of the emacs subreddits. I was intrigued again and I installed it. This time I was immediately hooked. The UI was better, the application was faster, configuration was easier, what I got out of the box with Doom Emacs was perfect for me. Everything felt intuitive and I started using it more and more. I developed my own workflows to organize my tasks, take meeting notes and journal.

I liked the fact that I was able to easily toggle things on and off in the config, and I didn't really need to know Elisp to make any changes mainly because I got everything I needed out of the box anyway. I was using Android at the time and [Orgzly](http://www.orgzly.com) was a good app for managing orgmode files as well.

I was happy with the setup I had and like I mentioned before, I used it mainly for taking notes, organizing my tasks and journaling. Very minimal configuration and package setup. I honestly didn't really understand how everything fit together, how packages worked, how things can be customized by setting variables, or anything. But it worked for me, for the most part and I went with it.


## My Custom Configuration {#my-custom-configuration}

I've been following [System Crafters youtube channel](https://www.youtube.com/channel/UCAiiOTio8Yu69c3XnR7nQBQ) for a few months and I wanted to check out the [Emacs from Scratch series](https://www.youtube.com/watch?v=74zOY-vgkyw&list=PLEoMzSkcN8oPH1au7H6B7bBJ4ZO7BXjSZ). For the longest time, I used to think building an emacs config from scratch is a complete waste of time when we already have something like Doom Emacs which gives us most of the things we need.

But I was wrong. About 3 weeks ago, I decided to give it a shot, followed the series and started building my own config. The amount of learning I had in the last 3 weeks is far greater than what I've learned ever since I started using Emacs. I learned so much about Emacs that I have a deep appreciation for it now. In 3 weeks I came up with a config that is a 1000+ lines long. Every day I tweak my config and make something better. I keep looking forward to using Emacs all the time.

The fact that I could literally look at what a specific keybinding does, which function gets invoked when I hit the keybinding, what the implemntation of that function is and basically change it to do what I want was so mind-boggling to me. I felt a sense of freedom where I could change Emacs to literally do whatever I want and behave exactly the way I want it. No other editor even comes close to this level of customizability and that's what excited me.

Every customization I was doing involved Elisp in some capacity that each such change was a new learning opportunity for me. So, with each change, my Emacs got better _and_ I learned Elisp, which is like a win-win. As soon as I started this journey, so many doors opened up for me and I found opportunities to use Emacs for something more than just journaling and taking notes.

I now use it as a file manager, terminal, taking notes, organizing my life, journaling, git client, a fully functional IDE with code completions and such, manage my work calendar, quick file edits, viewing and querying json files and blogging. This very post was written in Emacs and published using [ox-hugo](https://ox-hugo.scripter.co) - a package used for exporting org files to markdown files that Hugo understands.


## Obligatory XKCD comic about emacs {#obligatory-xkcd-comic-about-emacs}

Now that I've said all this about emacs, I _have_ to use the obligatory xkcd comic about emacs:

{{< figure src="/images/xkcd_emacs.png" link="/images/xkcd_emacs.png" >}}


## Conclusion {#conclusion}

If you have never tried Emacs before, I highly recommend you try it. It has a steep learning curve, but it's totally worth it. The more you learn about it, the more appreciation you'd have. If you're an absolute beginner, Doom Emacs is a great place to start. However, once you have familiarized yourself with Emacs via Doom Emacs, I encourage you to build your own config. This would ensure you'll know exactly what's going on in your config and it's compeltely in your control. Your emacs will be truly personalized to your liking.
