# mailinglist

Simple mailing list manager.

## Installation

- Install a Redis-compatible database server
- Copy and update the sample config file `mailinglist.config.json.example` to `mailinglist.config.json`.

## Usage

- Start the server: `crystal run --release ./src/mailinglist.cr`
- If you navigate to `/ ` on the server, you will meet a nice page that will inform you that the server is running.

### Configuration

- `apiKeys` is an array that contains admin keys.

### REST API

`/a/list/sub?e={email}` - Subscribe `{email}` to the mailing list (Regex validated).

`/a/list/uns?e={email}` - Unsubscribe `{email}` from the mailing list.

`/a/list/` - List all subscribed emails in the mailing list (Requires
`Authorization` header set to one of the `apiKeys`).
