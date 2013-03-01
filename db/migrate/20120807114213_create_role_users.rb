class CreateRoleUsers < ActiveRecord::Migration
  def change
    create_table :role_users do |t|
    	t.references :role, :user
      t.timestamps
    end
  end
end
