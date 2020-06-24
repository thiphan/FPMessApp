json.extract! ticket, :id, :date, :type, :title, :status, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
