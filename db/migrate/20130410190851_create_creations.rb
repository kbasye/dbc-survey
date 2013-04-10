class CreateCreations < ActiveRecord::Migration
  def change
    create_table :creations do |t|
    	t.text :body

    	t.references :user

      t.timestamps
    end
  end
end
