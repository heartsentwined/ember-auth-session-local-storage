Em.onLoad 'Ember.Application', (application) ->
  application.initializer
    name: 'ember-auth.session.local-storage'
    before: 'ember-auth-load'

    initialize: (container, app) ->
      app.register 'authSession:localStorage', Em.Auth.LocalStorageAuthSession, \
      { singleton: true }
      app.inject 'authSession:localStorage', 'auth', 'auth:main'

  application.initializer
    name: 'ember-auth.session.local-storage-load'
    after: 'ember-auth-load'

    initialize: (container, app) ->
      # force init() call wth an eager-load
      container.lookup 'authSession:localStorage'
