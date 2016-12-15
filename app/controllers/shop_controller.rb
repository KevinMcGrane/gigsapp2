class ShopController < ApplicationController
  def index
	@tickets = Ticket.order("gig_id asc").all
  end
end
