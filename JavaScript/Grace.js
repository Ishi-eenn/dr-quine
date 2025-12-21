(function grace() {
  /*
   * コメント
   */
  const fs = require('fs')
  const output = "Grace_kid.js"
  const codeStr = `(${grace.toString()})()
`

  fs.writeFile(output, codeStr, function(err) {
    if (err) {
      return console.error(err)
    }
  })
})()
