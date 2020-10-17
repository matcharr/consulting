class ApplicationController < ActionController::Base
  #add more field to devise
  before_action :configure_devise_parameters, if: :devise_controller?
  before_action :initialize_footer

  def initialize_footer
    holder_urls
    @footer_holder_new = Holder.new
    @footer_holders = {"footer_1" => holder_where(["footer","1"])[0], "footer_2" => holder_where(["footer","2"])[0], "footer_3" => holder_where(["footer","3"])[0]}
  end

  def holder_where(section_array)
    holders = Holder.all 
    section_array.each do |section| 
      holders = holders.select{ |holder| holder.section_array.include?(section) }
    end
    return holders
  end

  def holder_urls
    @urls = Hash.new
    holders = Holder.all
    holders.each do |holder|
      puts holder.pdf.attached?
      @urls["#{holder.id}"] = url_for(holder.pdf)
    end
    return @urls
  end

  def configure_devise_parameters
    devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:first_name, :newsletter, :last_name, :email, :password, :password_confirmation, :current_password)}
    devise_parameter_sanitizer.permit(:account_update) {|u| u.permit(:first_name, :newsletter, :last_name, :email, :password, :password_confirmation, :current_password)}
  end

  def authenticate_administrator
    unless current_user && current_user.administrator
      flash[:danger] = "Page reservée."
      redirect_to new_user_session_path
    end
  end

  def authenticate_user
    unless current_user
      flash[:danger] = "Vous devez créer un compte pour effectuer cette action."
      redirect_to new_user_session_path
    end
  end

  def unparseHTML(string)
   string.gsub("&lt;", "<").gsub("&gt;", ">")
  end

  def parseHTML(string)
    string.gsub("<", "&lt;").gsub(">", "&gt;")
   end
end
