module.exports = {
  // This will lint and format TypeScript and                                             //JavaScript files
  '**/*.(ts|tsx|js)': (filenames) => [`yarn lint`, `yarn prettier:fix`],

  // this will Format MarkDown and JSON
  '**/*.(md|json)': (filenames) => `yarn prettier:fix`
}
