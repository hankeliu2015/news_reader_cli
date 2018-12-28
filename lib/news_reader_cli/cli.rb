
class NewsReaderCli::CLI

  def start

    NewsReaderCli::ApiKeyValidate.new.key_validate
    Dotenv.load
    NewsReaderCli::ApiService.newsapi
    puts "Welcome to the News Reader CLI!!!"
    menu
    goodbye

  end

  def menu

    help_menu

    input = ""

    while input != "exit" do
      input = gets.chomp.strip

      if input == "list"
        NewsReaderCli::Article.list_all_titles

      elsif input.slice(0) == "a" && (1..(NewsReaderCli::Article.all.length)).include?(input.gsub(/[a]/, '').to_i)
        found_article_instance = NewsReaderCli::Article.find_article_by_article_index(input.gsub(/[a]/, '').to_i)
        puts "Article #{input.gsub(/[a]/, "")}:"
        puts "---------"
        #binding.pry
        puts "#{found_article_instance.content}"
        puts "---------"
        puts "Published Date: #{found_article_instance.publishedAt}"
        puts "Publisher: #{found_article_instance.source["name"]}"
        puts "Article URL: #{found_article_instance.url}"

      elsif input.slice(0) == "u" && (1..(NewsReaderCli::Article.all.length)).include?(input.gsub(/[u]/, '').to_i)
        found_url = NewsReaderCli::Article.find_url_by_article_index(input.gsub(/[u]/, '').to_i)

        puts "Please check your browser, your article is opening now."
        system("open", "#{found_url}")

      elsif input == "exit"
        #not output here. need to end the inner loop.
      else
        puts "Sorry! input is not valid. Please follow instructions."
      end

      self.help_menu

    # puts <<-HEREDOC
    #
    #   1. Please type 'list' for a list of today's news headlines.
    #   2. To read an article, please type 'a' follow by index number.
    #   3. To open an article url, please type 'u' follow by index number.
    #   4. To Exit, type 'exit'.
    #   HEREDOC
    end
  end

  def goodbye
    puts "Goodbye! We will have more news for you tomorrow."
  end

  def help_menu
    puts <<-HEREDOC
      1. Please type 'list' for a list of today's news headlines.
      2. To read an article, please type 'a' follow by index number.
      3. To open an article's url from publisher's website, please type 'u' follow by index number.
      4. To Exit, type 'exit'.
      HEREDOC
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
