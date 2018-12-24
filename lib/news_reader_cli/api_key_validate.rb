class NewsReaderCli::ApiKeyValidate
  def key_validate
    # verify if the file .env exist.
    # File.expand_path if return true, the file exist. if not, File.new create a file.
    # if not create one. Let user input the key.
    # if .env exists, load the file.
    if !File.exist?(".env")
      key_file = File.new(".env", "w+")
      puts "please type in API Key from API News:"
      key = gets.chomp.strip
      key_file.puts("key = #{key}")
      key_file.close

      #binding.pry
    end

  end
end
