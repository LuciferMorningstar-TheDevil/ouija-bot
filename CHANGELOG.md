# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).

## [Unreleased]
### Changed
- Upgrade to Ruby 2.6 and Bundler 2.0 ([#95])

### Fixed
- Fixed the bot getting stuck in a boot loop. ([#93])
- Fixed an implicit conversion of `nil` to `String`. ([#94])

## [1.1.0] - 2018-11-11
### Added
- Add the ability to use `:thumbsdown:` on a Goodbye and have it deleted. ([#15])
- A debug mode, can be toggled with `ouija!enable_debug` and `ouija!disable_debug`. This is only accessible to the owner of the bot right now. It makes it easier to get a "Goodbye" accepted or declined by the bot, only requiring one upvote/downvote. ([#21])
- Add `ouija!startwithquestion` command, also available as `ouija!startq`. It chooses a random question from an included list. ([#33])
- Add the ability to send final messages to a separate `ouija-archives` channel instead of pinning them. ([#44])
- Made the command prefix (`ouija!` by default) configurable via environment variable. ([#44])

### Changed
- Increase the Goodbye timeout to 5 minutes. ([#15])
- Link to the GitHub commit in the info command's output if the bot is on Heroku.
- Make the `ouija!start` command work only in the `#ouija` channel.
- The bot will now upvote and downvote the "Goodbye" message when it's recieved, this makes it easier for users to add `:thumbsup:`/`:thumbsdown:`. ([#34])
- Upgraded discordrb to v3.3.0. ([#66])
- A bunch of dependency updates via Dependabot, including security fixes.

### Fixed
- Handle the `PinLimitReached` error when a channel reaches 50 pinned messages. ([#20])

## [1.0.0] - 2018-06-19
### Added
- Delete any messages that aren't either single letters or "Goodbye".
- "Goodbye" handling.
- Keep settings in a Postgres database.
- Delete any messages where the same user posts submissions successively. ([#6])
- A special "Space" keyword. ([#13])
- `ouija!info` command that prints info about the bot.
- `ouija!howtoplay` command that prints a link to the How to Play section in the `README.md`.
- `ouija!start` command that starts a new game. ([#14])
- Use Rubocop for style linting.
- Pin the final message once a game ends.

[#6]: https://github.com/connorshea/ouija-bot/pull/6
[#13]: https://github.com/connorshea/ouija-bot/pull/13
[#14]: https://github.com/connorshea/ouija-bot/pull/14
[#15]: https://github.com/connorshea/ouija-bot/pull/15
[#20]: https://github.com/connorshea/ouija-bot/pull/20
[#21]: https://github.com/connorshea/ouija-bot/pull/21
[#33]: https://github.com/connorshea/ouija-bot/pull/33
[#34]: https://github.com/connorshea/ouija-bot/pull/34
[#44]: https://github.com/connorshea/ouija-bot/pull/44
[#66]: https://github.com/connorshea/ouija-bot/pull/66
[#93]: https://github.com/connorshea/ouija-bot/pull/93
[#94]: https://github.com/connorshea/ouija-bot/pull/94
[#95]: https://github.com/connorshea/ouija-bot/pull/95

[Unreleased]: https://github.com/connorshea/ouija-bot/compare/v1.1.0...HEAD
[1.1.0]: https://github.com/connorshea/ouija-bot/compare/v1.0.0...v1.1.0
[1.0.0]: https://github.com/connorshea/ouija-bot/compare/b00da172b81f63ce4a6a41d17b93ae61e24b96c6...v1.0.0
