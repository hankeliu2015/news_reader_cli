# NewsReaderCli

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/news_reader_cli`. To experiment with that code, run `bin/console` for an interactive prompt.

This Ruby Gem provides a command Line interface to view live breaking headlines and contents from a variety of top US major publishers.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'news_reader_cli'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install news_reader_cli

## Usage

Before launch the command line, Go to https://newsapi.org/docs/get-started to register your account and request API key.

Type the below command and follow screen prompts
$ news_reader_cli

After message "please type in API Key from API News:" paste your API key received from API News. It is a hex string with 32 characters. The key will be saved on current directory, you won't be asked again when you launch it as the same directory.

Follow screen instructions to access News articles. Type Exit to end the program.

Video instruction: https://drive.google.com/file/d/1qyA3kmbthMng9TZVGut0yhw29GDfya_C/view?usp=sharing

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/hankeliu2015/news_reader_cli. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the NewsReaderCli project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/hankeliu2015/news_reader_cli/blob/master/CODE_OF_CONDUCT.md).
