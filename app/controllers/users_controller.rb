class UsersController < ApplicationController
  def update
    User.find(params[:id]).update(newsletter: true)
    flash[:success] = "Vous avez bien été abonné à la newsletter."
    redirect_to newsletters_path
  end
end