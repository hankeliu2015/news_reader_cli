class NewsReaderCli::ApiService

  def self.newsapi

    url = "https://newsapi.org/v2/top-headlines?country=us&apiKey=71fa5ddcc82d4f8ab52693f5f0ad3784"
    # url = 'https://newsapi.org/v2/top-headlines?'\
    #       'country=us&'\
    #       'apiKey=71fa5ddcc82d4f8ab52693f5f0ad3784'\
    #       'pageSize=100'
    req = open(url)
    response_body = req.read
    json = JSON.parse(response_body)
    json["articles"]
    #binding.pry
  end

end
