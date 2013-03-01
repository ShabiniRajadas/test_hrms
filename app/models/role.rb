class Role < ActiveRecord::Base
   attr_accessible :role_name
   has_many :users, :through => :role_user
   has_one :role_user
end
