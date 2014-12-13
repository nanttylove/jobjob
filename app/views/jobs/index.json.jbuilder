json.array!(@jobs) do |job|
  json.extract! job, :id, :user_id, :sex_ids, :disability_ids, :welfare_ids, :organizationname, :branch, :address, :province_id, :education, :age, :position, :info, :jobtype_id, :wage, :document, :apply
  json.url job_url(job, format: :json)
end
