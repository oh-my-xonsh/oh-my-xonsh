# Contributing Guidelines

We hope to make Oh-My-Xonsh a community-driven project. Contribution is welcome, encouraged, and appreciated. It is also essential for the advancement of the project.

First, please take a moment to review our [code of conduct](code_of_conduct.md).

## Reporting Issues

### You have a problem

Please be so kind as to first search for any open issue already covering your problem.

If you find one, comment on it so we can know there are more people experiencing it.

Then, you can go ahead and create an issue with as much detail as you can provide. It should include the data gathered as indicated above, along with:

1. How to reproduce the problem
2. What the correct behavior should be
3. What the actual behavior is

Please copy to anyone relevant (_eg_ plugin maintainers) by mentioning their GitHub handle (starting with `@`) in your message.

We will do our very best to help you.

### You have a suggestion

Please be so kind as to first search for any open issue already covering your suggestion.

If you find one, thumbs up or comment on it so we can know there are more people supporting it.

If not, you can go ahead and create an issue. Please copy to anyone relevant (_eg_ plugin maintainers) by mentioning their GitHub handle (starting with `@`) in your message.

## Submitting Pull Requests

### Getting started

You should be familiar with the basics of [contributing on GitHub](https://help.github.com/articles/using-pull-requests) and have a fork properly set up.

You MUST always create PRs with _a dedicated branch_ based on the latest upstream tree.

If you create your own PR, please make sure you do it right. Also be so kind as to reference any issue that would be solved in the PR description body, [for instance](https://help.github.com/articles/closing-issues-via-commit-messages/) _"Fixes #XXXX"_ for issue number XXXX.

### You have a solution

Please be so kind as to first search for any open issue already covering your [problem](#you-have-a-problem), and any pending/merged/rejected PR covering your solution.

If the solution is already reported, try it out and +1 the pull request if the solution works ok. On the other hand, if you think your solution is better, post it with a reference to the other one so we can have both solutions to compare.

If not, then go ahead and submit a PR. Please copy to anyone relevant (e.g. plugin maintainers) by mentioning their GitHub handle (starting with `@`) in your message.

### You have an addition

Please be so kind as to first search for any pending, merged or rejected Pull Requests covering or related to what you want to add.

If you find one, try it out and work with the author on a common solution.

If not, then go ahead and submit a PR. Please copy to anyone relevant (_eg_ plugin maintainers) by mentioning their GitHub handle (starting with `@`) in your message.

For any extensive change, _eg_ a new plugin, you will have to find testers to +1 your PR.

----

## Searching GitHub

GitHub offers [many search features](https://help.github.com/articles/searching-github/) to help you check whether a similar contribution to yours already exists. Please search before making any contribution, it avoids duplicates and eases maintenance.

If all fails, your thing has probably not been reported yet, so you can go ahead and [create an issue](#reporting-issues) or [submit a PR](#submitting-pull-requests).

---

## Style

### Commits and Issues

Try to keep the first commit line short. This is harder to do using this commit style but try to be concise and if you need more space, you can use the commit body. Try to make sure that the commit subject is clear and precise enough that users will know what change by just looking at the changelog.

### Markdown

Markdown files should favor soft line breaks over hard ones, and leverage word wrapping features within your chosen editor. This allows readers the most flexiblity and helps see what changed in diffs. The exception being when the markdown comes from another source, such as our [code_of_conduct.md].

### Plugins

Plugins should come with a `readme.md` file that follows the format of [the example one](custom/plugins/example/readme.md).

Plugins should be named with concisely, one or two words if possible, separated by underscores, not dashes. Xonsh is Python after all.

While Oh-My-Xonsh attempts to provide a "batteries included" approach, we also want to guard against plugin bloat and ensure a fast and not-too-controversial shell experience. This can sometimes prove to be more of an art than a science. It's important to justify the inclusion of new plugins within the Oh-My-Xonsh framework as opposed to making the plugin available simply via [Xontrib](https://xon.sh/xontribs.html).

Some guidelines for determining inclusion in Oh-My-Xonsh may include but are not limited to:
- Is this plugin small in scope, as well as [SLOC](https://en.wikipedia.org/wiki/Source_lines_of_code)?
- Is this plugin stable and unlikely to drastically change?
- Is this plugin easy to test and verify its features and functionality?
- Is this a widely usable plugin on a variety of platforms?
- Is the plugin able to be licensed under the MIT license with the rest of this project?
- Does this plugin have a committed maintainer?
- Does this plugin have wide appeal?
- Is this plugin non-controversial?
- Does this plugin mirror functionality already accepted into other similar shell frameworks like [Oh-My-Zsh](https://github.com/ohmyzsh/ohmyzsh)?
- If there is a similar plugin for other frameworks, does the Oh-My-Xonsh version adhere to the principle of least surprise and mimic the other plugins' features adequately?

Failing some of these tests may mean the plugin is better suited as a standard Xontrib plugin with its own repository.
