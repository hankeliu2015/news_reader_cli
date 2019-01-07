class NewsReaderCli::ApiKeyValidate
  def key_validate

    if !File.exist?(".env")
      puts "please type in API Key from API News:"
      key = gets.chomp.strip

      url = 'https://newsapi.org/v2/top-headlines?'\
            'country=us&'\
            "apiKey=#{key}&"\
            'pageSize=100'
      begin
        req = open(url)
      rescue
        puts "You API Key is not valid, please try again."
        return self.key_validate
      end

      key_file = File.new(".env", "w+")
      key_file.puts("key = #{key}")
      key_file.close
    end
  end
end

      # while !key.match(/([0-9]|\w){32}/)  do
      #
      #   break if key == "exit"
      #   # need to get out of the loop and remove the file .env
      #
      #   puts <<-HEREDOC
      #
      #   Your API keys value shows invalid.
      #   Please check verify your API Key and type in again.
      #
      #   HEREDOC
      #
      #   key = gets.chomp.strip
      # end
