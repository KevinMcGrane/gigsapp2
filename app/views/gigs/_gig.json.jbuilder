json.extract! gig, :id, :artist, :venue_id, :date, :start_time, :tickets_remaining, :created_at, :updated_at
json.url gig_url(gig, format: :json)