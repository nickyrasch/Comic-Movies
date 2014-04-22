class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :image_file_name
      t.string :description
      t.string :first_appearance_comic_name
      t.string :first_appearance_issue_number
      t.integer :comic_vine_id
      t.integer :marvel_id
      t.references :side, index: true      
    end
  end
end
