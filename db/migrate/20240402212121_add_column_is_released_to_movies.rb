class AddColumnIsReleasedToMovies < ActiveRecord::Migration[7.1]
  def change
    add_column :movies, :is_released, :boolean
  end
end
