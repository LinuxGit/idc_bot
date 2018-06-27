class CreateVms < ActiveRecord::Migration[5.2]
  def change
    create_table :vms do |t|
      t.string :ip
      t.integer :status
      t.integer :server_id

      t.timestamps
    end
  end
end
