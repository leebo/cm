class GashesController < ApplicationController
  before_filter :authenticate_admin!

  def index
    #@gashes = Gash.where("points>=50 and id>?",params[:id]).page(params[:page]).per(10)

    respond_to do |format|
      format.html # index.html.erb
      #format.json { render json: @gashes }
    end
  end

  def getwork
    begin
      cmlog=CmLog.last!
      id=cmlog.lastid
    rescue
      id=630011
    end
    gashes= Gash.where("points>=300 and id>?",id)
    info=""
    allpoints=0
    lastid=0
    lastid=id if gashes.empty?
    gashes.each do |gash|
      allpoints += gash.points
      info= info + gash.userid  + "," + gash.password + "," + gash.points.to_s + "\r\n"
      lastid=gash.id
    end

    CmLog.new(:lastid=>lastid,:count=>gashes.count,:allpoints=>allpoints).save

    render :text=>info
  end

end
