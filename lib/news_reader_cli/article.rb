class NewsReaderCli::Article

  attr_accessor :source, :author, :title, :description, :url, :urltoimage, :publishedAt, :content
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
    self.all.collect.with_index(1) do |article, index|
      "#{index}. #{article.title}"
    end
  end

  #find the article instance by article index number
  def self.find_article_by_article_index(number)
    self.all[number - 1]

  end

  # find an article's URL by using iterations
  def self.find_url_by_article_index(number)
    self.all.find.with_index(1) do |article, index|
      index == number
    end.url
  end

end #end of class
