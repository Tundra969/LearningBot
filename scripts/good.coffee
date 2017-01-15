  #  These are from the scripting documentation: https://github.com/github/hubot/blob/master/docs/scripting.md

module.exports = (robot) ->

  robot.hear /thank you/i, (res) ->
    res.send "You're welcome...I'm happy I'm able to help you achieve your PKM goals!"

  robot.hear /hello/i, (res) ->
    res.send "Hi! I’m LearningBot and I’m here to help you manage your PKM (personal knowledge management) goals. Let’s get started… go ahead and enter your first Web URL now."


its10am = [
  "https://youtu.be/75GFzikmRY0",
  "https://youtu.be/5Nymq7IVFSE",
  "https://youtu.be/muoVtDjjonM",
  "http://i.imgur.com/DPVM1.png",
  "https://youtu.be/NWv1VdDeoRY",
  "https://youtu.be/9jNErdBueQc",
  "https://youtu.be/Yl9TVbAal5s",
  "https://youtu.be/_X0mgOOSpLU",
  "https://www.youtube.com/watch?v=cVf38y07cfk&list=PLKjipW9JnOVKI_hcuIYf-elXiXrSts9mS&index=6",
  "https://www.youtube.com/watch?v=bSycdIx-C48",
  "https://www.youtube.com/watch?v=HVWbrNls-Kw",
  "https://youtu.be/X9KP8uiGZTs?list=PLKjipW9JnOVKI_hcuIYf-elXiXrSts9mS",
  "https://www.mindsetworks.com/science/",
  "https://hbr.org/2016/01/what-having-a-growth-mindset-actually-means",
  "http://trainugly.com/mindset/",
]

  robot.hear /it's 10 am/i, (msg) ->
    msg.send msg.random its10am




add = [
  "I’ve added your link to the Growth Mindset category. Got anymore for me… go ahead and enter it whenever you’re ready.",
  "You got it! Link saved!",
  "You're on a roll!",
  "Got it!",
  "Anything else?",
  "You're going to love this content!",
  "Got it! You're going to love this content!",
  "I’ve added your link to the Growth Mindset category.",
  "Got anymore for me… go ahead and enter it whenever you’re ready.",
]

  robot.hear /add/i, (msg) ->
    msg.send msg.random add


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
