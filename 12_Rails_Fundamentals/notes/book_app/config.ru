# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment', __FILE__)
<<<<<<< HEAD
=======

# Action Cable requires that all classes are loaded in advance
Rails.application.eager_load!

>>>>>>> 69a21e41517a5c85387a5f133e9fed41dcf36da2
run Rails.application
