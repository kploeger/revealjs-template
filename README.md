# Reveal.js Template


## Usage

- clone
- `./install.sh`
- `npm run dev` or use the preconfigured vscode task

A browser window will automatically open.

### Config and Handlebars

Inside `slides.config.js`, you can define variables to use your Handlebars template, for example:

```
module.exports = {
	title: 'Reveal.js Template'
}
```
and then you can use `{{ title }}` in handlebars.

## Slides via File Structure  

When it comes to content, `index.html` is built automatically. You create files inside the `slides` folder, which are loaded in alphabetical order.

Here is an example file structure for `slides/`

```
./slides
├── 1.html
├── 2.md
├── 3.md
└── base
    ├── bulleted-lists.md
    ├── ordered-lists.md
    ├── tables-as-html.html
    └── tables.md
```

The easiest way to manage order of your slides is to **prepend the filenames with numbers**, for example:

```
├── 1-title.html
├── 20.md
├── 30-point-of-view.md
├── 40-markdown-support.html
```

Tip: consider numbering your slides, e.g. 10, 20, 30… so you can insert and move content easily.

## Slide Types: HTML vs Markdown

- **HTML Slides** must have `<section>` as root element.
- **Markdown Slides** have the `.md` extension.

### Speaker Notes

This template supports the same syntax for notes as in reveal js. When running in development mode, press `s` key on your keyboard to open up the [speaker mode](https://github.com/hakimel/reveal.js#speaker-notes).

In HTML, include an `<aside>` element at the end of your `<section>`

```
<aside class="notes">
  <ul>
    <li>Note one</li>
    <li>Note two</li>
    <li>Note three</li>
  </ul>
</aside>
```

Or in Markdown, everything after `Note:` is processed as a speaker note

```
Note:
This is a note
  - with a list
  - another list item
```

For further examples of how to use this, please review my [WorkerConf slides &rarr;](https://github.com/julie-ng/newtonjs-talk-slides)

## Todo

- Examples:
  - animations
  - moving code elements
- Video playback
- Manim
- Automatic publication to GitHub Pages

## Credits

- [Hakim El Hattab](https://github.com/hakimel) created the original [reveal.js](https://github.com/hakimel/reveal.js)
- [Julie Ng](https://julie.io/) originally created [this template](https://github.com/julie-ng/tidy-revealjs)
- I updated it to reveal.js v4.
