class Api::ItemsController < ApplicationController
  def index
    @foods = Food.all
    render "index.json.jb"
  end

  def show
    @food = Food.find_by(id: params[:id])
    render "show.json.jb"
  end
end
