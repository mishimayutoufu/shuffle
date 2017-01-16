class CommentsController < ApplicationController

	 def index
      @comments = Comment.all
    end

    def new
    end

    def create
      Comment.create(comment_params)
      redirect_to :root
    end

    private
    def comment_params
    	params.require(:comment).permit(:content, :food_id).merge(user_id: current_user.id)
    end
end
