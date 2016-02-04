json.array!(@students) do |student|
  json.extract! student, :id, :id, :name, :register_number, :status
  json.url student_url(student, format: :json)
end
