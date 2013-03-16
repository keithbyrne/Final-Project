class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.string :director
      t.string :actors
      t.string :category
      t.text :description
      t.string :poster
      t.string :trailer

      t.timestamps
    end
  end
end
