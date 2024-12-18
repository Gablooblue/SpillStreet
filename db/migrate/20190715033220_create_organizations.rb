class CreateOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :organizations do |t|
      t.string :name
      t.text :desc

      t.timestamps
    end
    add_index :organizations, :name, unique: true
  end
end
