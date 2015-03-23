json.array!(@job_offers) do |job_offer|
  json.extract! job_offer, :id, :document_id, :job_title, :organisation_name, :agency_sub_element, :salary_min, :salary_max, :salary_basis, :start_date, :end_date, :who_may_apply_text, :paypla, :series, :grade, :work_schedule, :worktype, :locations, :annoncement_number, :job_summary, :apply_online_url
  json.url job_offer_url(job_offer, format: :json)
end
