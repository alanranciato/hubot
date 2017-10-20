# natural npm package
# https://www.npmjs.com/package/natural
natural = require('natural')

module.exports = (robot) ->
  robot.hear /.*/, (res) ->
    whatsaid = res.match[0]
    tokenizer = new natural.WordTokenizer()

    res.send "You said '#{whatsaid}'?"
    res.send "Tokenized: #{tokenizer.tokenize(whatsaid)}"
