class AddMarvelLinkToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :marvel_link, :string
  end
end
