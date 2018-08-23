class CreateSuperpowers < ActiveRecord::Migration[5.0]
  def change
    create_table :superpowers do |t|
      t.string :name
      t.string :description
      t.string :superpower_id

      t.timestamps
    end
  end
end
