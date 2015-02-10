class ChangeColumn < ActiveRecord::Migration
  def change
    change_column_default :urls, :rank, 0
  end
end
