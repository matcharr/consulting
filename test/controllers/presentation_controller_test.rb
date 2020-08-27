require 'test_helper'

class PresentationControllerTest < ActionDispatch::IntegrationTest
  test "should get formation" do
    get presentation_formation_url
    assert_response :success
  end

  test "should get formation_a_distance" do
    get presentation_formation_a_distance_url
    assert_response :success
  end

  test "should get conseil" do
    get presentation_conseil_url
    assert_response :success
  end

  test "should get recherche_action" do
    get presentation_recherche_action_url
    assert_response :success
  end

  test "should get animation_musicale" do
    get presentation_animation_musicale_url
    assert_response :success
  end

  test "should get conferences_familiales" do
    get presentation_conferences_familiales_url
    assert_response :success
  end

  test "should get temoignages" do
    get presentation_temoignages_url
    assert_response :success
  end

  test "should get partenaires" do
    get presentation_partenaires_url
    assert_response :success
  end

  test "should get livres" do
    get presentation_livres_url
    assert_response :success
  end

  test "should get articles" do
    get presentation_articles_url
    assert_response :success
  end

  test "should get dico_de_francis" do
    get presentation_dico_de_francis_url
    assert_response :success
  end

  test "should get on_repond_a_vos_questions" do
    get presentation_on_repond_a_vos_questions_url
    assert_response :success
  end

  test "should get newsletter" do
    get presentation_newsletter_url
    assert_response :success
  end

end
