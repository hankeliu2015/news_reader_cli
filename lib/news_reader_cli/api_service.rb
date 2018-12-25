class NewsReaderCli::ApiService

  def self.newsapi
    #url = "https://newsapi.org/v2/top-headlines?country=us&apiKey=(put key here)&pageSize=100"
    assigned_api_key = ENV['key'].strip
    #binding.pry
    url = 'https://newsapi.org/v2/top-headlines?'\
          'country=us&'\
          "apiKey=#{assigned_api_key}&"\
          'pageSize=100'
    req = open(url)
    response_body = req.read
    json = JSON.parse(response_body)

    json["articles"].each do |article|
      NewsReaderCli::Article.new(article)
    end
    #binding.pry

  end


end
