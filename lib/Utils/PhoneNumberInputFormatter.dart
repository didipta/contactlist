import 'package:flutter/services.dart';

class PhoneNumberInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue,
      TextEditingValue newValue,
      ) {
    final text = newValue.text;

    // Remove any existing hyphens
    String cleanText = text.replaceAll('-', '');

    // Insert a hyphen after the first 5 digits
    String formattedText;
    if (cleanText.length > 5) {
      formattedText = cleanText.substring(0, 5) + '-' + cleanText.substring(5);
    } else {
      formattedText = cleanText;
    }

    return newValue.copyWith(
      text: formattedText,
      selection: TextSelection.collapsed(offset: formattedText.length),
    );
  }
}
