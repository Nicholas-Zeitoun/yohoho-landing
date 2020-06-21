class RemoveDocTypeFromDownloadCounter < ActiveRecord::Migration[5.2]
  def change
    remove_column :download_counters, :doc_type, :string
    remove_column :download_counters, :counter, :integer
  end
end
