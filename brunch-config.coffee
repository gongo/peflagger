exports.config =
    # See http://brunch.io/#documentation for docs.
    sourceMaps: false
    files:
        javascripts:
          joinTo:
            'app.js': /^app/
            'vendor.js': /^bower_components[\\/]vue/

        stylesheets:
          defaultExtension: 'less'
          joinTo: 'app.css'
