---
title: "How to contribute to a project on Github"
layout: post
date: 2020-01-14 08:54
tag:
  - development
star: false
category: blog
author: cfgnunes
description: A step-by-step tutorial going through how to easily submit a patch to a github project.
---

I assume you already have an account on [github](https://github.com/).
Let's say you want to contribute to the project [latex-cefetmg](https://github.com/cfgnunes/latex-cefetmg).

## Step 1: Make your working copy

Make your working copy of the project by forking it: go on the project page (<https://github.com/cfgnunes/latex-cefetmg>) and click in the "Fork" button.

After forking the repository, clone your fork git repository on your local computer.

```sh
git clone git@github.com:YOUR_USERNAME/latex-cefetmg.git
```

## Step 2: Do some work

Create a new branch for your patch:

```sh
git branch my-patch
git checkout my-patch
```

This is very important, create one branch per patch.

Make your patch, change the code, fix a bug, add a cool feature, etc. When you are done, commit your changes:

```sh
git add -u
git commit -m "Fixing some broken feature"
```

Push your new branch to github:

```sh
git push origin my-patch
```

## Step 3: Create the "Pull Request"

Go on your fork page `https://github.com/YOUR_USERNAME/latex-cefetmg`, then select "my-patch" in the branch list and click in "Pull Request".

Check the diff, write a message explaining what you have done and why the repository owner should accept your pull request and submit.
