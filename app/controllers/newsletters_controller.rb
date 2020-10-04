class NewslettersController < ApplicationController
  before_action :set_newsletter, only: [:show, :edit, :update, :destroy]

  def index
    @newsletters = Newsletter.all
  end

  def show
  end

  def new
    @newsletter = Newsletter.new
  end


  def edit
  end

  def create
    @newsletter = Newsletter.create(newsletter_params)
    redirect_to newsletters_path
  end

  def update
    @newsletter.update(newsletter_params)
    redirect_to newsletters_path
  end

  def destroy
    @newsletter.destroy
    redirect_to newsletters_path
  end

  private
    def set_newsletter
      @newsletter = Newsletter.find(params[:id])
    end

    def newsletter_params
      params[:newsletter][:body] = unparseHTML(params[:folder][:body])
      params.require(:newsletter).permit(:object, :body)
    end
end
