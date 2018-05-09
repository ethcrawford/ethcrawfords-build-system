const poststylus = require('poststylus');
const autoprefixer = require('autoprefixer');
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
    },
    stylus: {
      plugins: [
        poststylus([
          autoprefixer({ browsers: ['last 3 versions'] })
        ])
      ]
    }
  },
  sourceMaps: false
}
