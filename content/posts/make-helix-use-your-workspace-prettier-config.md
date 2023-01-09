+++
title = "Make Helix use your workspace prettier config"
author = ["Rajath Ramakrishna"]
date = 2023-01-09T13:25:00-08:00
publishDate = 2023-01-09T00:00:00-08:00
lastmod = 2023-01-09T13:25:14-08:00
draft = false
+++

I've been [trying out Helix Editor](https://rrajath.com/posts/exploring-helix-editor/) recently and loving it. I wanted to see if it could be my primary IDE and one thing I wish it did was format the file on save. By this, I don’t just mean fixing indentation, but also applying eslint fixes and running prettier. And I wanted this formatting to be applied based on the rules defined for that package. For example, I was in a nodejs workspace with typescript files and a prettier config that had rules like `singleQuote`, `trailingComma`, etc.

I tried a few prettier configs on the web for Helix and [none of them worked](https://github.com/helix-editor/helix/wiki/External-binary-formatter-configuration#prettier). This post is to document what _did_ work so that the next time I run into the same situation I don't start from scratch and end up trying a bunch of things to no avail.

So, here's what worked. I found this [line of code as a comment on one of the GitHub issues](https://github.com/helix-editor/helix/discussions/3198#discussioncomment-3324876):

```javascript
formatter = { command = "npx", args = ["prettier", "--parser", "typescript"] }
```

This fixed the prettier issue for me and now any double quotes in the file are converted to single quotes. Any semi-colons that were missed at the end of statements get automatically added, just like how it’s configured in the prettier config for the project.
