# bumped-http

<h1 align="center">
  <br>
  <img src="http://i.imgur.com/DmMbFwL.png" alt="bumped">
  <br>
  <br>
</h1>

![Last version](https://img.shields.io/github/tag/bumped/bumped-http.svg?style=flat-square)
[![Dependency status](http://img.shields.io/david/bumped/bumped-http.svg?style=flat-square)](https://david-dm.org/bumped/bumped-http)
[![Dev Dependencies Status](http://img.shields.io/david/dev/bumped/bumped-http.svg?style=flat-square)](https://david-dm.org/bumped/bumped-http#info=devDependencies)
[![NPM Status](http://img.shields.io/npm/dm/bumped-http.svg?style=flat-square)](https://www.npmjs.org/package/bumped-http)
[![Donate](https://img.shields.io/badge/donate-paypal-blue.svg?style=flat-square)](https://paypal.me/kikobeats)

> Exposes an HTTP Client to interact with API's endpoints.

## Install

You don't need to install it! Bumped automatically resolve the plugins dependencies. However if you still want to do so must be globally accessible:

```bash
$ npm install -g bumped-http
```

## Configuration

Configure your `.bumpedrc` adding a entry for `bumped-http` as the follow example:

```cson
files: [
  "package.json"
]

plugins:
  postrelease:
    'Showing Slack Notification':
      plugin: 'bumped-http'
      url: process.env.SLACK_ENDPOINT
      options:
        method: 'POST'
        body: 'Deploy successful'
```

Internally it use [got](https://github.com/sindresorhus/got#api) client.

## License

MIT © Bumped
