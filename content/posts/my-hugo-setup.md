---
title: "My Hugo Setup"
date: 2020-06-29T22:32:42-07:00
series: ["hugo-setup"]
tags: [hugo, 100DaysToOffload]
---
I recently moved my blog to Hugo and [wrote a brief post about it](https://rrajath.com/posts/moving-to-hugo/). This post explains how I selected a theme and how I made the modifications I needed.

I needed a minimal theme for my blog and after searching a bit, I found [ezhil](https://themes.gohugo.io/ezhil/). This checked most of my boxes:

- looks simple and minimal
- configurable
- feather icons for my socials
- light/dark theme switch (nice to have)

I tried it out on my blog and it looked good. The nice thing about the light/dark theme switch is that when set to "auto" it depends on the device's light or dark theme. For example, if the phone uses dark mode, the blog also uses dark mode.

## Custom changes to my theme

Although I liked the theme and it fit most of my needs, I had to make some changes to get tailored to my taste.

### Post links and summaries on home page

The recent posts section (on the home page) was of the format:

```
<post_title> -- <summary>
```

This felt a little cluttered for two reasons:

1. Both the title and the summary were on the same line next to each other
2. Title and summary were of the same font size

I wanted the title to be a little bigger and have its own line, so I made the following changes to [themes/ezhil/layouts/index.html](https://github.com/rrajath/blog/blob/master/themes/ezhil/layouts/index.html#L20-L29):

```html
<a class="title u-url" href="{{ .RelPermalink }}"><font size="+2">{{.Title}}</font></a>
		<div>
		    <span class="description">
		        {{ if isset .Params "description" }}
            {{ .Description }}
            {{ else }}
            {{ .Summary }}&hellip;
            {{ end }}
        </span>
    </div>
```

Basically, add `<font size="+2">` and put the `<span>` inside a `<div>`

### Added reading time

I remember Jekyll didn't have a straight-forward way to add reading time to posts. Hugo gives this out of the box. I like having it for blog posts just to set the expectation of how long it takes to read the blog post before you dive into it. It can be vaguely estimated by just eye-balling or scrolling. But it's nice to have reading time displayed at the top of the post.

In [themes/ezhil/layouts/_default/single.html](https://github.com/rrajath/blog/blob/master/themes/ezhil/layouts/_default/single.html#L11):

```
| {{ .ReadingTime }} min read
```

Added the above text next to the publish date. I also added permalink to the publish date.

### Added a page for Micro Posts

Blog posts are more formal and kinda long-form content which has a specific theme or intent behind them. I wanted to have a separate page for short thoughts (one or few lines) that don't warrant for a full blog post. This can include things like sharing an image, a link, or just some quick thoughts. So, I added a page called [Micro](https://rrajath.com/micro/) and created my own template that is based off of  the standard list page, but a little different.

Take a look at [/themes/ezhil/layouts/micro/list.html](https://github.com/rrajath/blog/blob/master/themes/ezhil/layouts/micro/list.html) to understand the customization.

- I've removed the heading of the post for since I want this to be like a twitter feed.
- Added a Permalink that takes you to the post page, in case one needs to link to the exact micro post.
- Added horizontal lines to separate out each micro post

### Added a Now page

This page captures what I'm doing right now. This includes a variety of tasks/activities/projects that I'm doing at the moment to give a sense of what I'm up to. This is [inspired by Derek Sivers](https://sivers.org/nowff). The [Now page](https://rrajath.com/now/) layout is similar to the blog post page, [except few changes](https://github.com/rrajath/blog/blob/master/themes/ezhil/layouts/now/single.html).
