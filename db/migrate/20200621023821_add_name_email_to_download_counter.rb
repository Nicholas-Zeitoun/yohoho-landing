class AddNameEmailToDownloadCounter < ActiveRecord::Migration[5.2]
  def change
    add_column :download_counters, :name, :string
    add_column :download_counters, :email, :string
  end
end
