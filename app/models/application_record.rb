class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
end

class User < ApplicationRecord
  # So here, you can call `enum` 
  #enum role: { chef: 0, owner: 1 }
end