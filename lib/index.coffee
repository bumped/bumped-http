'use strict'

got = require 'got'
nodeify = require 'nodeify'


module.exports = (bumped, plugin, cb) ->
  opts = plugin.opts.options
  url = plugin.opts.url
  nodeify got(url, opts)
