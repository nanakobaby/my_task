module Api
  module V1
    class CategoriesController < ApplicationController

      def create
        category = Category.new(category_params)
        if category.save
          render json: { status: 201, data: category }
        else
          render json: { status: 422, data: category.errors }
        end
      end

      private
      def category_params
        params.permit(:name)
      end
    end
  end
end

