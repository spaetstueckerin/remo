require 'test_helper'

class ProduktionSitesControllerTest < ActionController::TestCase
  setup do
    @produktion_site = produktion_sites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:produktion_sites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create produktion_site" do
    assert_difference('ProduktionSite.count') do
      post :create, produktion_site: { description: @produktion_site.description, name: @produktion_site.name }
    end

    assert_redirected_to produktion_site_path(assigns(:produktion_site))
  end

  test "should show produktion_site" do
    get :show, id: @produktion_site
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @produktion_site
    assert_response :success
  end

  test "should update produktion_site" do
    put :update, id: @produktion_site, produktion_site: { description: @produktion_site.description, name: @produktion_site.name }
    assert_redirected_to produktion_site_path(assigns(:produktion_site))
  end

  test "should destroy produktion_site" do
    assert_difference('ProduktionSite.count', -1) do
      delete :destroy, id: @produktion_site
    end

    assert_redirected_to produktion_sites_path
  end
end
