class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #enum role: { chef: 0, owner: 1 }

  def owner?
    role == "owner"
  end
  
  def chef?
    role == "chef"
  end
  
end


# app/models/user.rb
#class User < ApplicationRecord
  # Devise modules already inserted by the generator
  # e.g. devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

#  
#end
