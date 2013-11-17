json.array!(@courses) do |course|
  json.extract! course, :name, :acronym
  json.url course_url(course, format: :json)
end
