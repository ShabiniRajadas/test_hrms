class CreateCertificates < ActiveRecord::Migration
  def change
    create_table :certificates do |t|
      t.references :employee
      t.text :certificate_name
      t.text :certificate_provider
      t.timestamps
    end
  end
end
