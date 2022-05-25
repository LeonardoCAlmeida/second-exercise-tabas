class ApartmentsController < ApplicationController
  def index
    @properties = Property.all
    @properties = Property.all.by_state(params[:state_id]) if params[:state_id].present?
    @properties = @properties.paginate(page: params[:page], per_page: 15)

    respond_to do |format|
      format.html
      format.js
    end
  end
end
