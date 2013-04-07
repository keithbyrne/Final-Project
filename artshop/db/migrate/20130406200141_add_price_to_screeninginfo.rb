class AddPriceToScreeninginfo < ActiveRecord::Migration
  def change
    add_column :screeninginfos, :price, :decimal
  end
end
