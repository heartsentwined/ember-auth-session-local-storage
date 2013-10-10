# local storage session adapter for ember-auth

[![Build Status](https://secure.travis-ci.org/heartsentwined/ember-auth-session-local-storage.png)](http://travis-ci.org/heartsentwined/ember-auth-session-local-storage)

Store session data in `localStorage`.

## Config

```coffeescript
App.Auth = Em.Auth.extend
  session: 'localStorage'
```
