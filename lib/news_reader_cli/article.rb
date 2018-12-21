class NewsReaderCli::Article

  attr_accessor :source, :author, :title, :description, :url, :urltoimage, :publishedat, :content

  @@all = []

  def initialize(article_hash)

    article_hash.each do |method, article_data|
      self.send("#{method}=", article_data) if self.respond_to?("#{method}=")
    end
    @@all << self

  end

  def self.all
    @@all
  end

  #list all the articlels titles (in alphabat )
  def self.list_all_titles
    self.all.each.with_index(1) do |article, index|
      puts "#{index}. #{article.title}"
    end
  end

  # pick an article to show the content
  def self.find_content_by_article_index(list_number)
    self.all.find.with_index(1) do |article, index|
      index == list_number
      #binding.pry
    end.content
  end

  # find an article's URL
  def self.find_url_by_article_index(list_number)
    self.all.find.with_index(1) do |article, index|
      index == list_number
      #binding.pry
    end.url
  end

end #end of class
