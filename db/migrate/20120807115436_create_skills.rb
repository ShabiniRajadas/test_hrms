class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.references :employee
      t.text :skill_name
      t.text :notes
      t.timestamps
    end
  end
end
