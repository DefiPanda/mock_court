require 'faye'  
require File.expand_path('../config/initializers/faye_token.rb', __FILE__)  
  

  
faye_server = Faye::RackAdapter.new(:mount => '/faye', :timeout => 45)  
 
run faye_server  