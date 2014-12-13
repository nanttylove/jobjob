json.array!(@resumes) do |resume|
  json.extract! resume, :id, :user_id, :sex_id, :fname, :lname, :religion, :originnationality, :nationality, :nationalid, :disablerid, :birthdate, :disability_ids, :phone, :address, :education, :training, :contactperson
  json.url resume_url(resume, format: :json)
end
