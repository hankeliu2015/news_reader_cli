class NewsReaderCli::ApiKeyValidate
  def key_validate
    # verify if the file .env exist.
    # File.expand_path if return true, the file exist. if not, File.new create a file.
    # if not create one. Let user input the key.
    # if .env exists, load the file.
    if !File.exist?(".env")
      key_file = File.new(".env", "w+")
      puts "please type in API Key from API News:"

      # a condition verify key value is AES 128 Hex string 32 chars

      key = gets.chomp.strip

      while !key.match(/([0-9]|\w){32}/)  do

        # break if key == "exit"
        # need to get out of the loop and remove the file .env

        puts <<-HEREDOC

        Your API keys value shows invalid.
        Please check verify your API Key and type in again.

        HEREDOC

        key = gets.chomp.strip
      end

      key_file.puts("key = #{key}")
      key_file.close

      #binding.pry
    end

  end
end
