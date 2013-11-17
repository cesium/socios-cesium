json.array!(@members) do |member|
  json.extract! member, :name, :member_number, :email, :phone, :birthday, :paid, :student_number, :location, :course, :responsible
  json.url member_url(member, format: :json)
end
