class CreateJobOffers < ActiveRecord::Migration
  def change
    create_table :job_offers do |t|
      t.integer :document_id
      t.string :job_title
      t.string :organisation_name
      t.string :agency_sub_element
      t.string :salary_min
      t.string :salary_max
      t.string :salary_basis
      t.date :start_date
      t.date :end_date
      t.string :who_may_apply_text
      t.string :paypla
      t.integer :series
      t.string :grade
      t.string :work_schedule
      t.string :worktype
      t.string :locations
      t.string :annoncement_number
      t.text :job_summary
      t.string :apply_online_url

      t.timestamps null: false
    end
  end
end
