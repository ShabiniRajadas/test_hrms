class User < ActiveRecord::Base
   attr_accessible :user_name, :password
   has_one :role, :through => :role_user
   has_one :employee
   has_one :role_user
end
