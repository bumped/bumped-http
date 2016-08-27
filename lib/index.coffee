'use strict'

got = require 'got'

module.exports = (bumped, plugin, cb) ->
  opts = plugin.opts

  if opts.body?
    opts.body = JSON.stringify opts.body

    unless opts.headers?['Content-Type']
      opts.headers =
        'Content-Type': 'application/json'

  got plugin.url, opts, cb
