# Be sure to restart your server when you modify this file.

# Rails.application.config.session_store :cookie_store, key: '_cheshire_session'
Rails.application.config.session_store :redis_session_store, {
                                                             key:        '_cheshire_session',
                                                             serializer: :hybrid,
                                                             redis: {
                                                               db:           0,
                                                               expire_after: 120.minutes,
                                                               key_prefix: 'cheshire:session:',
                                                               host:         '192.168.55.33',
                                                               port:         6379
                                                             }
                                                           }