Em.onLoad 'Ember.Application', (application) ->
  application.initializer
    name: 'ember-auth.session.local-storage'
    before: 'ember-auth-load'

    initialize: (container, app) ->
      app.register 'authSession:localStorage', Em.Auth.LocalStorageAuthSession, \
      { singleton: true }
      app.inject 'authSession:localStorage', 'auth', 'auth:main'
