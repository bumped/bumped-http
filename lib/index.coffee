'use strict'

got = require 'got'

module.exports = (bumped, plugin, cb) ->

  if plugin.options.body?
    plugin.options.body = JSON.stringify plugin.options.body

    unless plugin.options.headers?['Content-Type']
      plugin.options.headers =
        'Content-Type': 'application/json'

  got plugin.url, plugin.options, cb
