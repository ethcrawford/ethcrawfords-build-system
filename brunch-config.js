exports.config = {
  files: {
    javascripts: {joinTo: 'app.js'},
    stylesheets: {joinTo: 'app.css'}
  },
  npm: {enabled: false},
  modules: {wrapper: false, definition: false},
  sourceMaps: false
}
