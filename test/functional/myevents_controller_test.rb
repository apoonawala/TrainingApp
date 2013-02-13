require 'test_helper'

class MyeventsControllerTest < ActionController::TestCase
  setup do
    @myevent = myevents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:myevents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create myevent" do
    assert_difference('Myevent.count') do
      post :create, myevent: { athlete_id: @myevent.athlete_id }
    end

    assert_redirected_to myevent_path(assigns(:myevent))
  end

  test "should show myevent" do
    get :show, id: @myevent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @myevent
    assert_response :success
  end

  test "should update myevent" do
    put :update, id: @myevent, myevent: { athlete_id: @myevent.athlete_id }
    assert_redirected_to myevent_path(assigns(:myevent))
  end

  test "should destroy myevent" do
    assert_difference('Myevent.count', -1) do
      delete :destroy, id: @myevent
    end

    assert_redirected_to myevents_path
  end
end
