class Server < ApplicationRecord
  belongs_to :server_size
  has_many :vms, dependent: :destroy

  validates :ip, :server_size_id, presence: true
  validates :ip, uniqueness: true
end
