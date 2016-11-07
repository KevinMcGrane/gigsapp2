class CommentsController < ApplicationController
before_action :authorise
	
	def create
		@venue = Venue.find params[:venue_id]
		@comment = @venue.comments.new(comment_params)
		@comment.user_id = @current_user.id
		@comment.save
		
			respond_to do |format|
				
				format.html{ redirect_to @venue}
			
			end
	
	
	
	
	end
	
	
	private def comment_params
		params.require(:comment).permit(:content, :venue_id, :user_id, :stars)
	end

end

