class AddCharacterCountToActors < ActiveRecord::Migration[6.0]
  def change
    add_column :actors, :characters_count, :integer
  end
end
