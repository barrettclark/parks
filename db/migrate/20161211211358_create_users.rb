class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users, id: :uuid do |t|
      t.string :fname
      t.string :lname
      t.string :color
      t.jsonb :payload

      t.timestamps
    end
  end
end
