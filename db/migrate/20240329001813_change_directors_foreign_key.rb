class ChangeDirectorsForeignKey < ActiveRecord::Migration[7.1]
  def change
    remove_foreign_key :directors, :fav_genres
    add_reference :directors, :genre, foreign_key: true, null: false
  end
end
