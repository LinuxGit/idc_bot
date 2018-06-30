json.extract! server_size, :id, :size_name, :model, :cpu, :cpu_cores, :memory, :disk, :created_at, :updated_at
json.url server_size_url(server_size, format: :json)
