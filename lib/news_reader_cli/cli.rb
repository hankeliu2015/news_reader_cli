#puts "cli is also working"
class NewsReaderCli::CLI


  def start
    puts "Welcome to the News Read CLI!!!"
    menu
    NewsReaderCli::ApiService.newsapi
  end

  def menu
    puts "Here are today's news headlines"

  end

end
