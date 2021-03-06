class CreateDiskTitles < ActiveRecord::Migration[6.0]
  def change
    create_table :disk_titles do |t|
      t.string :name, null: false
      t.integer :duration
      t.integer :title_id, null: false
      t.integer :size, default: 0, null: false

      t.references :mkv_progress
      t.references :disk
      t.timestamps
    end
  end
end
