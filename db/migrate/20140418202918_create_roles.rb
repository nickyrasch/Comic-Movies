class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.references :movie, index: true
      t.references :character, index: true
    end
  end
end
