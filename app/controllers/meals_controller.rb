class MealsController < ApplicationController
    # before_action :set_meal, only: [:show, :update, :destory]

    def index
        @meals = Meal.all
        render json: @meals
    end

    def show
        render json: @meal
    end

    def create
        @meal = Meal.new(meal_params)

        if @meal.save 
            render json: @meal, status: :created, location: @meal 
        else
            render json: @meal.errors, status: :unprocessable_entity
        end
    end

    def update
        @meal = Meal.update(meal_params)
      
            render json: @meal
       
    end

    def destroy
        @meal = Meal.find(params[:id])
        @meal.destroy
    end

    private

    def set_meal
        @meal = Meal.find(params[:id])
    end

    def meal_params
        params.require(:meal).permit(
            :foodName,
            :serveQty,
            :serveUnit,
            :calories,
            :allFat,
            :protein,
            :carbohydrates,
            :cholesterol,
            :satFat,
            :sodium,
            :fiber,
            :sugar,
            :img,
            :user_id
        )
    end

end
