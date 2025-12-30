#!/usr/bin/env node

/*
 * outside comment
 */

const util = require("util");
const s = "#!/usr/bin/env node\n\n/*\n * outside comment\n */\n\nconst util = require(\"util\");\nconst s = %j;\n\nfunction printSelf() {\n  process.stdout.write(util.format(s, s));\n}\n\nfunction main() {\n  // inside comment\n\n  printSelf();\n}\n\nmain();\n";

function printSelf() {
  process.stdout.write(util.format(s, s));
}

function main() {
  // inside comment

  printSelf();
}

main();
