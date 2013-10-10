// Generated by EmberScript 0.0.7
var get$ = Ember.get;
Em.onLoad('Ember.Application', function (application) {
  return application.initializer({
    name: 'ember-auth.session.local-storage',
    after: 'ember-auth',
    initialize: function (container, app) {
      return app.register('authSession:localStorage', get$(get$(Em, 'Auth'), 'LocalStorageAuthSession'));
    }
  });
});// Generated by EmberScript 0.0.7
var get$ = Ember.get;
var set$ = Ember.set;
set$(get$(Em, 'Auth'), 'LocalStorageAuthSession', get$(get$(Em, 'Auth'), 'AuthSession').extend({
  retrieve: function (key) {
    return localStorage.getItem(key);
  },
  store: function (key, value) {
    return localStorage.setItem(key, value);
  },
  remove: function (key) {
    return localStorage.removeItem(key);
  }
}));