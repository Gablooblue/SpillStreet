class ApplicationController < ActionController::Base
  before_action :set_global_search_variable

  def set_global_search_variable
    @q = Organization.search(params[:q])
  end

  def search
    index
    render :index
  end
end
