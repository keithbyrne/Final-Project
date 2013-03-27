class CreateTickettypes < ActiveRecord::Migration
  def change
    create_table :tickettypes do |t|
      t.string :type
      t.decimal :discount

      t.timestamps
    end
  end
end
