
class NewsReaderCli::CLI

  def start
    NewsReaderCli::ApiService.newsapi
    puts "Welcome to the News Reader CLI!!!"
    menu
  end

  def menu

    puts "Please type 'l' today's news headlines."
    puts "To read an article, please type 'a' follow by index number."
    puts "To get an article url, please type 'u' follow by index number."
    puts "To Exit, type 'exit'."

    input = ""

    while input != "exit" do
      input = gets.chomp.strip

      if input == "l"
        NewsReaderCli::Article.list_all_titles
        #binding.pry
      elsif input.slice(0) == "a" && (1..(NewsReaderCli::Article.all.length)).include?(input.gsub(/[a]/, '').to_i)
        found_content = NewsReaderCli::Article.find_content_by_article_index(input.gsub(/[a]/, '').to_i)
        puts "#{found_content}"
        #binding.pry
      elsif input.slice(0) == "u" && (1..(NewsReaderCli::Article.all.length)).include?(input.gsub(/[u]/, '').to_i)
        found_url = NewsReaderCli::Article.find_url_by_article_index(input.gsub(/[u]/, '').to_i)
        puts "#{found_url}"
        # binding.pry
        # puts "0"
      else
        puts "Please enter a valid input article number, please follow instructions."
        puts "Please type 'l' today's news headlines."
        puts "To read an article, please type 'a' follow by index number."
        puts "To get an article url, please type 'u' follow by index number."
        puts "To Exit, type 'exit'."

      end
    end
  end
end #end of class

        # input2 = ""
        # input2 = gets.chomp.strip
        #
        #   if  input2.slice!(0) == "a" && (1..(NewsReaderCli::Article.all.length)).include?(input2.to_i)
        #     found_content = NewsReaderCli::Article.find_content_by_article_index(input2.to_i)
        #     puts "#{found_content}"
        #     puts "Please type in 'l' to get today's news headlines"
        #     puts "To Exit, pease type 'exit'."
        #
        #   elsif input2.slice!(0) == "u" && (1..(NewsReaderCli::Article.all.length)).include?(input2.to_i)
        #     found_url = NewsReaderCli::Article.find_url_by_article_index(input2.to_i)
        #     puts "#{found_url}"
        #     puts "Please type in 'l' to get today's news headlines"
        #     puts "To Exit, pease type 'exit'."
        #   elsif
        #     puts "It is not a valid input article number, please follow instructions."
        #   end
      # else
      #   puts "Please type 'l' today's news headlines."
      #   puts "To Exit, type 'exit'."
