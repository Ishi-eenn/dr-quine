#!/usr/bin/env node

/*
 * outside comment
 */

const util = require("util");
const s = "#!/usr/bin/env node\n\n/*\n * outside comment\n */\n\nconst util = require(\"util\");\nconst s = %j;\n\nfunction main() {\n  // inside comment\n\n  process.stdout.write(util.format(s, s));\n}\n\nmain();\n";

function main() {
  // inside comment

  process.stdout.write(util.format(s, s));
}

main();
