class RenameTypeColumnForDownloadCounter < ActiveRecord::Migration[5.2]
  def change
    rename_column :download_counters, :type, :doc_type
  end
end
