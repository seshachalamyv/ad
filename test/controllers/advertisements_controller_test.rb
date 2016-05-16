require 'test_helper'

class AdvertisementsControllerTest < ActionController::TestCase
  setup do
    @advertisement = advertisements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:advertisements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create advertisement" do
    assert_difference('Advertisement.count') do
      post :create, advertisement: { acost: @advertisement.acost, active: @advertisement.active, balance: @advertisement.balance, bcost: @advertisement.bcost, cost: @advertisement.cost, date: @advertisement.date, name: @advertisement.name, profile_id: @advertisement.profile_id, type: @advertisement.type }
    end

    assert_redirected_to advertisement_path(assigns(:advertisement))
  end

  test "should show advertisement" do
    get :show, id: @advertisement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @advertisement
    assert_response :success
  end

  test "should update advertisement" do
    patch :update, id: @advertisement, advertisement: { acost: @advertisement.acost, active: @advertisement.active, balance: @advertisement.balance, bcost: @advertisement.bcost, cost: @advertisement.cost, date: @advertisement.date, name: @advertisement.name, profile_id: @advertisement.profile_id, type: @advertisement.type }
    assert_redirected_to advertisement_path(assigns(:advertisement))
  end

  test "should destroy advertisement" do
    assert_difference('Advertisement.count', -1) do
      delete :destroy, id: @advertisement
    end

    assert_redirected_to advertisements_path
  end
end
