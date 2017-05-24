class RepliesController < ApplicationController
	def create
		@post=Post.find(params[:post_id])
  	@comment=Comment.find(params[:comment_id])
  	@reply=@comment.replies.create(reply_params)
  		redirect_to comment_path(@comment)

	end
end
