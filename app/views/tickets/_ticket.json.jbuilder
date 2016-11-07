json.extract! ticket, :id, :gig_id, :user_id, :price, :over_18s, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)