class ChangeBookmarksListId < ActiveRecord::Migration[6.1]
  def change
    rename_column :bookmarks, :lists_id, :list_id
  end
end
