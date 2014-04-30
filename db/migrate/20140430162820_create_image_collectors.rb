class CreateImageCollectors < ActiveRecord::Migration
  def change
    create_table :image_collectors do |t|
      t.attachment :image      
    end
  end
end
