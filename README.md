# Riot.js and Webpack example

This is an example of [Riot.js](http://riotjs.com) tag using [Webpack](http://webpack.github.io).
Produces a sample tag for joining a GoToMeet.me meeting.


It uses webpack loader [riotjs-loader](https://github.com/esnunes/riotjs-loader).


## Build

```bash
npm install
webpack -p
```

Minified tag script is in `dist/meet.js`

## Usage:
    <script src="./dist/meet.js" charset="utf-8"></script>
    ...
    <meet me="{{GoToMeet.me ID}}" size="{{Avatar size, optional}}"></meet>

### Example:

    <meet me="about" size="150"></meet>


[Demo](https://bestguy.github.io/riotjs-webpack-example/)
    
----

_GoToMeet.me is a product and trademark of Citrix Systems, Inc.
I am not affiliated with them, and this repo does not use any proprietary code._
