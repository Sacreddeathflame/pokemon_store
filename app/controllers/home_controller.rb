class HomeController < ApplicationController
  def index

    if params[:search]
      @tms = TechnicalMachine.search(params[:search]).order("name ASC")
    else
      @tms = TechnicalMachine.all.order("name ASC")
    end

  end

  def show
    @tm = TechnicalMachine.find(params[:id])
  end
end
