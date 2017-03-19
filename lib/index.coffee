'use strict'

got = require 'got'
nodeify = require 'nodeify'
get = require 'lodash.get'

module.exports = (bumped, plugin, cb) ->
  pluginOpts = plugin.opts
  {url:rawUrl, options} = pluginOpts
  url = get(global, rawUrl, rawUrl)
  nodeify got(url, options)
