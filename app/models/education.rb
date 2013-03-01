class Education < ActiveRecord::Base
   attr_accessible :employee_id, :course_name, :course_institution, :course_percentage, :year_of_passing
   belongs_to :employee
end
