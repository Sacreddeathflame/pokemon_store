class HomeController < ApplicationController
  before_action :initialize_session
  before_action :load_tms, only: [:index]

  def index
    filter = ''
    if !params[:filter].blank?
      filter = params[:filter]
    end

    if !params[:type_id].blank? && !params[:search].blank?
      @tms = TechnicalMachine.full_search(params[:search], params[:type_id], filter).order('name ASC').page(params[:page]).per(3)
    elsif !params[:type_id].blank?
      @tms = TechnicalMachine.type_search(params[:type_id], filter).order('name ASC').page(params[:page]).per(3)
    elsif !params[:search].blank?
      @tms = TechnicalMachine.search(params[:search], filter).order('name ASC').page(params[:page]).per(3)
    elsif !params[:filter].blank?
      @tms = TechnicalMachine.all_search(filter).order('name ASC').page(params[:page]).per(3)
    else
      @tms = TechnicalMachine.all.order('name ASC').page(params[:page]).per(3)
    end
  end

  def show
    @tm = TechnicalMachine.find(params[:id])
  end

  def information
    @info = Information.first
  end

  def add_to_cart
    session[:cart] << params[:id].to_i unless session[:cart].include?(params[:id].to_i)

    redirect_to root_url
  end

  def load_tms
    @tms_in_cart = TechnicalMachine.find(session[:cart])
  end

  private

  def initialize_session
    session[:cart] ||= []
  end


end
