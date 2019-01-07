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
