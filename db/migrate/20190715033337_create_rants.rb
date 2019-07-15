class CreateRants < ActiveRecord::Migration[5.2]
  def change
    create_table :rants do |t|
      t.references :organization, foreign_key: true
      t.text :body

      t.timestamps
    end
  end
end
