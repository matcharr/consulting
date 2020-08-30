class StaticsController < ApplicationController
  def methode_alfoldi
  end

  def formation
  end

  def formation_a_distance
  end

  def conseil
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

  def presse
  end

  def dico_de_francis
  end

  def on_repond_a_vos_questions
  end

  def newsletter
  end

  def download_dico_de_francis
    send_file 'public/dico_de_francis/Dico_20de_20Francis___04_01_2019.doc', type: 'application/msword', status: 202
  end
end
