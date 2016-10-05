json.extract! solicitud, :id, :ayuda_id, :persona_id, :status, :created_at, :updated_at
json.url solicitud_url(solicitud, format: :json)