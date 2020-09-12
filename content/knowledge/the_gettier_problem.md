+++
title = "The Gettier Problem"
author = ["Rajath Ramakrishna"]
lastmod = 2020-09-09T10:34:21-07:00
draft = false
+++

tags
: [Learning]({{< relref "learning" >}}), [Sotware Development]({{< relref "sotware_development" >}})

source
: [Gettiers](https://jsomers.net/blog/gettiers)


## The Gettier Problem {#the-gettier-problem}

To know something is to have a **justified true belief** about it:

-   ****justified****, in the sense of deriving from evidence
-   ****true****, because it doesn’t make sense to “know” a falsehoood
-   ****belief****, i.e., a proposition in your head


### A Gettier Case {#a-gettier-case}

Let's assume you're standing in a field and you see a cow at a distance. But what you're looking at isn't a cow, but a model of it made of paper. But there's a cow standing behind it. You're right when you say you're seeing a cow at a distance, but it's not exactly what you're seeing.

On the one hand, you have a justified true belief that “there is a cow in the field”:

1.  You believe there’s a cow in the field
2.  That belief didn’t come from nowhere, but is justified by your seeing something that looks exactly like a cow
3.  And there is, in fact, a cow in the field.
    Still, we wouldn’t want to say that you know there’s a cow in the field, because in a sense you got lucky: by a strange coincidence, there happened to be a real cow there—a cow you knew nothing about.


### In Software Engineering {#in-software-engineering}

Let's assume you have a code that calls a service and it's not working as expected. You think there's a bug in your code and you spend a lot of time looking into the code you wrote. You finally find the bug and make a fix for it. But suppose the service you were calling was down at around the same time (coincidentally). It's a justified belief that your change did break it—making the belief true. But the break actually happened for a different reason.

Having a term for these tricky cases allows you, I think, to be ever-so-slightly more alert to them. You can be a better developer this way. As I’ve spent more time writing software, I’ve gotten better at sensing when my assumptions are probably wrong—when something gettieresque might be going on: have I forgotten to clear the cache? Am I working off the wrong branch? Am I even hitting this code path?
