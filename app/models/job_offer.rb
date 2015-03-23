class JobOffer < ActiveRecord::Base

  def self.search(query)
    if query == ""
      self.all
    elsif query
      pg_query = query.split(' ').join(' & ')
      where("to_tsvector(job_summary) @@ to_tsquery('#{pg_query}') or to_tsvector(job_title) @@ to_tsquery('#{pg_query}')")
    else
      where(false)
    end
  end
end
