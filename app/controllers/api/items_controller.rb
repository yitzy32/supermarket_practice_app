class Api::ItemsController < ApplicationController
  def index
    @foods = Food.all
    render "index.json.jb"
  end
end
