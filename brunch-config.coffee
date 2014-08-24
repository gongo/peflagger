exports.config =
    # See http://brunch.io/#documentation for docs.
    sourceMaps: false
    files:
        javascripts:
          joinTo:
            'app.js': /^app/
            'vendor.js': /^bower_components[\\/]vue/
            'test.js': /^test/
            'test.vendor.js': /^bower_components[\\/](?=mocha|assert)/

        stylesheets:
          defaultExtension: 'less'
          joinTo: 'app.css'
