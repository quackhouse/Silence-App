class LambsController < ApplicationController
  def new

  end

  def create
    @lamb = Lamb.new
    # @lamb.is_silent = true
    @lamb.save

    respond_to do |format|
      format.html { redirect_to '/' }
      format.json { render :json => @lamb }
    end
  end

  def update

    id = params[:id].to_i
    @lamb = Lamb.where(id: id).first
    @lamb.update_attributes!(is_silent: false)
    @lamb.reload

    respond_to do |format|
      format.html { redirect_to "lambs/#{@lamb.id}" }
      format.json { render :json => @lamb }
    end
  end

end