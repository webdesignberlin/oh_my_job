require 'test_helper'

class JobOffersControllerTest < ActionController::TestCase

  test "should get index" do
    6.times{Fabricate.create(:job_offer)}
    get :index
    assert_response :success
    assert_equal(5, assigns(:job_offers).length)
  end

  test "should get json index" do
    job = Fabricate.create(:job_offer)
    5.times{ Fabricate.create(:job_offer) }
    get :index, format: :json
    assert_response :success
    assert_equal(6, assigns(:job_offers).length)
    assert_equal(job, assigns(:job_offers).first)
  end

  test "should get only the result searched" do
    Fabricate.create(:job_offer)
    searched_job = Fabricate.create(:job_offer, job_summary:"serialkiller")
    get :index, query: ("serialkiller" " " " ")
    assert_response :success
    assert_equal [searched_job], assigns(:job_offers)
  end

end
