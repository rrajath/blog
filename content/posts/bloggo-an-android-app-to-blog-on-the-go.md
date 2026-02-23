+++
title = "Bloggo: an android app to blog on the go"
author = ["Rajath Ramakrishna"]
lastmod = 2026-02-20T00:02:46-08:00
draft = true
+++

This website is built using a static site generator ([Hugo](https://gohugo.io)) and hosted on [Cloudflare Pages](https://pages.cloudflare.com). I specifically like static site generators for the control, simplicity and the lack of need to deploy and maintain it on a host. I can write blog posts in Markdown format and push it to a GitHub repo and they get built and deployed.

I like the fact that the posts are on GitHub because of a couple of reasons:

1.  It aligns with my other workflows of committing code to GitHub. Writing, committing and pushing are second nature to me and my muscle memory helps me do it really fast. Since most of the time I'm either in Emacs or the terminal, this workflow is seamless.
2.  The entire website including the HTML partials, JS, CSS, etc. are out in the open to see for anybody.
3.  Any posts or pages I change go through commits and they have a commit history. I (or anyone) can go back and see the previous versions of those pages.

This very setup became a source of friction for me. Whenever I had to post something, I had to be on my laptop to commit the changes and push to GitHub. This was not always feasible because I often wasn't near my personal laptop. I did play around with writing posts in my notes app on my phone (Orgzly) and later transferring them to the GitHub repo (via ox-hugo on Emacs), but that workflow was a little clunky as well. It was the closest I came to having a seamless workflow.

What I really needed was an app in which I could write blog posts, preview the markdown files and push to GitHub - all from my phone. To solve this, I ~built~ vibe-coded an Android app called [Bloggo](https://github.com/rrajath/hugowriter) that lets me blog from my phone. It's simple and does the job well. It's exactly what I need; nothing more, nothing less. The app needs a GitHub Personal Access Token in order to be able to push files to the repo. It also needs the name of the repo, the name of the branch, and the folder where the files get pushed. You can also configure the frontmatter that gets added to every post so that you don't have to add them manually. That's pretty much it.


## Screenshots {#screenshots}

Here are some screenshots:
<main page screenshot>
Main page showing published and draft posts 
<blog post page screenshot>
Blog post page showing the front matter and the blog content
<blog post preview screenshot>
Blog preview page showing the Markdown preview 
<settings page screenshot>
Settings page with fields for GitHub PAT, repo name, branch name, etc. 


## How the app works {#how-the-app-works}

The main page shows all the posts that are in the remote repo and published. There are two sections - one for published posts and one for unpublished. The unpublished posts are the ones that are started on the phone and are in draft mode. The blog post page shows a simple text editor to write down content. The preview button at the top switches between editor mode and markdown preview mode to show how the post looks. Hitting back button on the blog post page auto-saves the file.

The title of the post updates the frontmatter accordingly (by setting the value for the `title` attribute). And the filename gets generated from the title of the post with appropriate changes to make the slug short and not have any special or repeated characters. The Publish to GitHub button commits and pushes the post to the configured repo and branch.

The app is loosely extensible since all it cares about is where to push the files. So, it doesn't really matter if you're using Hugo as your static site generator. You can use Jekyll, Zola or any other SSG.


## My Workflow {#my-workflow}

Now, my workflow has changed. I write my blog posts directly in this app. I can always preview what I wrote to see if the formatting looks good. Once I'm ready, I just hit a button and the blog gets published. I've written a lot more blog posts this year because of this improvement.


## Next Steps {#next-steps}

The app does pretty much what I need. Although, I may add a few features like:

-   making it easier to add links: for example, selecting a text should give me a popup and I should be able to add a link there instead of having to go through the Android keyboard to find characters like `[`, `]`, `(`, `)`  to format a link in Markdown.
-   add pages: like the about page, now page or any other pages, instead of restricting the app to just blog posts.

## What's with the name, by the way?

A couple of reasons:
1. It's a contraction of Blog on the Go
2. It's kind of a play on words on Hugo, which is the static site generator I use. Like, Blog and Hugo
