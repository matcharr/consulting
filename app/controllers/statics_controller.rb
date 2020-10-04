class StaticsController < ApplicationController
  before_action :holder_urls, only: [:protection_enfance, :conferences_familiales, :articles]

  def mentions_legales
  end

  def methode_alfoldi
  end

  def protection_enfance
    @holder = Holder.new
    @holders = holder_where(["protection enfance","formation"])
  end

  def conferences_familiales
    @holder = Holder.new
    @holders_formation = holder_where(["conferences familiales","formation"])
    @holders_article = holder_where(["conferences familiales","article"])
  end

  def temoignages
  end

  def partenaires
  end

  def livres
  end

  def articles
    @holder = Holder.new
    @holders = holder_where(["article"])
  end

  def dico_de_francis
    @holder_new = Holder.new
    @holder = holder_where(["dico de francis"])[0]
    puts "ù"*100
    puts @holder
  end

  def newsletter
  end

  def presentation
  end

  def download_dico_de_francis
    send_file 'public/dico_de_francis/Dico_20de_20Francis___04_01_2019.doc', type: 'application/msword', status: 202
  end
end
