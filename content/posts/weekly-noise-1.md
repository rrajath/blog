---
categories:
- weekly-noise
date: "2013-11-09T00:00:00Z"
aliases: [/weekly-noise/weekly-noise-1]
tags:
- weekly
- noise
title: 'Weekly Noise #1 - Moving to GitHub Pages'
---

To set the context, Weekly Noise series is where I talk about what I accomplished during the week (like working on my personal projects among other things) and also set the goals for next week. So this will be a weekly iteration of my progress in the projects I work on.

So to start off with the Weekly Noise series, I would share an update on what happened in the last one month. Here's my story on hopping between different blogging platforms in the quest to find the right one (for me).

The story so far:

I wanted to have a very simple, minimalistic, no fluff kind of a blog to share my thoughts. Though I'm far from being a designer, a good theme is a must and I don't stop unless I find a good one. Given that I'm a little too lazy, I wanted something of very minimal effort; as little as writing a blog post in a text file and posting it on the web. So I tried the following:

### [Wordpress](http://www.wordpress.com)

Nope. Not my cup of tea. I started off with Wordpress and somehow I didn't really like the themes there. Moreover, it was a little too much for my needs. One of the main reasons for not choosing Wordpress is that there's no freedom when it comes to editing the existing theme and I wasn't really happy with that. It has an admin panel that's not very helpful in terms of version control.

### [Scriptogr.am](http://www.scriptogr.am)

I really liked this blogging for it offered Markdown editing and Dropbox sync which makes it a good choice for quick blogging. But the theme editor is not all that great and also, I didn't see much support for Scriptogr.am. They're not very active on Twitter, nor have they updated their own official blog for more than a year. And the link to their support page hasn't been working for the past one month or so. It turned me off and I had to switch to something else. It's probably still in its nascent stage of development, but I don't see much happening at their end (at least that's what it looks like).

### [Ghost](http://ghost.org)

When Ghost was launched to the public, no wonder there was so much buzz in the blogging and web hosting communities. It indeed lives up to its expectations and I believe it's a great blogging platform. It does what it says - nothing more, nothing less. But the catch is I need a VPS to host it for which I have to pay every month. And there's also the reliability and latency issues that come with every VPS. So I ditched Ghost in the hope of finding something that better suited my needs.

### Along came [GitHub Pages](http://pages.github.com)

I stumbled upon [this page](http://sirupsen.com/the-switch-to-github-pages/) which hinted me to take a peek at GitHub pages and I was impressed. I checked out [Jekyll](http://jekyllbootstrap.com) and it seemed perfect and exactly what I wanted. All I had to do was, fork the repo and push my posts to GitHub. As simple as that.

Posts can be created in markdown. A simple rake command generates the boilerplate stuff to get you started.

{{< highlight ruby >}}
rake post title='A new blog post'
{{< / highlight >}}

The above command is all that is needed to create a new post. It fills up the new file with headers which has some important information that looks something like this.

```
---
layout: post  
title: "Weekly Noise #1"  
description: "Moving to GitHub pages"  
category: "weekly-noise"  
tags: [weekly, noise]
---
<Write your blog post here>
```
Once you're done writing a post, you just have to add, commit and push

```
git add .
git commit
git push origin master
```

And Voila! You're done. :)

GitHub Pages is so simple and fast. It doesn't need a database, the so-called admin panel is just a YAML config file. And the best part is, the whole blog is in your control. *You* have the freedom to change anything and everything.

I spent the week customizing the blog and pushing my changes to the repo. There are still couple of changes that I should be doing. But most of the blog layout and plugins are in place. Here's the target for next week:

- Fix the Navbar at the top of the blog.
- Write a blog post about my theme setup.
