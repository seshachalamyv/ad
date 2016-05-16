json.array!(@profiles) do |profile|
  json.extract! profile, :id, :name, :cname, :addr, :mob
  json.url profile_url(profile, format: :json)
end
