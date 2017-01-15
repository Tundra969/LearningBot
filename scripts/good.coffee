  #  These are from the scripting documentation: https://github.com/github/hubot/blob/master/docs/scripting.md
module.exports = (robot) ->

  robot.hear /thank you/i, (res) ->
    res.send "You're welcome...I'm happy I'm able to help you achieve your PKM goals!"

  robot.hear /hello/i, (res) ->
    res.send "Hi! I\'m CarolBot and I\'m here to help you manage your PKM (personal knowledge management) goals. Let\'s get started… go ahead and enter your first Web URL now."

  lulz = ['lol', 'rofl', 'lmao']

  robot.respond /lulz/i, (res) ->
    res.send res.random lulz

  its10am = [
    'https://youtu.be/75GFzikmRY0',
    'https://youtu.be/5Nymq7IVFSE',
    'https://youtu.be/muoVtDjjonM',
    'http://i.imgur.com/DPVM1.png',
    'https://youtu.be/NWv1VdDeoRY',
    'https://youtu.be/9jNErdBueQc',
    'https://youtu.be/Yl9TVbAal5s',
    'https://youtu.be/_X0mgOOSpLU',
    'https://www.youtube.com/watch?v=cVf38y07cfk&list=PLKjipW9JnOVKI_hcuIYf-elXiXrSts9mS&index=6',
    'https://www.youtube.com/watch?v=bSycdIx-C48',
    'https://www.youtube.com/watch?v=HVWbrNls-Kw',
    'https://youtu.be/X9KP8uiGZTs?list=PLKjipW9JnOVKI_hcuIYf-elXiXrSts9mS',
    'https://www.mindsetworks.com/science/',
    'https://hbr.org/2016/01/what-having-a-growth-mindset-actually-means',
    'http://trainugly.com/mindset/',
  ]

  robot.hear /it's 10 am/i, (msg) ->
    msg.send 'Let\'s review this content from your Growth Mindset category today: ' +  msg.random its10am

  add = [
    'I\'ve added your link to the Growth Mindset category. Got anymore for me… go ahead and enter it whenever you\'re ready.',
    'You got it! Link saved!',
    'You\'re on a roll!',
    'Got it!',
    'Anything else?',
    'You\'re going to love this content!',
    'Got it! You\'re going to love this content!',
    'I\'ve added your link to the Growth Mindset category.',
   'Got anymore for me… go ahead and enter it whenever you\'re ready.',
  ]

  robot.hear /add/i, (msg) ->
     msg.send msg.random add

  bam = [
    'http://choiceschools.com/wp-content/uploads/2016/02/10-Growth-Mindset-Statements.jpg',
    'http://www.big-change.org/wp-content/uploads/Screen-Shot-2015-11-27-at-11.37.21.png',
    'https://d1zqayhc1yz6oo.cloudfront.net/thumbs/thumb-6f025d0a11d05161676a34dbfeaaccb6.jpeg',
    'https://s-media-cache-ak0.pinimg.com/236x/9f/e3/25/9fe32514af71c05d325308cd7f917107.jpg',
    'http://www.theleaderinmeblog.org/wp-content/uploads/2015/09/Screen-Shot-2015-09-03-at-4.51.07-PM.png',
    'https://s-media-cache-ak0.pinimg.com/originals/0e/42/04/0e4204f3112653fc033bbb7267497fd8.jpg',
    'https://i2.wp.com/trainugly.com/wp-content/uploads/2015/09/Built-Not-Born-Run.png',
    'https://mollyfletcher.com/app/uploads/2015/08/growthmindset.png',
    'https://3.bp.blogspot.com/-Vk_rd9d1Z4s/V9lXAJUoX-I/AAAAAAAAKHY/SR95eMqeN_MJiO7aBXkAs702BktUEITMQCLcB/s640/Slide1.PNG',
  ]

  robot.hear /Bam!/i, (msg) ->
    msg.send msg.random bam

  robot.hear /it's 2 pm/i, (res) ->
    res.send 'Did you review today\'s Growth Mindset link? (yes/no)'

  robot.hear /yes/i, (res) ->
    res.send 'Great job prioritizing your development today! Here are a few questions to reflect on what you learned:\n
- How can you apply what you learned in the next 7 days?\n
- How will you know if you are successful with this? What will you see/hear/feel?\n
- Who else might be interested in this content?'

  robot.hear /no/i, (res) ->
    res.send 'Is this still content you\'d like to review? (keep/delete)'

  robot.hear /keep/i, (res) ->
    res.send 'I\'ll add that back into your resource rotation and deliver it again later.'

  robot.hear /delete/i, (res) ->
    res.send 'Okay, I\'ll delete that resource for you.'
