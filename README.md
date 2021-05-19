# Okra Ruby SDK

This is a Ruby gem for easy integration of [Okra](okra.ng) products. 

# Documentation

See [Here](https://docs.okra.ng/docs/get-started-with-okra) for the API Docs.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'okra-ruby'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install okra-ruby

## Usage

## Instantiate Okra Object

To use the SDK in your project, you need to instantiate the Okra::ruby with your API keys( public and secret). We recommed that you store API keys in your environment variable named OKRA_PUBLIC_KEY, OKRA_SECRET_KEY.  Instantiating your Okra object after adding your API keys in your environment is illustrated as follows below:

```ruby

OkraTest = OkraSDK.new

```

This throws a `OKRABadKeyError` if no key is found in the environment variable.

### Instantiate Okra object in Sandbox without environment variable:

You can instantiate your Okra object by passing your public , secret key as an argument of the `OkraSDk` class just as displayed below:

```ruby

OkraTest = OkraSDK.new("public_key", "secret_key)

```

#### `NOTE:` It is best practice to always set your API keys to your environment variable for security purpose. Please be warned not use this package without setting your API keys in your environment variables in production.

#### To instantiate Okra object in production with environment variable:

Simply use it as displayed below:

```ruby

OkraTest = OkraSDK.new("YOUR_OKRA_LIVE_PUBLIC_KEY", "YOUR_OKRA_LIVE_SECRET_KEY", true)

```


### List of all the Okra class available in the gem

NB - See the documentation for the request for each method of the products

- Auth.new(OkraTest) 
- Account.new(OkraTest)
- AssetsAndLiabilities.new(OkraTest)
- Balance.new(OkraTest)
- Bank.new(OkraTest)
- Customer.new(OkraTest)
- Identity.new(OkraTest)
- Income.new(OkraTest)
- OtherProducts.new(OkraTest)
- Payment.new(OkraTest)
- Revenue.new(OkraTest)
- Transactions.new(OkraTest)
- Widget.new(OkraTest)


## How to use

Once you initailzie a project with any of the classes listed above, you will be able to use their methods. To see all the available methods, kindly run the following command

Eg. ClassName.methods

```cmd
Auth.instance_methods - Object.instance_methods

```

The above command will output all the methods associated with the `Auth` class.


### Full Auth Sample payload 

```ruby

require './okra_sdk'


OkraTest = OkraSDK.new("public_key", "secret_key")
auth = Auth.new(OkraTest)

# ========================= Get by ID

payload = {
    "id" => "607d4xxxxx951e8ff79bxx79"
}
response = auth.get_by_id(payload)
puts response


# ===================================== Retrieve all auths

payload = {
    "page" => 20,
    "limit" => 2
}

response = auth.fetch_auths(payload)
puts response


# ===================================== get by customer

payload = {
    "customer" => "xxxxx486"
}

response = auth.get_by_customer(payload)
puts response


# ===================================== get by date

payload = {
    "from" => "2020-04-25",
    "to" => "2020-06-29"
}

response = auth.get_by_date(payload)
puts response


# ======================================== get by bank

payload = {
    "bank" => "5d6fe57a4099cc4b210bbeb3"
}

response = auth.get_by_bank(payload)
puts response


# ====================================== get by customerDate

payload = {
    "customer" => "",
    "to" => "2020-06-29",
    "from" => "2020-04-25"
}

response = auth.get_by_customerDate(payload)
puts response

```



## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/okraHQ/okra-ruby. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Okra::Ruby project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/OkraHQ/okra-ruby/blob/master/CODE_OF_CONDUCT.md).
