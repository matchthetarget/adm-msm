class AddMovieReferenceToCharacters < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :characters, :movies
    add_index :characters, :movie_id
  end
end
