class NewsReaderCli::ApiKeyValidate
  def key_validate
    # verify if the file .env exist.
    # File.expand_path if return true, the file exist. if not, File.new create a file.
    # if not create one. Let user input the key.
    # if .env exists, load the file.
  end
end
