json.array!(@papers) do |paper|
  json.extract! paper, :id, :name, :content, :slug
  json.url paper_url(paper, format: :json)
end
