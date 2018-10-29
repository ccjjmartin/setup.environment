# GitBook

[GitHub Flavored Markdown](https://guides.github.com/features/mastering-markdown/ "GitHub Flavored Markdown").

[Using GitBook | GitBook Toolchain Documentation](https://toolchain.gitbook.com/ "GitBook Toolchain Documentation")

### Editing within GitBook
Editing current pages can be done using MarkDown via GitHub or Git by submitting Pull Requests.

![Contribution Edit Link](../../images/contribution-edit-link.png "Contribution Edit Link")

### Copy-Edit Guidelines

The Drupal Documentation Team recently published the Drupal 8 User's Guide and the associated writing / editing documentation used.

See the definitions of Writer and Editor in the GLOSSARY.md.

#### Example Pages

- [Drupal 8 User Guide - 2.1. Concept: Regions in a Theme](https://www.drupal.org/docs/user_guide/en/block-regions.html "Drupal 8 User Guide - 2.5. Planning your Content Structure")
- [Drupal 8 User Guide - 2.5. Planning your Content Structure](https://www.drupal.org/docs/user_guide/en/planning-structure.html "Drupal 8 User Guide - 2.5. Planning your Content Structure")

**Note** - GitHub Flavored Markdown can easily be used instead of ASCII-DOC (as used by the Drupal Documentation Team).

The Style Guide created for the Drupal 8 User's Guide was loosely based on the *Drupal.org* Style Guide, available at https://www.drupal.org/drupalorg/style-guide/content.

### Including 'New' Pages

When adding new pages to the 'Book', they need to be updated in the [SUMMARY.md](SUMMARY.md "SUMMARY.md")
 file in order to be recognized by GitBook.

### Creating Links
```
[https://www.drupal.org/community](https://www.drupal.org/community "Title Text")
```

### Adding Images
```
![Druplicon](../images/druplicon-small.png "Druplicon")
```

If the images are in a directory, add the directory:

At times, the image may fail to load, even if deployed properly. It takes 'playing' a little to get it perfect.

```
![Druplicon](../images/random-directory/druplicon-small.png "Druplicon")
```

Be Accessible. Remember the Alt-Text!

### YouTube Plugin

Adding videos requires *also* updating the `book.json` file with the YouTube Plugin.

### How to use it?

Add the below to your `book.json` file, then run `gitbook install` :

```json
{
    "plugins": ["youtube"]
}

```markdown
take a look at this video:

{% youtube %}https://www.youtube.com/watch?v=oHg5SJYRHA0{% endyoutube %}
```

The video will be replaced by the embed iframe in the website, and by a link in the ebook version.

### Other Plugins

A generic list of other plugins can be found at https://github.com/GitbookIO?utf8=%E2%9C%93&q=plugin-&type=&language=

These include:
- plugin-github - to display a GitHub link in your GitBook
- plugin-search - to search the content of your GitBook (for visitors)
- plugin-hints - provides four unique 'hint' blocks for placement throughout your GitBook (similar to a professional-grade book). Info, Danger, Tip, and Working
- plugin-gist - embed a GitHub Gist in your GitBook
- plugin-infinitescroll - infinite scrolling in your GitBook