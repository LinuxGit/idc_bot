class AddServerSizeRefToServers < ActiveRecord::Migration[5.2]
  def change
    add_reference :servers, :server_size, foreign_key: true
  end
end
