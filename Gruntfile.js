/*
Archivo que configura la lista de tareas
 */


 var env = process.env.NODE_ENV || 'development';



module.exports = function(grunt) {
  grunt.initConfig({
    pkg: grunt.file.readJSON("package.json"),
    nodemon: {
      dev: {
        script: "./bin/www"
      }
    },
    compass: {
      dev: {
        options: {
          sassDir: "sass",
          importPath: ["public/vendor"],
          imagesDir: "public/img",
          cssDir: ["public/stylesheets"],
          javascriptsDir: "public/javascript",
          fontsDir: "public/fonts",
          outputStyle: "compact",
          noLineComments: true
        }
      }
    },

    watch: {
      compass: {
        files: ["sass/**/*.scss"],
        tasks: ["compass:dev"]
      }
    }
  });
  grunt.loadNpmTasks("grunt-contrib-compass");
  grunt.loadNpmTasks("grunt-contrib-watch");
  grunt.loadNpmTasks("grunt-nodemon");
  grunt.loadNpmTasks("grunt-docco");
  grunt.loadNpmTasks("grunt-codo");
  grunt.registerTask("default", ["nodemon:dev"]);
  grunt.registerTask("sass", ["watch:compass"]);
  grunt.registerTask("carga-inicial", ["mongoimport"]);
  grunt.registerTask("docs", ["docco:code"]);


  return grunt.registerTask("build", ["compass:dev"]);
};
