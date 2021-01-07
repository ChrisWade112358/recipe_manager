class IngredientsController < ApplicationController
    def index
        @ingredients = Ingredient.all
    end

    def show
        @ingredient = Ingredient.find_by(id: params[:id])
    end

    def new
       @ingredient = Ingredient.new
    end

    def create
       @ingredient = Ingredient.create(ingredient_prarams)
       if @ingredient.save
          redirect_to ingredient_path(@ingredient), notice: "Ingredient was successfully created."
       else
          render 'new'
       end
    end

    def edit
        @ingredient = Ingredient.find_by(id: params[:id])
    end

    def update
        @ingredient = Ingredient.find_by(id: params[:id])
        @ingredinet.update(ingredient_params)
        if @ingredient.save
            redirect_to ingredient_path(@ingredient), notice: "Menu item was successfully updated."
        else
            render 'edit'
        end
    end

    def destroy
        @ingredient = Ingredient.find_by(id: params[:id])
        @ingredient.destroy
        redirect_to ingredients_path
    end
end
