require File.dirname(__FILE__) + "/../test_helper" unless defined?(RAILS_ROOT)
ActiveRecord::Base.disconnect! :strategy => :raise
# make sure calling disconnect multiple times does not cause problems
ActiveRecord::Base.disconnect!
