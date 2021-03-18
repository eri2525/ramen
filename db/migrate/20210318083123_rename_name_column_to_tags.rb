class RenameNameColumnToTags < ActiveRecord::Migration[6.0]
  def change
    rename_column :tags, :name, :tag
  end
end
