+++
title = "Moving from GitHub Pages to Cloudflare Pages"
author = ["Rajath Ramakrishna"]
date = 2026-01-28T08:06:41-08:00
draft = false
+++

I've been using Hugo since 2020 and as part of the setup, according to the docs, I had to create two repositories. One which I called [blog](https://github.com/rrajath/blog/) for the `.md` files, and another called [rrajath.github.io](https://github.com/rrajath/rrajath.github.io) for the generated HTML files. This led me to a workflow where I write a blog post, commit the file and push it to the `blog` repo. I then run a script that executes the `hugo` command generate HTML files. This script also copied the output to the `rrajath.github.io` directory, committed those changes and then pushed them to the remote.

I didn't think much back then because I had a script which did all the work. But lately I wanted to find a way to create or update posts from my phone and while investigating ways to do that, I wondered if I could create a GitHub Actions that does this for me. After which I wondered why I even need two repos. I explored alternatives and found [Cloudflare Pages](https://pages.cloudflare.com/) to be a great choice because of two reasons:

1.  I only need one repo and the build command in Cloudflare pages could be configured to run the `hugo` command to generate the HTML files as well as run the `pagefind` index command for updating the search index.
2.  I can create a new blog post, send it as a PR, and view it as a draft before publishing the post.

All of this needed just one repo and I really didn't have to deal with GitHub pages, two repositories, scripts, etc. This really streamlined my blogging workflow and simplified a lot of things.
