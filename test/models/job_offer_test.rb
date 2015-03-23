require 'test_helper'

class JobOfferTest < ActiveSupport::TestCase
  test "have a valid fabrication" do
    assert(Fabricate.build(:job_offer).valid?)
  end

  test "should return an empty array if not found" do
    Fabricate.create(:job_offer)
    assert_equal [], JobOffer.search('something')
  end

  test "should return job with mathing summary" do
    2.times{ Fabricate.create(:job_offer) }
    job = Fabricate.create(:job_offer, job_summary: "something really cool")
    assert_equal [job], JobOffer.search('something')
  end

  test "controllercase" do
    Fabricate.create(:job_offer)
    job = Fabricate.create(:job_offer, job_summary:"serialkiller")
    assert_equal [job], JobOffer.search('serialkiller')
  end
end
