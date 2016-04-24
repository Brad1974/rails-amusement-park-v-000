class RenameTickersColumnInAttractions < ActiveRecord::Migration
  def change
    rename_column :attractions, :tickers, :tickets
  end
end
