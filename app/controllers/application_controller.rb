class ApplicationController < ActionController::Base
    include ApplicationHelper
    include RecipesHelper
    include IngredientsHelper

    set_recipe
        @recipe = current_recipe
   
end
