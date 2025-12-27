#!/usr/bin/env node

(function grace() {
  /*
   * コメント
   */
  const fs = require('fs')
  const output = "Grace_kid.js"
  const codeStr = `#!/usr/bin/env node\n\n(${grace.toString()})()
`

  fs.writeFile(output, codeStr, function(err) {
    if (err) {
      return console.error(err)
    }
  })
})()
