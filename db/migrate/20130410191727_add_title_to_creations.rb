class AddTitleToCreations < ActiveRecord::Migration
  def change
  	add_column :creations, :title, :string
  end
end
