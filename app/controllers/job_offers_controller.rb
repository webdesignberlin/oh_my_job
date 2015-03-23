class JobOffersController < ApplicationController

  def index
    @job_offers = JobOffer.search(params)
    @job_offers ||= JobOffer.all
    respond_to do |format|
        format.html { @job_offers = @job_offers.limit(25)}
        format.json
      end
  end
end
