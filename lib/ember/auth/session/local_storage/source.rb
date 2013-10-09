module Ember
  module Auth
    module Session
      module LocalStorage
        module Source
          def self.bundled_path
            path = File.join '..', '..', '..', '..', '..', '..', \
              'dist', 'ember-auth-session-local-storage.js'
            File.expand_path path, __FILE__
          end
        end
      end
    end
  end
end
