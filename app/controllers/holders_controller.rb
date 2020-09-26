class HoldersController < ApplicationController
  before_action :authenticate_administrator, :holder_urls

  def new
    @holder = Holder.new
    @holders = Holder.all
  end

  def create
    if params[:pdf]
      section = params[:holder].select{|k,v|v==["on"]}.keys
      section = params[:holder][:section] if params[:holder][:section]
      @holder = Holder.create(title: params[:holder][:title], section: section)
      @holder.pdf.attach(params[:pdf])
      respond_to do |format|
        format.html { redirect_to folder_path }
        format.js { }
      end
    else
      respond_to do |format|
        format.html { redirect_to folder_path }
        format.js { }
      end
    end
  end

  def edit
    @holder = Holder.find(params[:id])
    @section = @holder.section
    respond_to do |format|
      format.html { redirect_to folder_path }
      format.js { }
    end
  end

  def update
    @holder = Holder.find(params[:id])
    @holder.update(title: params[:holder][:title])
    if params[:pdf]
      @holder.pdf.purge 
      @holder.pdf.attach(params[:pdf])
    end
    respond_to do |format|
      format.html { redirect_to folder_path }
      format.js { }
    end
  end

  def destroy
    @holder = Holder.find(params[:id])
    @holder.pdf.purge
    @holder.destroy
    respond_to do |format|
      format.html { redirect_to folder_path }
      format.js { }
    end
  end
end
