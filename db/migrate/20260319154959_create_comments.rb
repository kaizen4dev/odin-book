class CreateComments < ActiveRecord::Migration[8.1]
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :commantable_id
      t.string :commantable_type

      t.timestamps
    end
  end
end
