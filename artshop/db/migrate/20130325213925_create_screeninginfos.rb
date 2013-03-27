class CreateScreeninginfos < ActiveRecord::Migration
  def change
    create_table :screeninginfos do |t|
      t.time :showtime
      t.date :showdate
      t.time :admissiontime
      t.integer :movie_id
      t.integer :screeningroom_id

      t.timestamps
    end
  end
end
