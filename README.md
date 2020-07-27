# Omniauth::Td::Ameritrade

An omni-auth strategy to authenticate with GetData.IO's developer API.

Contact superadmin@getdata.io to get your API key.


## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-getdata-io'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-getdata-io

## Usage

Here's an example for adding the middleware to a Rails app in config/initializers/omniauth.rb:

```
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :amtd, ENV['AMERITRADE_CLIENT_ID'], nil
end
```



## Contributing

1. Fork it ( https://github.com/[my-github-username]/omniauth-td-ameritrade/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
