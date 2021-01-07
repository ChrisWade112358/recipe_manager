class RecipesController < ApplicationController
    before_action :current_recipe
    before_action :set_recipe, only:[:show, :edit, :update, :destroy]
    
    def index
        @recipes = Recipe.all
    end

    def show
    end

    def new
        @recipe = Recipe.new 
        @recipe.ingredients.build(name: "First Ingredient")
        @recipe.ingredients.build(name: "Second Ingredient")
        @recipe.ingredients.build(name: "Third Ingredient")
        @recipe.ingredients.build(name: "Fourth Ingredient")
        @recipe.ingredients.build(name: "Fifth Ingredient")    
    end

    def create
        @recipe = Recipe.create(recipe_params)
        if @recipe.save
            redirect_to recipes_path, notice: "Recipe added."
        else
            redirect_to recipe_path, notice: "Recipe not saveed."
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
        param.require(:recipe).permit(
            :name, 
            :directions, 
            :ingredients, 
            :category, 
            :date_last_made,
            ingredients_attributes: [
                :name,
                :amount,
                :measure_rate
            ])
    end



end
