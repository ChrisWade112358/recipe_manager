class ApplicationController < ActionController::Base
    include ApplicationHelper
    include RecipesHelper
    include IngredientsHelper

    def set_recipe
        @recipe = current_recipe
    end 
   
end
