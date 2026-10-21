# Random Word API - PHP Package

Random Word is a random word generator API that selects a random English word from the dictionary on each request. Paid plans add dictionary definitions and ARPABET phonetic pronunciation.

## Installation

Install via Composer:

```bash
composer require apiverve/randomwords
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Randomwords\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute();

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Randomwords\Client;
use APIVerve\Randomwords\Exceptions\APIException;
use APIVerve\Randomwords\Exceptions\ValidationException;

try {
    $response = $client->execute([]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/randomwords?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/randomwords?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/randomwords?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
