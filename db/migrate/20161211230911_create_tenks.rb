class CreateTenks < ActiveRecord::Migration[5.0]
  def change
    create_table "reporting.tenks", id: :uuid do |t|
      t.integer :unique1
      t.integer :unique2
      t.integer :two
      t.integer :four
      t.integer :ten
      t.integer :twenty
      t.integer :hundred
      t.integer :thousand
      t.integer :twothousand
      t.integer :fivethous
      t.integer :tenthous
      t.integer :odd
      t.integer :even
      t.string :stringu1
      t.string :stringu2
      t.string :string4

      t.timestamps
    end
  end
end
