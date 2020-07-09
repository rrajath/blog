---
title: "My Hugo Setup Part 3"
date: 2020-07-08T21:03:07-07:00
series: ["hugo-setup"]
tags:
- hugo
- 100DaysToOffload
---
This is the third installment of my Hugo Setup. In this post I explain how I added support for "series" in my blog and also provide links that can be used for further explorations.

Also, this post is part of a "series" and explains about how to setup "series". This is so meta!

## What is Series?

Sometimes, we have a bunch of blog posts that are related and maybe continuous. Breaking down one big topic into multiple blog posts is the best way to explain the topic. This is where Series adds value. Series also helps keep track of where one is in the list of posts and can easily navigate to posts before or after the current post. This post has nothing to do with writing something differently, but rather presenting mutliple related posts in a more intuitive way.

## How is it different from adding tags?

Tags are useful for categorizing similar topics. For example, there may be bunch of posts under the tag "productivity", but they may all be stand-alone posts that can be read in any order. Whereas, having posts that need continuity will need something a little more sophisticated than tags.

## Implementation

I was deciding to implement this in my templates, but before doing that I searched around for easy, already existing implementations, and I did find some help in the Hugo community. I came across a [Hugo forum post](https://discourse.gohugo.io/t/creating-post-series/1115) where a user had a similar ask. The [link in the answer](https://npf.io/2014/08/making-it-a-series/) had everything I needed to add the "series" support for my blog.

Hugo supports Taxonomies where you can configure [custom taxonomies](https://gohugo.io/content-management/taxonomies/#configuring-taxonomies) and can be used everywhere on your blog. The first step is to add the `series` taxonomy in your `config.toml` file

### Step 1

**config.toml**

```
[taxonomies]
	tag = "tags"
	series = "series"
```

If you have a `yaml` file, change the syntax accordingly.

### Step 2

Create a partial called `series_links.html` at `/layouts/partials/series_links.html`

This will contain the code that is responsible for displaying links to other posts in the series.

**/layouts/partials/series\_links.html**

```
{{ if .Params.series }}
    {{ $name := index .Params.series 0 }}
    <hr/>
    Other posts in this series:</p>

    {{ $name := $name | urlize }}
    {{ $series := index .Site.Taxonomies.series $name }}
    <ul class="series">
    {{ range $series.Pages }}
        <li>{{ .Date.Format "Jan 02, 2006" }} -
        <a href="{{.Permalink}}">{{ .LinkTitle }}</a></li>
    {{ end }}
    </ul>
{{ end }}
```

I got the above code from: [https://npf.io/2014/08/making-it-a-series/](https://npf.io/2014/08/making-it-a-series/)

The explanation of what this means is explained better there, so I'm not going to reiterate the same thing here. 

### Step 3

Go to your `single.html` which is the template that renders each of your blog posts.  
Replace `{{ .Content }}` with the code below

**/layouts/\_default/single.html**

```html
<div class="markdown">
			{{ if .Params.series }}
  				{{ $name := index .Params.series 0 }}
  				<p class="series_top_page" style="font-weight:50; background-color:#333"><i>This post is part of the <a href="{{.Site.BaseURL}}/series/{{$name | urlize}}">{{$name}}</a> series.</i></p>
			{{ end }}
			{{ .Content }}
			{{ partial "series_links.html" . }}
</div>
```

What this does is, before your main content it displays a banner stating that the post is part of a series (this banner doesn't appear otherwise). This tells the reader right of the bat that there are more related posts they can check out and read. You can look at the banner at the top of this post to see what it looks like. All of this is done by the code that comes before the `{{ .Content }}`

The code that comes after content, i.e. `{{ partial "series_links.html" . }}` simply calls the `series_links.html` partial we created in step 2 and injects it here, right after your post's main content.

### Step 4

Now for the final step, you'll have to add front matter to your posts - the ones you want to make part of the series. That will look something like this:

```html
---
title: "My Hugo Setup"
...
series: ["hugo-setup"]
tags:
- tag1
- tag2
---
```

## Other Explorations

- I found [an implementation](http://www.joesacher.com/blog/2017/08/03/implementing-series-in-hugo/) which added [fancier links to posts in series](http://www.joesacher.com/blog/2017/08/27/converting-series-to-taxonomy/), like keeping track of how many posts are in the series, adding next and previous links, etc. I had some trouble with that and I didn't have the patience to debug and set it up. This piece of code got the job done for me. But feel free to explore that and tweak it to your needs.
- I also stumbled upon [another implementation](https://www.notion.so/My-Hugo-Setup-Part-3-04f1eeac0db4403a8cdfdc37b6714db9) which did something similar. It's worth checking that out.
