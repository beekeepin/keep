require 'test_helper'

class BeeLogsControllerTest < ActionController::TestCase
  setup do
    @bee_log = bee_logs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bee_logs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bee_log" do
    assert_difference('BeeLog.count') do
      post :create, bee_log: { colony_name: @bee_log.colony_name, humidity: @bee_log.humidity, latitude: @bee_log.latitude, longitude: @bee_log.longitude, monitor_data: @bee_log.monitor_data, status: @bee_log.status, temperature: @bee_log.temperature }
    end

    assert_redirected_to bee_log_path(assigns(:bee_log))
  end

  test "should show bee_log" do
    get :show, id: @bee_log
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bee_log
    assert_response :success
  end

  test "should update bee_log" do
    patch :update, id: @bee_log, bee_log: { colony_name: @bee_log.colony_name, humidity: @bee_log.humidity, latitude: @bee_log.latitude, longitude: @bee_log.longitude, monitor_data: @bee_log.monitor_data, status: @bee_log.status, temperature: @bee_log.temperature }
    assert_redirected_to bee_log_path(assigns(:bee_log))
  end

  test "should destroy bee_log" do
    assert_difference('BeeLog.count', -1) do
      delete :destroy, id: @bee_log
    end

    assert_redirected_to bee_logs_path
  end
end
