class AddProfimageToEmployeeImage < ActiveRecord::Migration
  def change
    add_column :employee_images, :profimage, :string
  end
end
