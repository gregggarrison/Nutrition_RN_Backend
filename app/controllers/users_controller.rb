class UsersController < ApplicationController

    def index
        @users = User.all 
        render json: @users, include: :meals
      end 
  
  
      def create
        @user = User.create(user_params)
        render json: @user
      end
  
      def update
        @user.update(user_params)
        render json: @user
      end
  
      def destroy
        @user.destroy
        render status: :no_content
      end
      
    private
  
    def user_params
        params.require(:user).permit(
            :username,
            :age,
            :sex,
            :height,
            :weight,
            :pal,
            :kcal,
            :carbP,
            :protP,
            :fatP
        )
    end

end
