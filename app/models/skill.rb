class Skill < ActiveRecord::Base
   attr_accessible :employee_id, :skill_name, :notes
   belongs_to :employee
end
