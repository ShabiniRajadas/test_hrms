class Employee < ActiveRecord::Base
  attr_accessible :user_id, :name, :age, :gender, :address, :phone_number, :email_id, :date_of_joining, :manager_id
  belongs_to :user
  has_one :employee_image
  has_many :educations
  has_many :certificates
  has_many :skills
  has_many :subordinates, :class_name => "Employee", :foreign_key => "manager_id"
  belongs_to :manager, :class_name =>"Employee"

end
