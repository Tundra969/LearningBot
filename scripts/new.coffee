module.exports = (robot) ->
  robot.respond /(http(s?)\:\/\/\S+)/i, (msg) ->
    href = msg.match[1]

  robot.respond /put (http(s?)\:\/\/\S+)/i, (res) ->
    urls = robot.brain.get('links') or []
    href = msg.match[1]
    urls.push href
    res.reply 'Added' + href + ' to your links'
    robot.brain.set 'links', urls

  robot.respond /list links/i, (res) ->
    urls = robot.brain.get('links') or []
    if urls.length == 0
      res.reply 'You have no links. Please add some to get learning!'
    else
      res.reply urls.forEach(url)
