const poststylus = require('poststylus');
const autoprefixer = require('autoprefixer');
const mqpacker = require('css-mqpacker');
exports.config = {
  files: {
    javascripts: {
      joinTo: 'app.js',
      order: {
        before: [
          /scripts\/jquery.min.js/
        ]
      }
    },
    stylesheets: {
      joinTo: 'app.css',
      order: {
        before: [
          /styles\/box-model\.styl/,
          /styles\/normalize\.styl/,
          /styles\/modular-grid\.styl/,
          /styles\/base\.styl/,
          /styles\/default\.styl/
        ],
        after: [
          /styles\/visually-hidden\.styl/
        ]
      }
    }
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
          autoprefixer({ browsers: ['last 3 versions'] }),
          mqpacker()
        ])
      ]
    }
  },
  sourceMaps: false
}
