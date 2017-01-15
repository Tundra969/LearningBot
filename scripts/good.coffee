  #  These are from the scripting documentation: https://github.com/github/hubot/blob/master/docs/scripting.md

module.exports = (robot) ->

  robot.hear /thank you/i, (res) ->
    res.send "You're welcome...I'm happy I'm able to help you achieve your PKM goals!"

  robot.hear /hello/i, (res) ->
    res.send "Hi! I’m LearningBot and I’m here to help you manage your PKM (personal knowledge management) goals. Let’s get started… go ahead and enter your first Web URL now."


  robot.hear /add/i, (res) ->
    res.send "I’ve added your link to the Growth Mindset category. Got anymore for me… go ahead and enter it whenever you’re ready."


  robot.hear /it's 10 am/i, (res) ->
    res.send "Let's review this content from your Growth Mindset category today: https://youtu.be/75GFzikmRY0"


  robot.hear /it's 2 pm/i, (res) ->
    res.send "Did you review today’s Growth Mindset link? (yes/no)"


  robot.hear /yes/i, (res) ->
    res.send "Great job prioritizing your development today! Here are a few questions to reflect on what you learned:\n
- How can you apply what you learned in the next 7 days?\n
- How will you know if you are successful with this? What will you see/hear/feel?\n
- Who else might be interested in this content?"


  robot.hear /no/i, (res) ->
    res.send "Is this still content you’d like to review? (keep/delete)"


  robot.hear /keep/i, (res) ->
    res.send "I'll add that back into your resource rotation and deliver it again later."


  robot.hear /delete/i, (res) ->
    res.send "Okay, I'll delete that resource for you."
