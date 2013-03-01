class EmployeeImage < ActiveRecord::Base
   attr_accessible :employee_id, :photo_name, :profimage, :remote_profimage_url
   belongs_to :employee
   mount_uploader :profimage, ProfimageUploader
end
