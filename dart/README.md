# Disposable Phone Number Checker API - Dart/Flutter Client

Disposable Phone Number Checker is an API that checks whether a given phone number is a known disposable or temporary number. Useful for fraud prevention, user verification, and security.

[![pub package](https://img.shields.io/pub/v/apiverve_disposablephone.svg)](https://pub.dev/packages/apiverve_disposablephone)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Disposable Phone Number Checker API](https://apiverve.com/marketplace/disposablephone?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_disposablephone: ^1.1.14
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_disposablephone/apiverve_disposablephone.dart';

void main() async {
  final client = DisposablephoneClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'phone': '+12085813945'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [Disposable Phone Number Checker API](https://apiverve.com/marketplace/disposablephone?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/disposablephone](https://docs.apiverve.com/ref/disposablephone?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
