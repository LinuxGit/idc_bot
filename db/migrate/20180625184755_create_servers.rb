class CreateServers < ActiveRecord::Migration[5.2]
  def change
    create_table :servers do |t|
      t.string :ip
      t.string :sn
      t.string :os
      t.date :purchase_time

      t.timestamps
    end
  end
end
