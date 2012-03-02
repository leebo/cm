class LogController < ApplicationController
  def index
    @cm_logs=CmLog.page(params[:page]).per(5)
    respond_to do |format|
      format.html # index.html.erb
    end

  end
end
