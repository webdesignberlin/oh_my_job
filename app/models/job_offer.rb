class JobOffer < ActiveRecord::Base

  def self.search(query)
    puts "Query is : #{query}"

    if query["job_summary"] = "" || query["job_title"] == "" || query["location"] = ""
      self.all
    elsif query
      query = query.map { |key,value| value.split(' ').join(' & ') }
      where("to_tsvector(job_summary) @@ to_tsquery('#{query[1]}') \
            or to_tsvector(job_title) @@ to_tsquery('#{query[2]}') \
            or to_tsvector(locations) @@ to_tsquery('#{query[3]}')")
    else
      where(false)
    end

  end
end
