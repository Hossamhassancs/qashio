class AddIndexToActorCol < ActiveRecord::Migration[7.0]
  def change
    add_index :movies, :actor
  end
end
