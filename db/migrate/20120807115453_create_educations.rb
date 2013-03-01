class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.references :employee
      t.text :course_name
      t.text :course_institution
      t.text :course_percentage
      t.text :year_of_passing
      t.timestamps
    end
  end
end
