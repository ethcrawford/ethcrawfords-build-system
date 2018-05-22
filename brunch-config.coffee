poststylus = require('poststylus')
autoprefixer = require('autoprefixer')
mqpacker = require('css-mqpacker')
exports.config =
  files:
    javascripts:
      joinTo: 'app.js'
      order: before: [ 'node_modules/jquery/dist/jquery.min.js' ]
    stylesheets:
      joinTo: 'app.css'
      order:
        before: [
          /styles\/box-model\.styl/
          /styles\/normalize\.styl/
          /styles\/modular-grid\.styl/
          /styles\/base\.styl/
          /styles\/equalizer\.styl/
          /styles\/default\.styl/
          /styles\/common\.styl/
        ]
        after: [
          /styles\/special\.styl/
          /styles\/animation\.styl/
          /styles\/animator\.styl/
          /styles\/switch\.styl/
          /styles\/utility\.styl/
          /styles\/forced\.styl/
        ]
  paths:
    public: 'public'
    watched: [
      'app'
      'test'
      'vendor'
      'node_modules/jquery/dist/jquery.min.js'
      'node_modules/magnific-popup/dist/jquery.magnific-popup.min.js'
      'node_modules/slick-carousel/slick/slick.min.js'
      'node_modules/wow.js/dist/wow.min.js'
    ]
  modules:
    wrapper: false
    definition: false
  npm: enabled: false
  plugins:
    htmlPages:
      compileAssets: true
      disabled: false
    pug: pugRuntime: false
    stylus: plugins: [ poststylus([
      autoprefixer(browsers: [ 'last 3 versions' ])
      mqpacker(sort: true)
    ]) ]
  sourceMaps: false
