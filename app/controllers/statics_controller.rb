class StaticsController < ApplicationController

  def mentions_legales
  end

  def methode_alfoldi
  end

  def protection_enfance
  end

  def formation_a_distance
  end

  def recherche_action
  end

  def conferences_familiales
  end

  def temoignages
  end

  def partenaires
  end

  def livres
  end

  def article
  end

  def dico_de_francis
  end

  def newsletter
  end

  def download_dico_de_francis
    send_file 'public/dico_de_francis/Dico_20de_20Francis___04_01_2019.doc', type: 'application/msword', status: 202
  end
end
