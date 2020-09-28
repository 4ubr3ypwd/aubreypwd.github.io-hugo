---
title: "WebDevStudios Coding Standards<br>Office Hours: 9/28/2020"
date: 2020-09-28
---

To catch everyone up, our initiative to publish `wd_s` soon raised the priority of getting coding standards caught up, specifically around:

- Prettier Integration
- Support for `@wordpress/scripts`
- Husky Integration

See [WebDevStudios/wd_s/issues/548](https://github.com/WebDevStudios/wd_s/issues/548) for more information.

## TLDR

- JavaScript Coding Standards [1.2.0](https://github.com/WebDevStudios/js-coding-standards/releases/tag/1.2.0) was [released](https://www.npmjs.com/package/@webdevstudios/js-coding-standards) with [Prettier](http://prettier.io/) support!
- Found that somehow getting prettier to work with PHP is going to be a bit complicated, since the plugin is _not_ a composer package

## Notes

### Integrating Prettier with JS

Last Friday I worked on Prettier integration with JS Coding Standards...

- Published the new [WebDeStudios Prettier Shared Configurations](https://www.npmjs.com/package/@webdevstudios/prettier-config-js-coding-standards)
- [Installed the new package on `@webdevstudips/js-coding-standards`](https://github.com/WebDevStudios/js-coding-standards/pull/12/files) for the next RELEASE
- Gave this a quick test on the [example project](https://github.com/WebDevStudios/coding-standards-example-project), and it worked!
- Considered using `^` ranges for sub-packages of `js-coding-standards`, but came up with [why we shouldn't do that](https://github.com/WebDevStudios/js-coding-standards/wiki/Understanding-Dependency-Hierarchy#use--ranges)
- Release [1.2.0 of js-coding-standards](https://www.npmjs.com/package/@webdevstudios/js-coding-standards) with prettier support on npmjs.org
- Released [1.0.1](https://github.com/WebDevStudios/prettier-config-js-coding-standards/releases/tag/1.0.1) (patch) of [WebDeStudios Prettier Shared Configurations](https://www.npmjs.com/package/@webdevstudios/prettier-config-js-coding-standards) that fixes issue where non-JS code was getting formatted with the config
- Updated [https://github.com/WebDevStudios/coding-standards-example-project](https://github.com/WebDevStudios/coding-standards-example-project) and the patch above came through automatically

### Integrating Prettier with PHP

Okay, now that I have JS out of the way, time to start doing the same with PHP...

- https://github.com/prettier/plugin-php is an NPM package, not a composer one, which makes this tricky as I don't want to give DEVs another package to install

---

As always, follow [#wdscodingstandards](https://twitter.com/hashtag/wdscodingstandards?src=hashtag_click&f=live) on Twitter to follow along!
