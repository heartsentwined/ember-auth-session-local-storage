Em.onLoad 'Ember.Application', (application) ->
  application.initializer
    name: 'ember-auth-session-local-storage'
    after: 'ember-auth'

    initialize: (container, app) ->
      app.register 'authSession:localStorage', Em.Auth.LocalStorageAuthSession
