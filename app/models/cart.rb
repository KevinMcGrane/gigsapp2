class Cart < ActiveRecord::Base
	has_many :lineitems, :dependent=> :destroy
	
	def add_ticket(ticket_id)
		current_item = lineitems.find_by_ticket_id(ticket_id)
		if current_item
			current_item.quantity += 1
		else
			current_item = lineitems.new(ticket_id: ticket_id)
			current_item.quantity = 1
		end
		current_item
	end
	
	
	end
