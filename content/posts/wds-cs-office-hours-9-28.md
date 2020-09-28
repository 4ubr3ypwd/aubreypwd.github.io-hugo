---
title: WebDevStudios Coding Standards: Office Hours 9/28/2020
date: 2020-09-28
---

## TLDR

- JavaScrip Coding Standards [1.2.0](https://github.com/WebDevStudios/js-coding-standards/releases/tag/1.2.0) was [released](https://www.npmjs.com/package/@webdevstudios/js-coding-standards) with [Prettier](http://prettier.io/) support!

## Notes

To catch everyone up, our initiative to publish `wd_s` soon raised the priority of getting coding standards caught up, specifically around:

- Prettier Integration
- Support for `@wordpress/scripts`
- Husky Integration

See [WebDevStudios/wd_s/issues/548](https://github.com/WebDevStudios/wd_s/issues/548) for more information.

Last Friday I worked on Prettier integration with JS Coding Standards...

---

- Published the new [WebDeStudios Prettier Shared Configurations](https://www.npmjs.com/package/@webdevstudios/prettier-config-js-coding-standards)
- [Installed the new package on `@webdevstudips/js-coding-standards`](https://github.com/WebDevStudios/js-coding-standards/pull/12/files) for the next RELEASE
- Gave this a quick test on the [example project](https://github.com/WebDevStudios/coding-standards-example-project), and it worked!
- Considered using `^` ranges for sub-packages of `js-coding-standards`, but came up with [why we shouldn't do that](https://github.com/WebDevStudios/js-coding-standards/wiki/Understanding-Dependency-Hierarchy#use--ranges)
- Release `1.2.0` of `js-coding-standards` with prettier support on npmjs.org
