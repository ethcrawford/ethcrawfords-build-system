poststylus = require('poststylus')
autoprefixer = require('autoprefixer')
mqpacker = require('css-mqpacker')

exports.config =
  files:
    javascripts:
      joinTo: 'app.js'

      order:
        before: [ 'app/scripts/libraries.js', 'app/scripts/plugins.js' ]
        after: [ 'app/scripts/components.coffee', 'app/initialize.coffee' ]

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
