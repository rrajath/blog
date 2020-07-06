---
title: "My Hugo Setup Part 2"
date: 2020-07-05T22:16:04-07:00
tags:
- hugo
- 100DaysToOffload
---
In my [previous post](https://rrajath.com/posts/my-hugo-setup/), I explained all the visual tweaks I did to my Hugo blog theme so that I could get the pages I wanted in the format I liked the most. This post explains the publish part of it because I faced some issues doing that.

I was used to Jekyll's way of doing things where it's just one repository on GitHub and all I had to do was `git push` and the blog would show up after about a minute. This means the repository contained both source and generated files. However, Hugo does things a little differently and I actually like it. There are several ways to deploy your Hugo website - using GitHub pages, GitLab, Netlify, etc. I chose GitHub pages since that's what I'm most familiar with.

If you are going with GitHub's User or Organization Pages, [Hugo's recommendation](https://gohugo.io/hosting-and-deployment/hosting-on-github/#github-user-or-organization-pages) is to split the source and generated files into two different repositories. The repository that the generated files go to will be the front for the website. Let me explain what I did in a little more detail.

Step 1: Create a GitHub repository. I called mine "blog"

Step 2: Create another GitHub repository called <username>.github.io. Mine is rrajath.github.io

Step 3: Do a `git clone` of the "blog" repository you created on GitHub.

Step 4: Copy over your Hugo website on your local to the "blog" directory that you just cloned.

Step 5: Add a submodule using the command: `git submodule add -b master https://github.com/username/username.github.io public`. This creates a git submodule that points to the `public` directory in your Hugo website.

Step 5 is where I encountered the issue. The idea is to point the `public` in your "blog" directory to a remote on GitHub by making it a submodule. The folder `public` contains all the generated files. Once you create a post and run `hugo server` to generate all the files, you have to do a `git push` on both the "blog" directory and the "public" directory (which is a submodule pointing to `username.github.io` repo on GitHub). And having the `public` directory as part of the `.gitignore` will exclude it from pushing its contents to the "blog" directory which is supposed to only contain the source files.

However, this was not happening. I tried reconfiguring the submodules, changing my .gitignore file and doing several other things, but what was generated by Hugo in the `public` directory never got pushed to the remote repo; which means, my site never got updated even though I was updated the source files and things were working fine when I ran it on `localhost`.

The way I solved this is by cloning the `username.github.io` repo to *outside* the "blog" directory. Then changing the script `deploy.sh` mentioned [in the documentation](https://gohugo.io/hosting-and-deployment/hosting-on-github/#github-user-or-organization-pages) to copy all the files from `public` directory into the cloned directory, then committing and pushing the changes. The `public` directory now doesn't point to anything in the remote. Though this is slightly round about, it does the job and fixed my issue. It's also a one time setup and I don't have to touch it again.

All I do when I create a new post is, do a `git add` and a `git commit`. Then run `deploy.sh` to copy the generated files to the right repository (`username.github.io`) and then do a `git push` on the "blog" directory to push the source files.