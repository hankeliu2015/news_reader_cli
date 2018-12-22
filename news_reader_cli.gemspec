
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "news_reader_cli/version"

Gem::Specification.new do |spec|
  spec.name          = "news_reader_cli"
  spec.version       = NewsReaderCli::VERSION
  spec.authors       = [" Henry"]
  spec.email         = ["hanke.liu@gmail.com"]

  spec.summary       = %q{CLI for displaying news articles from avariaty of publishers of the day (as of 2018)}
  spec.description   = %q{Parse API from News API for viewing 36 news articles of the day and details about each}
  spec.homepage      = "https://github.com/hankeliu2015/news_reader_cli"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "bin" # exe
  spec.executables   = ["news_reader_cli"]#spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "gem-release"
  spec.add_dependency "open-uri"
  #spec.add_development_dependency "nokogiri" # won't need it for now.
end
