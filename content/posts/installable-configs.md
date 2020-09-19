---
title: "De-centralizing my system configurations."
date: 2020-09-18T12:28:58-06:00
---

Today I did some experimenting. You see my system is entirely customized to be super-efficient and automated. 

[![Screenshot of my current .config](/images/greenshot-2020-09-18-184905.png)](/images/greenshot-2020-09-18-184905.png)

As you can see I currently have these housed in a giant Git repository in my `~/.config/`. This has worked out just fine for a while, but I wanted to experiment with trying to de-centralize it with some kind of package management.

Today I focused on my `.gitconfig` and `.gitignore` files as an experiment with just my "dot-files", and this is what I've come up with:

First, I found out you can import another config file for git using:

```ini
[include]
    path = ~/.composer/vendor/aubreypwd/gitconfig/.gitconfig
```

...so this gave me an opporitunity to store this file somewhere else (on it's own) and require it in a way.

Also you could do the same with your `.gitignore` file, using:

```ini
[core]
    excludesfile = /Users/aubreypwd/.gitignore
```

---

So I wante do to figure out what package manager is going to best serve me here. After looking at a lot of them, e.g. npm, bpkg, composer, and a slew of others, I settled on spamming Composer. I know my "packages" are not PHP, but Composer doesn't care about that, plus of all the package managers it's the easiest to install with git repo support (try doing that with npm or other package managers out there), it manages them well in a reliable location, and on top of that with `composer-installers` I think I can do some really cool magic later on...

So I settled on Composer, hate me. 

So first I got my `.gitignore` and `.gitconfig` files into their own packages:

- [https://github.com/aubreypwd/.gitconfig](https://github.com/aubreypwd/.gitconfig)
- [https://github.com/aubreypwd/.gitignore](https://github.com/aubreypwd/.gitignore)

...that I could now easliy install to a reliable place, `~/.composer` and with our require-like snippets above in a `~/.gitconfig` file that now looks like:

```ini
[include]
    path = ~/.composer/vendor/aubreypwd/gitconfig/.gitconfig
[core]
    excludesfile = /.composer/vendor/aubreypwd/gitignore/.gitignore
```

...I can now both track my changes to these two dotfiles easily.

The last thing I did was created a main [`git` package](https://github.com/aubreypwd/git) I could install both of these easily. I plan, as I build out more git related config files and shell commands they will all be required at this package's level that way I can just keep it up to date.

---

I'm very curious how the rest of this experiment is going to go...
