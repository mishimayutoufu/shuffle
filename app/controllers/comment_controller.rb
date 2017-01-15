class CommentController < ApplicationController

	 def index
      @comments = Comment.all
    end

    def new
    end

    def create
      Comment.create(email: "",  text: "")
    end

end
