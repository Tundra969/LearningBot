module.exports = (robot) ->

robot.respond /list links/i, (msg) ->
    robot.brain.data.urls.forEach(url) ->
        msg.send url

robot.respond /(http(s?)\:\/\/\S+)/i, (msg) ->
  href = msg.match[1]
  url = new Url robot
  url.add href, (err, message) ->

    if err?
      console.log "#{href} : #{err}"
    msg.reply "What category"
    robot.respond /(.*)/i, (msg) ->
      bookmark = new Bookmark url msg

class Url
  constructor: (robot) ->
    robot.brain.data.urls ?= []
    @urls_ = robot.brain.data.urls

  all: (url) ->
    if url
      @urls_.push url
    else
      @urls_

  add: (url, callback) ->
    if url in @all()
      callback "Url already exists"
    else
      @all url
      callback null, "Url added"

class Bookmark
  constructor: (url, category) ->
    @url = url
    @category = category

  encodedUrl: ->
    encodeURIComponent @url
    
  encodedCategory: ->
    encodeURIComponent @category
