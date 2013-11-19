json.array!(@otels) do |otel|
  json.extract! otel, :Oname, :Oemail, :Ophone, :Oadress
  json.url otel_url(otel, format: :json)
end
