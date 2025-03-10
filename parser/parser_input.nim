
import std/parseopt

#how to use bubblescode
proc helper* ()=
  echo """Usage: bubblescode container_name [OPTIONS]
          -s --state    Set usestate
          -p --prop     Props of container, for list of props add more times this option 
          -f --file     name of the resulting file"""




# parse argument passed to bubblescode
# @param name  : name of component
# @param state : usestate?
# @param props : props of component
type
 ArgumentOptions= object
  filename*:string
  component*:string
  state*:bool=false
  props*:seq[string]


proc parse_input*():ArgumentOptions=
 var parser = initOptParser()
 var opt :ArgumentOptions
 for kind, key, value in parser.getopt():
  case kind 
  of cmdArgument:
   opt.component=key
  of cmdLongOption,cmdShortOption:
   case key
   of "s","state":
    opt.state=true
   of "p" ,"props":
    opt.props.add(value)
   of "f","file":
    opt.filename= value
   
  of cmdEnd:
   discard
 
 return opt
