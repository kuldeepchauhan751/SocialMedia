class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.string :pbody

      t.timestamps null: false
    end
  end
end
