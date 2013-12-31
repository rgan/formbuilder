// Generated on 2013-12-22 using generator-angular 0.7.1
'use strict';

// # Globbing
// for performance reasons we're only matching one level down:
// 'test/spec/{,*/}*.js'
// use this if you want to recursively match all subfolders:
// 'test/spec/**/*.js'

module.exports = function (grunt) {

  // Load grunt tasks automatically
  require('load-grunt-tasks')(grunt);

  // Time how long tasks take. Can help when optimizing build times
  require('time-grunt')(grunt);

  // Define the configuration for all the tasks
  grunt.initConfig({

    // Project settings
    yeoman: {
      // configurable paths
      app: require('./bower.json').appPath || 'app',
      dist: 'dist'
    },

    clean: {
      dist: {
        files: [{
          dot: true,
          src: [
            '.tmp',
            '<%= yeoman.dist %>/*',
            '!<%= yeoman.dist %>/.git*'
          ]
        }]
      },
      server: '.tmp'
    },

    // Renames files for browser caching purposes
    rev: {
      dist: {
        files: {
          src: [
            '<%= yeoman.dist %>/scripts/{,*/}*.js',
            '<%= yeoman.dist %>/styles/{,*/}*.css',
            '<%= yeoman.dist %>/images/{,*/}*.{png,jpg,jpeg,gif,webp,svg}',
            '<%= yeoman.dist %>/styles/fonts/*'
          ]
        }
      }
    },

    // Copies remaining files to places other tasks can use
    copy: {
      dist: {
        files: [{
          expand: true,
          dot: true,
          cwd: '<%= yeoman.app %>',
          dest: '<%= yeoman.dist %>',
          src: [
            '*.{ico,png,txt}',
            '.htaccess',
            '*.html',
            'views/{,*/}*.html',
            'images/{,*/}*.*',
            'fonts/*',
            'bower_components/**/*.css'
          ]
        }]
      }
    },

    coffee: {
        options : {
            bare : true
        },
        app: {
            files : {
                '<%= yeoman.dist %>/scripts/formbuilder.js' : [
                    'app/scripts/**/*.coffee'
                ]
            }
        },
        specs: {
            files : {
                '.tmp/scripts/tests.spec.js': [
                    'test/spec/**/*.coffee'
                ]
            }
        }
    },

    concat: {
        dist: {
           files: {
               '<%= yeoman.dist %>/scripts/formbuilder.combined.js' :  [
                   'app/bower_components/jquery/jquery.js',
                   'app/bower_components/angular/angular.js',
                   'app/bower_components/bootstrap/dist/js/bootstrap.js',
                   'app/bower_components/angular-resource/angular-resource.js',
                   'app/bower_components/angular-cookies/angular-cookies.js',
                   'app/bower_components/angular-sanitize/angular-sanitize.js',
                   'app/bower_components/angular-route/angular-route.js',
                   '<%= yeoman.dist %>/scripts/formbuilder.js'
               ]
           }
        }
    },

    cssmin: {
         combine: {
             files: {
               '<%= yeoman.dist %>/styles/app.css': [
                 '<%= yeoman.app %>/styles/{,*/}*.css'
               ]
             }
         }
    },
    uglify: {
       dist: {
         files: {
           '<%= yeoman.dist %>/scripts/formbuilder.js': [
             '<%= yeoman.dist %>/scripts/formbuilder.min.js'
           ]
         }
       }
    },

    // Test settings
    karma: {
      unit: {
        configFile: 'karma.conf.js',
        singleRun: true
      }
    }
  });

  grunt.registerTask('test', [
    'build',
    'karma'
  ]);

  grunt.registerTask('build', [
    'clean:dist',
    'coffee:app',
    'coffee:specs',
    'copy:dist',
    'cssmin:combine',
    'uglify',
    'concat:dist'
    //,'rev'
  ]);

  grunt.registerTask('default', [
    'test'
  ]);
};
