# Bartask

Backup and Recovery tool for RDBMS of Rails development.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bartask'
```

And then execute:

```
$ bundle
```

## Usage

The Bartask provides commands for backup and recovery of RDBMS. We sometimes need to switch DB schema depending on a branch. This tool aims to switch it easily.

You can get a backup by the following command.

```bash
bundle exec bartask d
```

Bartask outputs a backup file under the `tmp` directory.  A filename contains a branch name to allow the generate a file per branch.

The restoration can be done with the following command. This operations uses a dump file generated by `bartask d`. So you need to generate a dump first.

```bash
bundle exec bartask r
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/y-yagi/bartask. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/y-yagi/bartask/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Bartask project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/y-yagi/bartask/blob/main/CODE_OF_CONDUCT.md).
