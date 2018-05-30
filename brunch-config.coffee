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
          'app/styles/box-model.styl'
          'app/styles/normalize.styl'
          'app/styles/modular-grid.styl'
          'app/styles/base.styl'
          'app/styles/equalizer.styl'
          'app/styles/default.styl'
          'app/styles/common.styl'
        ]

        after: [
          'app/styles/special.styl'
          'app/styles/animation.styl'
          'app/styles/animator.styl'
          'app/styles/switch.styl'
          'app/styles/utility.styl'
          'app/styles/forced.styl'
        ]

  modules:
    wrapper: false
    definition: false

  npm:
    enabled: false

  plugins:
    htmlPages:
      compileAssets: true
      disabled: false

    pug:
      pugRuntime: false

    stylus:
      plugins: [
        poststylus([
          autoprefixer(browsers: [ 'last 3 versions' ])
          mqpacker(sort: true)
        ])
      ]

  sourceMaps: false
