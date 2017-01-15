  #  These are from the scripting documentation: https://github.com/github/hubot/blob/master/docs/scripting.md

module.exports = (robot) ->

  robot.hear /thank you/i, (res) ->
    res.send "You're welcome...I'm happy I'm able to help you achieve your PKM goals!"
