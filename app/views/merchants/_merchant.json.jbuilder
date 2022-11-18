json.extract! merchant, :id, :name, :owner, :branch_count, :phone, :location, :whatsapp, :instagram, :created_at, :updated_at
json.url merchant_url(merchant, format: :json)
