class CreateFlowers < ActiveRecord::Migration
  def change
    create_table :flowers do |t|
      t.string :color
      t.string :name
      t.integer :price
      t.date :date_of_cut

      t.timestamps
    end
  end
end
