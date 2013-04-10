class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
    	t.text :body
    	
    	t.references :creation

      t.timestamps
    end
  end
end
