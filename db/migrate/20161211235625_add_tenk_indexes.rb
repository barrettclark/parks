class AddTenkIndexes < ActiveRecord::Migration[5.0]
  def change
    add_index "reporting.tenks", :unique1, :unique => true
    add_index "reporting.tenks", :twenty
  end
end
