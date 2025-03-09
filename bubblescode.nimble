# Package

version       = "0.1.0"
author        = "h00k86"
description   = "awesome tool for generate react components"
license       = "MIT"
srcDir        = "."
bin           = @["bubblescode"]
installDirs   = @["build"]

# Dependencies

requires "nim >= 2.0.8"



# TASKS

task compile,"compiling file":
  exec "nim c --outdir:build main.nim"

