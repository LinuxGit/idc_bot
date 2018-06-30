class CreateServerSizes < ActiveRecord::Migration[5.2]
  def change
    create_table :server_sizes do |t|
      t.string :size_name
      t.integer :model
      t.string :cpu
      t.integer :cpu_cores
      t.integer :memory
      t.text :disk

      t.timestamps
    end
  end
end
