class HomeController < ApplicationController
  def index
    @tms = TechnicalMachine.all


  end

  def show
    @tm = TechnicalMachine.find(params[:id])
  end
end
