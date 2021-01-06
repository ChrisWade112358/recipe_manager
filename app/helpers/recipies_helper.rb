module RecipiesHelper
    def current_recipe
        current_recipe = Recipie.find_by(id: params[:id])
    end
end
