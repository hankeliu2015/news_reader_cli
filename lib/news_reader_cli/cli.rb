#puts "cli is also working"
class NewsReaderCli::CLI

  def start
    NewsReaderCli::ApiService.newsapi
    puts "Welcome to the News Reader CLI!!!"
    menu
  end

  def menu
    puts "Here are today's news headlines"
    NewsReaderCli::Article.list_all_titles

    binding.pry
    puts "end of line"
  end


end
