class UsersController < ApplicationController
	def show
	  # @user = User.find(params[:id])
      # @name = current_user.name
      @comments = current_user.comments
      # @shuffles = user.comments.page(params[:page]).per(5).order("created_at DESC")
    end
end
