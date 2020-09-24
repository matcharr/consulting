class StaticsController < ApplicationController

  def mentions_legales
  end

  def methode_alfoldi
  end

  def protection_enfance
    @holder = Holder.new
    @urls = holder_urls(Holder.all)
    @holders = holder_where(["protection de l\'enfance","formation"])
  end

  def conferences_familiales
    @holder = Holder.new
    @holders_formation = holder_where(["conferences familiales","formation"])
    @holders_article = holder_where(["conferences familiales","article"])
    @urls = holder_urls(Holder.all)
  end

  def temoignages
  end

  def partenaires
  end

  def livres
  end

  def articles
    @holder = Holder.new
    @urls = holder_urls(Holder.all)
    @holders = holder_where(["article"])
  end

  def dico_de_francis
  end

  def newsletter
  end

  def presentation
  end

  def download_dico_de_francis
    send_file 'public/dico_de_francis/Dico_20de_20Francis___04_01_2019.doc', type: 'application/msword', status: 202
  end
end
