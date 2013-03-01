class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.references :user
      t.references :manager
      t.text :name
      t.text :age
      t.text :gender
      t.text :address
      t.text :phone_number
      t.text :email_id
      t.text :date_of_joining
      
      t.timestamps
    end
  end
end
