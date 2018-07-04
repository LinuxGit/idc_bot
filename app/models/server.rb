class Server < ApplicationRecord
  belongs_to :server_size
  has_many :vms, dependent: :destroy

  validates :ip, :server_size_id, :sn, :os, :purchase_time, presence: true
  validates :ip, uniqueness: true

  def feed
    Vm.where("server_id = ?", id)
  end
end
