class HomeController < ApplicationController
  def index
    filter = ''
    if !params[:filter].blank?
      filter = params[:filter]
    end

    if !params[:type_id].blank? && !params[:search].blank?
      @tms = TechnicalMachine.full_search(params[:search], params[:type_id], filter).order("name ASC").page(params[:page]).per(3)
    elsif !params[:type_id].blank?
      @tms = TechnicalMachine.type_search(params[:type_id], filter).order("name ASC").page(params[:page]).per(3)
    elsif !params[:search].blank?
      @tms = TechnicalMachine.search(params[:search], filter).order("name ASC").page(params[:page]).per(3)
    elsif !params[:filter].blank?
      @tms = TechnicalMachine.all_search(filter).order("name ASC").page(params[:page]).per(3)
    else
      @tms = TechnicalMachine.all.order("name ASC").page(params[:page]).per(3)
    end
  end

  def show
    @tm = TechnicalMachine.find(params[:id])
  end

  def information
    @info = Information.first
  end
end
