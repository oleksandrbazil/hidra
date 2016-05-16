require 'test_helper'

class WorksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @work = works(:one)
  end

  test "should get index" do
    get works_url
    assert_response :success
  end

  test "should get new" do
    get new_work_url
    assert_response :success
  end

  test "should create work" do
    assert_difference('Work.count') do
      post works_url, params: { work: { client_id: @work.client_id, description: @work.description, developer_id: @work.developer_id, name: @work.name, payment: @work.payment, progress: @work.progress, project_id: @work.project_id } }
    end

    assert_redirected_to work_path(Work.last)
  end

  test "should show work" do
    get work_url(@work)
    assert_response :success
  end

  test "should get edit" do
    get edit_work_url(@work)
    assert_response :success
  end

  test "should update work" do
    patch work_url(@work), params: { work: { client_id: @work.client_id, description: @work.description, developer_id: @work.developer_id, name: @work.name, payment: @work.payment, progress: @work.progress, project_id: @work.project_id } }
    assert_redirected_to work_path(@work)
  end

  test "should destroy work" do
    assert_difference('Work.count', -1) do
      delete work_url(@work)
    end

    assert_redirected_to works_path
  end
end
