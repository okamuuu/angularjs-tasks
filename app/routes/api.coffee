router = require('express').Router()

router.get '/', (req, res)->
  res.json { message: 'hooray! welcome to our api!' }

router.get '/phones', (req, res)->
  res.json [
    {
      "id": "nexus",
      'name': 'Nexus S',
      'snippet': 'Fast just got faster with Nexus S.'
      age: 1
    }
    {
      "id": "motorola-defy-with-motoblur",
      'name': 'Motorola XOOM™ with Wi-Fi',
      'snippet': 'The Next, Next Generation tablet.'
      age: 2
    }
    {
      "id": "motorola",
      'name': 'MOTOROLA XOOM™',
      'snippet': 'The Next, Next Generation tablet.'
      age: 3
    }
  ]

module.exports = router
