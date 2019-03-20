class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :name
      t.name :description
      t.string :image_url

      t.timestamps
    end
  end
end
