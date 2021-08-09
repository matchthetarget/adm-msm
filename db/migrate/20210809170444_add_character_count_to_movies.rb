class AddCharacterCountToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :characters_count, :integer
  end
end
