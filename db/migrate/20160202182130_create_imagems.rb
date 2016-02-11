class CreateImagems < ActiveRecord::Migration
  def change
    create_table :imagems do |t|
      t.string :file_id
      t.references :pessoa, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
