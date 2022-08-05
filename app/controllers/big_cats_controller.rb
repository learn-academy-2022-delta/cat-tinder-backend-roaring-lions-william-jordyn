class BigCatsController < ApplicationController
    def index
        cats = BigCat.all
        render json: cats
      end
    
      def create
        cat = BigCat.create(cat_params)
        if cat.valid?
          render json: cat
        else
           render json: cat.errors, status: 422
        end
      end
    
      def update
        cat = BigCat.find(params[:id])
        cat.update(cat_params)
        render json: cat
      end
    
      def destroy
        cat = BigCat.find(params[:id])
        cat.destroy
        render json: cat
      end
    
      private
      def cat_params
        params.require(:cat).permit(:name, :age, :enjoys, :funfact, :image)
      end
end

