class AddActorReferenceToCharacters < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :characters, :actors
    add_index :characters, :actor_id
  end
end
