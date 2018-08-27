class AddStatusTypeToSuperheroes < ActiveRecord::Migration[5.0]
  def change
    add_column :superheroes, :superpower_type, :string
  end
end
