class DropDirectors < ActiveRecord::Migration[7.1]
  def change
    drop_table :directors
  end
end
