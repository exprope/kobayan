json.array!(@imakokos) do |imakoko|
  json.extract! imakoko, :id, :name
  json.url imakoko_url(imakoko, format: :json)
end
