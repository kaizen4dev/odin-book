class FixTypoInColumnName < ActiveRecord::Migration[8.1]
  def change
    rename_column :comments, :commantable_id, :commentable_id
    rename_column :comments, :commantable_type, :commentable_type
  end
end
