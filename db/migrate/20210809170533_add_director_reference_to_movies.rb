class AddDirectorReferenceToMovies < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :movies, :directors
    add_index :movies, :director_id
  end
end
