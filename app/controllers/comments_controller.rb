class CommentsController < ApplicationController

  def create
    @club = Club.find(params[:comment][:club_id])
    if current_user.club.exists?(@club) then
      @comment = Comment.new(comment_params)
      @comment.user_id = current_user.id
      if @comment.save then
        redirect_to "/clubs/#{@club.id}"
      end
    else
      redirect_to "/clubs/"
    end

  end

  private
  def comment_params
    params.require(:comment).permit(:name, :comment, :club_id)
  end
end
