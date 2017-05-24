class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.string :cbody
    	t.references :post , foreign_key: true

      t.timestamps null: false
    end
  end
end
