require 'json'

file = File.open("./dataset.json", "r")
jobs_json = JSON.parse(file.read)[0]["JobData"]
file.close

jobs_json.each do |job_json|
  job_json_first = {}
  job_json.each do |key, value|
    job_json_first[key.underscore] = value
  end
  JobOffer.create(job_json_first)
  puts JobOffer.last.inspect
end



