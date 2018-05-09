exports.config = {
  files: {
    javascripts: {joinTo: 'app.js'},
    stylesheets: {joinTo: 'app.css'}
  },
  modules: {wrapper: false, definition: false},
  npm: {enabled: false},
  plugins: {
    htmlPages: {
      compileAssets: true,
      disabled: false
    },
    pug: {
      pugRuntime: false
    }
  },
  sourceMaps: false
}
