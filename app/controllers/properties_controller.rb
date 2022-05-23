class PropertiesController < ApplicationController
  before_action :set_property

  def new; end

  def create; end

  def update
    @property.update(property_params)
    redirect_to @property
  end

  def edit; end

  def destroy; end

  def index
    @properties = Property.all
    if params[:state_id].present?
      @properties = Property.all.by_state(params[:state_id])
    end
  end

  def show
    @property = Property.find_by(id: params[:id]) if params[:id]
    @properties = Property.where(state_id: @property.state_id || params[:state_id])
  end

  def properties_controller
    @properties = Property.all
    if params[:state_id].present?
      @properties = Property.all.by_state(params[:state_id])
    end
  end

  private

  def property_params
    params.require(:property).permit(:id, :name, photos: [])
  end

  def set_property
    @property = Property.find_by(id: params[:id]) if params[:id]
  end
end
