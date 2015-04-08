fs = require 'fs'

srcDirs = fs.readdirSync 'src'
console.log ({src: 'src/' + d + '/main.coffee', dest: 'src/' + d + "/main.js"} for d in srcDirs)


module.exports = ->
  grunt = @

  # Project configuration
  @initConfig
    pkg: @file.readJSON 'package.json'

    coffee:
      compile:
        files: ({src: 'src/' + d + '/main.coffee', dest: 'src/' + d + "/main.js"} for d in srcDirs)

    watch:
      all:
        files: ['src/*/*.coffee']
        tasks: ["coffee"]
        options:
          livereload: true

    connect:
      server:
        hostname: 'localhost'
        options:
          port: 5000
          base: '.'
          livereload: true

  # Grunt plugins used for building
  @loadNpmTasks 'grunt-contrib-coffee'
  @loadNpmTasks 'grunt-contrib-connect'
  @loadNpmTasks 'grunt-contrib-watch'

  @registerTask 'default', ['connect:server', 'watch:all']
