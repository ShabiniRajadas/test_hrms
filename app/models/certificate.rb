class Certificate < ActiveRecord::Base
  attr_accessible :employee_id, :certificate_name, :certificate_provider
  belongs_to :employee
end
