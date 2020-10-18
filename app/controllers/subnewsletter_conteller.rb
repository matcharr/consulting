class SubnewslettersController < ApplicationController
    before_action :set_subnewsletter, only: [:show, :edit, :update, :destroy]
  
    def index
      @subnewsletters = subNewsletter.all
    end
  
    def show
    end
  
    def new
      @subnewsletter = subNewsletter.new
    end
  
  
    def edit
    end
  
    def create
      @subnewsletter = subNewsletter.create(subnewsletter_params)
      redirect_to subnewsletters_path
    end
  
    def update
      @subnewsletter.update(subnewsletter_params)
      redirect_to subnewsletters_path
    end
  
    def destroy
      @subnewsletter.destroy
      redirect_to subnewsletters_path
    end
  
    private
      def set_subnewsletter
        @subnewsletter = subNewsletter.find(params[:id])
      end
  
      def subnewsletter_params
        params[:subnewsletter][:body] = unparseHTML(params[:subnewsletter][:body])
        params.require(:subnewsletter).permit(:object, :body)
      end
  end
  