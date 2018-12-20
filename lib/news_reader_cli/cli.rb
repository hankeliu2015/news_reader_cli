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

    puts "To read an article, please type a index number. To Exit, type exit. "

    input = ""
    while input != "exit" do
      input = gets.chomp.strip

      if (1..(NewsReaderCli::Article.all.length)).include?(input.to_i)
        found_content = NewsReaderCli::Article.find_content_by_article_index(input.to_i)
        puts "#{found_content}"
      else
        puts "It is not a valid input article number, please re-type the number match artiles."
      end
    end

  end

end # end of class
