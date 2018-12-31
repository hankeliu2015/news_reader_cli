class NewsReaderCli::ApiKeyInputValidate

  def key_input_validate
    puts "please type in API Key from API News:"
    @key = gets.chomp.strip

    while !key.match(/([0-9]|\w){32}/)  do

      break if @key == "exit"
      # need to get out of the loop and remove the file .env

      puts <<-HEREDOC

      Your API keys value might missing digits or contain invalid Charactors.
      Please verify your API Key and try again. Thanks!

      HEREDOC

      @key = gets.chomp.strip
    end

  end #end of method

  def key
    @key
  end

end #end of class
