class RecipiesController < ApplicationController
    before_action :current_recipe, only:[:show, :edit, :update, :destroy]
    def index
        @recipes = Recipe.all
    end

    def show
    end

    def new
        @recipe = Recipie.new
    end

    def create
        @recipe = Recipie.create(recipe_params)
        if @recipe.save
            redirect_to recipies_path, notice: "Recipe added."
        else
            redirect_to recipie_path, notice: "Recipe not saveed."
        end
    end

    def edit
    end

    def update
       if @recipe.update(recipe_params)
           redirect_to recipie_path(@current_recipe)
       else
           redirect_to recipie_path(@current_recipe), alert: "Recipe not updated."
       end
    end

    def destroy
        @recipe.destroy
        redirect_to recipies_path, alert: "Recipe Deleted"
    end

    private

    def recipe_params
        param.require(:recipie),permit(:name, :directions, :ingredients, :category, :date_last_made)
    end

end
