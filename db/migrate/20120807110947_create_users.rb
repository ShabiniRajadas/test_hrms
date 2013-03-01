class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.text :user_name
    	t.text :password
      t.timestamps
    end
  end
end
