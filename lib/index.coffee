'use strict'

got = require 'got'
nodeify = require 'nodeify'

module.exports = (bumped, plugin, cb) ->
  pluginOpts = plugin.opts
  {url, options} = pluginOpts
  nodeify got(url, options)
