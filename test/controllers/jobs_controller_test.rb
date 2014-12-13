require 'test_helper'

class JobsControllerTest < ActionController::TestCase
  setup do
    @job = jobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job" do
    assert_difference('Job.count') do
      post :create, job: { address: @job.address, age: @job.age, apply: @job.apply, branch: @job.branch, disability_ids: @job.disability_ids, document: @job.document, education: @job.education, info: @job.info, jobtype_id: @job.jobtype_id, organizationname: @job.organizationname, position: @job.position, province_id: @job.province_id, sex_ids: @job.sex_ids, user_id: @job.user_id, wage: @job.wage, welfare_ids: @job.welfare_ids }
    end

    assert_redirected_to job_path(assigns(:job))
  end

  test "should show job" do
    get :show, id: @job
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @job
    assert_response :success
  end

  test "should update job" do
    patch :update, id: @job, job: { address: @job.address, age: @job.age, apply: @job.apply, branch: @job.branch, disability_ids: @job.disability_ids, document: @job.document, education: @job.education, info: @job.info, jobtype_id: @job.jobtype_id, organizationname: @job.organizationname, position: @job.position, province_id: @job.province_id, sex_ids: @job.sex_ids, user_id: @job.user_id, wage: @job.wage, welfare_ids: @job.welfare_ids }
    assert_redirected_to job_path(assigns(:job))
  end

  test "should destroy job" do
    assert_difference('Job.count', -1) do
      delete :destroy, id: @job
    end

    assert_redirected_to jobs_path
  end
end
