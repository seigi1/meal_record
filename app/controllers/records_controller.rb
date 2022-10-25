class RecordsController < ApplicationController
    before_action :move_to_index, except: [:index, :show,]
  
  
    def index
      @records = Record.all
      # @user = User.find(params[:user_id])
    end
  
    def new
      @records = Record.new
    end
  
    def create
      @records = Record.new(records_params)
      if @records.save
        redirect_to root_path
      else
        render new_record_path
      end
    end
  
    # def search
    #   @meal_records = MealRecord.search(params[:meal_time]).order("meal_time ASC")
    # end
  
    private
  
    def records_params
      params.require(:record).permit(
        :meal_name,
        :calorie,
        :carbohydrate,
        :fat,
        :protein,
        :meal_time,
        :image
      ).merge(user_id: current_user.id)
    end
  
    def move_to_index
      unless user_signed_in?
        redirect_to action: :index
      end
    end
end
