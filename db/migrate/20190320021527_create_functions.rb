class CreateFunctions < ActiveRecord::Migration[5.2]
  def change
    create_table :functions do |t|
      t.date :displayed_at
      t.references :movie, foreign_key: true

      t.timestamps
    end
  end
end
