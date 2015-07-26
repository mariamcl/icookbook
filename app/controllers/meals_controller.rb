class MealsController < ApplicationController

	def show
		@meal = Meal.find(params[:id])
	end

	def new
		@meal = Meal.new
	end

	def create
		@meal = Meal.new(meal_params)

		if @meal.save
			redirect_to meal_path(@meal)
		else
			render "new"
		end
	end

	def edit
		@meal = Meal.find(params[:id])
	end

	def update
		@meal = Meal.find(params[:id])
		if @meal.update(meal_params)
			redirect_to meal_path(@meal)
		else 
			render "edit"
		end
	end

	def destroy
		@meal = Meal.find(params[:id])
		@meal.destroy

		redirect_to meals_path
	end

	private
		def meal_params
			params.require(:meal).permit(:name)
		end
end
