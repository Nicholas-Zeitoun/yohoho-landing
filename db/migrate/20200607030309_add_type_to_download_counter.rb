class AddTypeToDownloadCounter < ActiveRecord::Migration[5.2]
  def change
    add_column :download_counters, :type, :string
  end
end
