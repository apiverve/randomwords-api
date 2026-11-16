# Random Word API - Dart/Flutter Client

Random Word is a random word generator API that selects a random English word from the dictionary on each request. Paid plans add dictionary definitions and ARPABET phonetic pronunciation.

[![pub package](https://img.shields.io/pub/v/apiverve_randomwords.svg)](https://pub.dev/packages/apiverve_randomwords)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Random Word API](https://apiverve.com/marketplace/randomwords?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_randomwords: ^1.2.6
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_randomwords/apiverve_randomwords.dart';

void main() async {
  final client = RandomwordsClient('YOUR_API_KEY');

  try {
    final response = await client.execute();
    
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
    "word": "persevering",
    "definitions": [
      "Characterized by perseverance; persistent. -- Per`se*ver\"ing*ly, adv."
    ],
    "pronunciation": "P ER0 S AH0 V IH1 R IH0 NG"
  }
}
```

## API Reference

- **API Home:** [Random Word API](https://apiverve.com/marketplace/randomwords?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/randomwords](https://docs.apiverve.com/ref/randomwords?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
