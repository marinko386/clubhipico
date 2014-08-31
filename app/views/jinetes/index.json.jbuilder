json.array!(@jinetes) do |jinete|
  json.extract! jinete, :id, :nombre
  json.url jinete_url(jinete, format: :json)
end
