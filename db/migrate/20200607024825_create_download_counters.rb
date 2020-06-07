class CreateDownloadCounters < ActiveRecord::Migration[5.2]
  def change
    create_table :download_counters do |t|
      t.integer :counter

      t.timestamps
    end
  end
end
