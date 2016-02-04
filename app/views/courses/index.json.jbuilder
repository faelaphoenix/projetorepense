json.array!(@courses) do |course|
  json.extract! course, :id, :id, :name, :description, :status
  json.url course_url(course, format: :json)
end
