json.extract! server, :id, :ip, :sn, :os, :purchase_time, :created_at, :updated_at
json.url server_url(server, format: :json)
