class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
    	t.string :content

    	t.references :question
    	
      t.timestamps
    end
  end
end
