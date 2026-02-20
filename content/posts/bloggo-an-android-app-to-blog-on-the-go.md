+++
title = "Bloggo: an android app to blog on the go"
author = ["Rajath Ramakrishna"]
lastmod = 2026-02-20T00:02:46-08:00
draft = true
+++

This website ([rrajath.com](https://rrajath.com)) is built using a static site generator ([Hugo](https://gohugo.io)). I specifically like static site generators for the control, simplicity and the lack of need for deploying on a host and maintaining it. I can write blog posts in markdown format and push it to a github repo and they get built and deployed either via GitHub Pages, Cloudflare Pages, Netlify or other similar solutions. For free!

I like the fact that the posts are in GitHub because of a couple of reasons:

1.  It aligns with my other workflows of committing code to GitHub. Writing, committing and pushing are second nature to me and my muscle memory helps me do it really fast. Since most of the time I'm either in emacs or terminal, this workflow is very seamless.
2.  The entire website including the HTML partials, JS, CSS, etc. are out in the open to see for anybody.
3.  Any posts or pages I change go through commits and they have a commit history. I (or anyone) can go back and see the previous versions of those pages.

This very setup became a kind of friction for me because whenever I had to post something, I had to be on my laptop to commit the changes and push to GitHub. This was not always feasible because I would not be near my personal laptop most of the time. I did play around with writing posts in my notes app on my phone (Orgzly) and later transferring them to the GitHub repo (via ox-hugo on emacs). But that workflow was a little clunky as well. It was the closest I came to having a seamless workflow.

What I really needed was an app on my phone that I could write blog posts in, preview the markdown files and push to GitHub - all from my phone. This was not available and I ended up vibecoding one a couple of weeks ago. It's simple and does the job well. It's exactly what I need; nothing more, nothing less. The app basically needs a GitHub Personal Access Token in order to be able to push files to the repo. It also needs the name of the repo, the name of the branch and the folder where the files get pushed. You can also configure the frontmatter that gets added to every post so that you don't have to add them manually. That's pretty much it.


## Screenshots {#screenshots}

Here are some screenshots:
&lt;main page screenshot&gt;
&lt;blog post page screenshot&gt;
&lt;blog post preview screenshot&gt;


## How the app works {#how-the-app-works}

The main page shows all the posts that are in the remote and published. There are two sections - one for published posts and one for unpublished. The unpublished posts are the ones that are started on the phone and are in draft mode. The blog post page shows a simple text editor to write down content. The preview button at the top switches between editor mode and markdown preview mode to show how the post looks. Hitting back button on the blog post page would auto-save the file.

The title of the post updates the frontmatter accordingly (by setting the value for the `title` attribute). And the filename gets generated from the title of the post with appropriate changes to make the slug short and not have any special or repeated characters. The Publish to GitHub button does literally that. It pushes the file to GitHub.

The app is extensible-ish since all it cares about is where to push the files. So, it doesn't really matter if you're using Hugo as your static site generator. You can use Jekyll, Zola or any other SSG.


## My Workflow {#my-workflow}

Now, my workflow has changed. I write my blog posts directly in this app. And I may take multiple sittings to write a blog post. I can always preview what I wrote to see if the formatting looks good. Once I'm ready, I just hit a button and the blog gets published. I've written a lot more blog posts this year because of this improvement. I love the fact that the lack of friction is really making me write more.


## Next Steps {#next-steps}

The app does pretty much what I need. Although, I may add a few features like:

-   making it easier to add links: for example, selecting a text should give me a popup and I should be able to add a link there instead of having to go through the Android keyboard to find characters like `[`, `]`, `(`, `)`  to format a link in markdown.
-   add pages: like the about page, now page or any other pages, instead of restricting the app to just blog posts.
