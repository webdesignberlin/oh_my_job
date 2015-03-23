require 'test_helper'

class JobOffersControllerTest < ActionController::TestCase
  setup do
    @job_offer = job_offers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:job_offers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job_offer" do
    assert_difference('JobOffer.count') do
      post :create, job_offer: { agency_sub_element: @job_offer.agency_sub_element, announcement_number: @job_offer.announcement_number, apply_online_url: @job_offer.apply_online_url, document_id: @job_offer.document_id, end_date: @job_offer.end_date, grade: @job_offer.grade, job_summary: @job_offer.job_summary, job_title: @job_offer.job_title, locations: @job_offer.locations, organization_name: @job_offer.organization_name, pay_plan: @job_offer.pay_plan, salary_basis: @job_offer.salary_basis, salary_max: @job_offer.salary_max, salary_min: @job_offer.salary_min, series: @job_offer.series, start_date: @job_offer.start_date, who_may_apply_text: @job_offer.who_may_apply_text, work_schedule: @job_offer.work_schedule, work_type: @job_offer.work_type }
    end

    assert_redirected_to job_offer_path(assigns(:job_offer))
  end

  test "should show job_offer" do
    get :show, id: @job_offer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @job_offer
    assert_response :success
  end

  test "should update job_offer" do
    patch :update, id: @job_offer, job_offer: { agency_sub_element: @job_offer.agency_sub_element, announcement_number: @job_offer.announcement_number, apply_online_url: @job_offer.apply_online_url, document_id: @job_offer.document_id, end_date: @job_offer.end_date, grade: @job_offer.grade, job_summary: @job_offer.job_summary, job_title: @job_offer.job_title, locations: @job_offer.locations, organization_name: @job_offer.organization_name, pay_plan: @job_offer.pay_plan, salary_basis: @job_offer.salary_basis, salary_max: @job_offer.salary_max, salary_min: @job_offer.salary_min, series: @job_offer.series, start_date: @job_offer.start_date, who_may_apply_text: @job_offer.who_may_apply_text, work_schedule: @job_offer.work_schedule, work_type: @job_offer.work_type }
    assert_redirected_to job_offer_path(assigns(:job_offer))
  end

  test "should destroy job_offer" do
    assert_difference('JobOffer.count', -1) do
      delete :destroy, id: @job_offer
    end

    assert_redirected_to job_offers_path
  end
end
