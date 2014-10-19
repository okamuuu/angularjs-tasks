require 'coffee-script'
require 'coffee-errors'

express    = require 'express'
bodyParser = require 'body-parser'

module.exports = app = express()

app.use bodyParser.urlencoded {extended:true}
app.use bodyParser.json()

port = process.env.PORT or 8080

router = express.Router()

router.get '/', (req, res)->
  res.json { message: 'hooray! welcome to our api!' }

app.use '/api', router
app.use '/', express.static(__dirname + '/static')

if not module.parent
  app.listen port
  console.log 'Magic happens on port ' + port
