class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
    	t.string :rbody
    	t.references :comment , foreign_key: true 

      t.timestamps null: false
    end
  end
end
