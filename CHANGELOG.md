# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.1.1] - 2025-05-05
### Added
- Support for text formatting during encryption/decryption.
- Added built-in formatters:
  - `LetterCaseFormatter` for converting to uppercase/lowercase.
  - `SpaceFormatter` for inserting spaces every N letters.
  - `ReplaceEFormatter` to replace 'Ё' with 'Е'.
  - `RemoveSpecialSymbolsFormatter` to clean special characters.

## [0.1.0] - 2025-05-04
### Added
- Initial release of Caesar Encryptor package.
- Caesar cipher encryption and decryption for English and Russian alphabets.
