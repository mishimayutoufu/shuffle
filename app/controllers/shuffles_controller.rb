class ShufflesController < ApplicationController

	 before_action :move_to_index, except: :index

	def index
    end
    
    def new    	
    end

    def create
    	Shuff.create(name: shuff_params[:name],)
    end

    def show
        @random =rand(Food.count)
        @food = Food.offset(@random).first
        @comments = @food.comments.includes(:user)
    end


    private
    def Shuff_params
    	params.permit(:name, :image, :text)
    end

    def move_to_index
    	redirect_to action: :index unless user_signed_in?
    end


end
