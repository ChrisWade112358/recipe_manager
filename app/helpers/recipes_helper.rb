module RecipesHelper
    def current_recipe
        
        current_recipe = Recipe.find_by(id: params[:id])
    end
end
