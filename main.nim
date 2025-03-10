
import parser/parser_input
import src/code_generator


when isMainModule:
 var cmp = parse_input()
 create_component(cmp.component,cmp.props, cmp.state) 
