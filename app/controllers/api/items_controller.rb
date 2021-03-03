class Api::ItemsController < ApplicationController
  def index
    @foods = Food.all
    render "index.json.jb"
  end

  def show
    @food = Food.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @food = Food.new(
      name: params["name"],
      brand: params["brand"],
      price: params["price"],
    )
    @food.save
    render "show.json.jb"
  end

  def update
    @food = Food.find_by(id: params[:id])
    @food.name = params[:name] || @food.name
    @food.brand = params[:brand] || @food.brand
    @food.price = params[:price] || @food.price
    @food.save
    render "show.json.jb"
  end

  def destroy
    @food = Food.find_by(id: params[:id])
    @food.destroy
    render json: { message: "item removed" }
  end
end
