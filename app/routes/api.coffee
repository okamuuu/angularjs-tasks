router = require('express').Router()

router.get '/', (req, res)->
  res.json { message: 'hooray! welcome to our api!' }

router.get '/phones', (req, res)->
  res.json [
    {
      'name': 'Nexus S',
      'snippet': 'Fast just got faster with Nexus S.'
      age: 1
    }
    {
      'name': 'Motorola XOOM™ with Wi-Fi',
      'snippet': 'The Next, Next Generation tablet.'
      age: 2
    }
    {
      'name': 'MOTOROLA XOOM™',
      'snippet': 'The Next, Next Generation tablet.'
      age: 3
    }
  ]

module.exports = router