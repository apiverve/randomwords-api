# Random Word API - Ruby Gem

Random Word is a random word generator API that selects a random English word from the dictionary on each request. Paid plans add dictionary definitions and ARPABET phonetic pronunciation.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_randomwords'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_randomwords
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_randomwords'

# Initialize the client
client = APIVerve::Randomwords::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({  })
  puts response["data"]
rescue APIVerve::Randomwords::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Randomwords::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Randomwords::Client.new(
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
    "word": "persevering",
    "definitions": [
      "Characterized by perseverance; persistent. -- Per`se*ver\"ing*ly, adv."
    ],
    "pronunciation": "P ER0 S AH0 V IH1 R IH0 NG"
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/randomwords?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/randomwords?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/randomwords?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
