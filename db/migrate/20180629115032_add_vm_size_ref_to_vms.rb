class AddVmSizeRefToVms < ActiveRecord::Migration[5.2]
  def change
    add_reference :vms, :vm_size, foreign_key: true
  end
end
