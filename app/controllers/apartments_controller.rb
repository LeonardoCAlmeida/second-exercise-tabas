class ApartmentsController < ApplicationController
  def index
    @properties = Property.all.paginate(page: params[:page], per_page: 12)
    if params[:state_id].present?
      @properties = Property.all.by_state(params[:state_id]).paginate(page: params[:page], per_page: 12)
    end
    respond_to do |format|
      format.html
      format.js
    end
  end
end
