# Be sure to restart your server when you modify this file.

# This file contains settings for ActionController::ParamsWrapper which
# is enabled by default.

# Enable parameter wrapping for JSON. You can disable this by setting :format to an empty array.
ActiveSupport.on_load(:action_controller) do
<<<<<<< HEAD
  wrap_parameters format: [:json] if respond_to?(:wrap_parameters)
=======
  wrap_parameters format: [:json]
>>>>>>> 69a21e41517a5c85387a5f133e9fed41dcf36da2
end

# To enable root element in JSON for ActiveRecord objects.
# ActiveSupport.on_load(:active_record) do
<<<<<<< HEAD
#  self.include_root_in_json = true
=======
#   self.include_root_in_json = true
>>>>>>> 69a21e41517a5c85387a5f133e9fed41dcf36da2
# end
