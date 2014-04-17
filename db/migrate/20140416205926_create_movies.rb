class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :image_file_name
      t.references :type, index: true
    end
  end
end
