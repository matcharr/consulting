require 'test_helper'

class StaticsControllerTest < ActionDispatch::IntegrationTest
  test "should get presentation" do
    get statics_presentation_url
    assert_response :success
  end

  test "should get formation" do
    get statics_formation_url
    assert_response :success
  end

  test "should get formation_a_distance" do
    get statics_formation_a_distance_url
    assert_response :success
  end

  test "should get conseil" do
    get statics_conseil_url
    assert_response :success
  end

  test "should get recherche_action" do
    get statics_recherche_action_url
    assert_response :success
  end

  test "should get animation_musicale" do
    get statics_animation_musicale_url
    assert_response :success
  end

  test "should get conferences_familiales" do
    get statics_conferences_familiales_url
    assert_response :success
  end

  test "should get temoignages" do
    get statics_temoignages_url
    assert_response :success
  end

  test "should get partenaires" do
    get statics_partenaires_url
    assert_response :success
  end

  test "should get livres" do
    get statics_livres_url
    assert_response :success
  end

  test "should get articles" do
    get statics_articles_url
    assert_response :success
  end

  test "should get dico_de_francis" do
    get statics_dico_de_francis_url
    assert_response :success
  end

  test "should get on_repond_a_vos_questions" do
    get statics_on_repond_a_vos_questions_url
    assert_response :success
  end

  test "should get newsletter" do
    get statics_newsletter_url
    assert_response :success
  end

end
