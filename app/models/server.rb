class Server < ApplicationRecord
  belongs_to :server_size
  has_many :vms

end
