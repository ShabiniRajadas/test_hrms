class CreateEmployeeImages < ActiveRecord::Migration
  def change
    create_table :employee_images do |t|
      t.references :employee
      t.text :photo_name
      t.string :remote_profimage_url
      t.timestamps
    end
  end
end
