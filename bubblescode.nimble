# Package

version       = "0.1.0"
author        = "h00k86"
description   = "create react component from the cli"
license       = "MIT"
srcDir        = "."
bin           = @["main"]

# Dependencies
requires "nim >= 2.0.8"

task buildproject," compile the project":
 exec "nim c --out:./build/bubblescode main.nim"

task clear ,"remove everything in build dir":
 exec "rm -rf ./build/*"
