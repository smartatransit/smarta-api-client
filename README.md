
![smarta](https://user-images.githubusercontent.com/8289478/57379460-f873e280-7174-11e9-9c32-b737bc49650c.png)
<img src="https://user-images.githubusercontent.com/8289478/56633099-d6357d00-662a-11e9-9592-0c58dab8ca55.png" width="300" height="72" />

The SMARTA API client is a hybrid client around the
[MARTA APIs](http://www.itsmarta.com/app-developer-resources.aspx) supplemented
with analysis of historic patterns and static schedule data our own SMARTA APIs.

## Continuous Integration Status

[![Continuous Integration status](https://travis-ci.org/smartatransit/smarta-api-client.svg?branch=master)](https://travis-ci.org/smartatransit/smarta-api-client.svg?branch=master)
[![codecov](https://codecov.io/gh/smartatransit/smarta-api-client/branch/master/graph/badge.svg)](https://codecov.io/gh/smartatransit/smarta-api-client)

## Project Goals

Goals? Oh we've got goals - check 'em out in the
[infohub overview document](https://github.com/smartatransit/infohub/blob/master/vision/overview.md).

### TODO
MARTA API:
- [x] Fetch rail schedules
- [x] Fetch bus schedules
- [x] Fetch bus schedules by route
SMARTA API:
- [x] Find rail schedule by line
- [x] Find rail schedule by station
- [ ] Find bus schedule by stop
- [ ] Find bus stop by route
- [ ] Find routes by stop
- [x] Find rail stations by location
- [ ] Add projected arrival/departure time based on historical trends

## Project Maturity

SMARTA is _very_ young. Young, scrappy, and hungry. 😎

## Prerequisites

You will need a [MARTA API key](https://www.itsmarta.com/developer-reg-rtt.aspx)
to fetch the live results from MARTA's base API.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'smarta_api_client'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install smarta_api_client

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/smartatransit/smarta_api_client.


## License

Copyright© 2019 SMARTA Transit

Distributed under the GNU Public License version 3
