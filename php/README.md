# Disposable Phone Number Checker API - PHP Package

Disposable Phone Number Checker is an API that checks whether a given phone number is a known disposable or temporary number. Useful for fraud prevention, user verification, and security.

## Installation

Install via Composer:

```bash
composer require apiverve/disposablephone
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Disposablephone\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['phone' => '+12085813945']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Disposablephone\Client;
use APIVerve\Disposablephone\Exceptions\APIException;
use APIVerve\Disposablephone\Exceptions\ValidationException;

try {
    $response = $client->execute(['phone' => '+12085813945']);
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
    "phone": "+12085813945",
    "isDisposable": true,
    "firstSeen": "2024-01-30"
  }
}
```

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/disposablephone?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://disposablephone.apiverve.com?utm_source=php&utm_medium=readme](https://disposablephone.apiverve.com?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
