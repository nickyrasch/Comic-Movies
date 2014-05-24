class AddComicVineLinkToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :comic_vine_link, :string
  end
end
