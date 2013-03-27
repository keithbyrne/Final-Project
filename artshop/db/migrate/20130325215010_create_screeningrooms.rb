class CreateScreeningrooms < ActiveRecord::Migration
  def change
    create_table :screeningrooms do |t|
      t.string :name
      t.integer :capacity

      t.timestamps
    end
  end
end
