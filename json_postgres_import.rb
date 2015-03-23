require 'json'

file = File.open("./dataset.json", "r")
jobs_json = JSON.parse(file.read)
file.close

jobs_json.each do |jobs_json_data|
  jobs_json_data.each do |job_json_data|
    job_json_first = {}
    next unless job_json_data[0]=="JobData"
    job_json_data[1].each do |data|
      data.each do |key, value|
        puts key.inspect
        job_json_first[key.underscore] = value
      end
    end
    JobOffer.create(job_json_first)
    puts "#{JobOffer.count} : #{JobOffer.last.inspect}"
  end
end



