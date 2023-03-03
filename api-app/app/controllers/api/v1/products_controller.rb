class Api::V1::ProductsController < ApplicationController
  def index
    @product = Product.all
    render json: @product, status:200
  end

  def show
    @product = Product.find_by(id: params[:id])
    if @product
      render json: @product, status: 200
    else
      render json: {error: "Not found"}
    end
  end

  def create
    @product = Product.new(prod_params)
    if @product.save
      render json: @product, status: 200
    else
      render json: {error: "Not created"}
    end
  end

  private

  def prod_params
    params.require(:product).permit(:name, :brand, :price_range)
  end

end
