class CreateVmSizes < ActiveRecord::Migration[5.2]
  def change
    create_table :vm_sizes do |t|
      t.string :size_name
      t.integer :cpu_cores
      t.integer :memory
      t.integer :storage
      t.integer :disk

      t.timestamps
    end
  end
end
