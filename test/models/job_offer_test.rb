require 'test_helper'

class JobOfferTest < ActiveSupport::TestCase
  test "have a valid fabrication" do
    assert(Fabricate.build(:job_offer).valid?)
  end

  test "should return an empty array if not found" do
    Fabricate.create(:job_offer)
    assert_equal [], JobOffer.search('something')
  end

  test "should return job with matching summary" do
    2.times{ Fabricate.create(:job_offer) }
    job = Fabricate.create(:job_offer, job_summary: "something really cool")
    assert_equal [job], JobOffer.search('something')
  end

  test "should return job with matching job_title" do
    Fabricate.create(:job_offer)
    job = Fabricate.create(:job_offer, job_title:"serial killer")
    assert_equal [job], JobOffer.search('serial killer')
  end
end

