
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

added = [
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

thank = [
  'You\'re welcome...I\'m happy I\'m able to help you achieve your PKM goals!',
  'Don\'t mention it.',
  'Glad to help!',
  'Of course... keep embracing the pain of learning!',
  'You\'re welcome... remember learning is not just about the destination, it\'s about embracing the sometimes painful journey... keep going!',
  'Of course... keep going!',
  'You\'re welcome... slow and steady wins the race.',
  'You\'re very welcome.',
  'Don\'t mention it, I\'m happy to help!',
  'Any time... especially every day at 10 and 2.',
  'Yes, of course. I really admire your perseverance.',
  'Of course. Remember, true growth is about persistence and not talent... keep going!',
  'You\'re welcome! Make your life a masterpiece; imagine no limitation on what you can be, have or do. (Brian Tracy actually said that... not me.)',
  'You\'re welcome.',
  'Of course. You learn more from failure than from success. Don\'t let failure stop you. Failure builds character... keep building good character',
]

module.exports = (robot) ->

  robot.respond /thank*/i, (res) ->
    res.send res.random thank

  robot.respond /start demo/i, (res) ->
    res.send "Hi! I\'m CarolBot and I\'m here to help you manage your PKM (personal knowledge management) goals. Let\'s get started… go ahead and enter your first Web URL now. (add)"

  robot.respond /it's 10 am/i, (msg) ->
    msg.send 'Let\'s review this content from your Growth Mindset category today: ' +  msg.random its10am

  robot.respond /add/i, (msg) ->
     msg.send msg.random added

  robot.hear /Bam!/i, (msg) ->
    msg.send msg.random bam

  robot.hear /(thumbsup)/i, (msg) ->
    msg.send msg.random bam

  robot.respond /it's 2 pm/i, (res) ->
    res.send 'Did you review today\'s Growth Mindset link? (yes/no)'

  robot.respond /yes/i, (res) ->
    res.send 'Great job prioritizing your development today! Here are a few questions to reflect on what you learned:\n
- How can you apply what you learned in the next 7 days?\n
- How will you know if you are successful with this? What will you see/respond/feel?\n
- Who else might be interested in this content?'

  robot.respond /no/i, (res) ->
    res.send 'Is this still content you\'d like to review? (keep/delete)'

  robot.respond /keep/i, (res) ->
    res.send 'I\'ll add that back into your resource rotation and deliver it again later.'

  robot.respond /delete/i, (res) ->
    res.send 'Okay, I\'ll delete that resource for you.'

  robot.respond /tell us about yourself/i, (res) ->
    res.send "I'm CarolBot... I was developed using a Hubot library with HipChat integration.\n
I am deployed on a Huroku server and have been added to my makers' HipChat team. \n
I am available for coaching in a room or via personal chat."
