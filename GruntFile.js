module.exports = function (grunt){

  grunt.initConfig({

    ember_templates: {
      options: {
        templateName : function(sourceFile){
          return sourceFile.replace(/public\/app\/templates\//, '');
        }
      }, 'public/dependencies/compiled/templates.js' : ['public/app/templates/*.hbs']
    },
    neuter: {
      options: { 
        includeSourceURL: true,
        compileTo: 'coffee',
        baseURL: 'public/app'
      },
      'public/application.js': 'public/app/app.coffee'
    },
    watch: {
      application: {
        files: ['public/dependancies/ember.js', 'public/app/*.coffee', 'public/app/**/*.coffee'],
        tasks: ['neuter']
      },
      handlebars: {
        files: ['public/app/**/*.hbs'],
        tasks: ['ember_templates', 'neuter']
      }
    }
  });

  grunt.loadNpmTasks('grunt-contrib-coffee');
  grunt.loadNpmTasks('grunt-neuter');
  grunt.loadNpmTasks('grunt-ember-templates');
  grunt.loadNpmTasks('grunt-contrib-watch');

  grunt.registerTask('test', ['ember_templates', 'neuter', 'jshint', 'jasmine'])
  grunt.registerTask('default', ['ember_templates', 'neuter', 'watch'])

}