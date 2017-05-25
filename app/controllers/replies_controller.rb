class RepliesController < ApplicationController
	
  def new
    @reply=Reply.new
    end

    def create
      @post=Post.find(params[:post_id])
	  @comment=Comment.find(params[:comment_id])
  	@reply=@comment.replies.create(reply_params)
  	redirect_to post_path(@post)

	end

	def destroy
  	@reply=Reply.find(params[:id])
  	@reply.destroy
  	redirect_to post_path(@reply.comment.post)
  end

   def edit
    @post=Post.find(params[:post_id])
    @comment =Comment.find(params[:comment_id])
    @reply=Reply.find(params[:id])
  end
  def update
  	@comment=Comment.find(params[:comment_id])
    @reply=Reply.find(params[:id])
 
    if @reply.update(reply_params)
      redirect_to post_path(@reply.comment.post)
    else
      render 'edit'
    end
  end


  private
  def reply_params
  	params.require(:reply).permit(:rbody)
  end
end
