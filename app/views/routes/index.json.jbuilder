json.array!(@routes) do |route|
  json.extract! route, :id, :startStation, :endStation, :all
  json.url route_url(route, format: :json)
end
