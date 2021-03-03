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
end
