# Disposable Phone Number Checker API - Ruby Gem

Disposable Phone Number Checker is a phone fraud API that flags temporary, burner and virtual phone numbers published on SMS-receiving sites. Pass a number in E.164 format to check whether it is disposable and see the date it was first seen on those lists.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_disposablephone'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_disposablephone
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_disposablephone'

# Initialize the client
client = APIVerve::Disposablephone::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ phone: "+12085813945" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ phone: "+12085813945" })
  puts response["data"]
rescue APIVerve::Disposablephone::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Disposablephone::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Disposablephone::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "phone": "+12085813945",
    "isDisposable": true,
    "firstSeen": "2024-01-30"
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/disposablephone?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/disposablephone?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/disposablephone?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
