websocket-client-simple-nedap
=======================

Forked from https://github.com/shokai/websocket-client-simple
See original README [here](https://github.com/shokai/websocket-client-simple/blob/master/README.md)

## Tests
```
bundle exec rake test
```

## Releases

To create a new release follow these steps:

- `bundle exec rake version:bump:minor` to bump the version (it could be 'patch' or 'major' in other cases)
- `bundle exec rake release` (this does a couple of things, incl. uploading generated .gem file to Gemfury)
- `bundle exec github_changelog_generator -t MY_TOKEN_FROM_GITHUB` (to regenerate the changelog)
- `git add CHANGELOG.md`
- `git commit -m 'Update the CHANGELOG'`
- `git push origin master`
