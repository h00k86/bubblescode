

import strformat

proc create_component*(name:string,props:seq[string],state:bool)=

 echo name," ", props," ",state
 #crea file .css
 #aggiunge base per .css
 var css=".css"
 var cssname:string= name & css
 writefile(cssname,fmt""".{name}{{


}}""" & "\n")
 #crea file .js
 #aggiunge base per .js
 var js=".jsx"
 var jsxname=name & js
 writefile(jsxname,fmt""" 

import """ & "'./" & cssname & """';

function """ & name & """(){
  return (
    <div className='""" & name & """'>

    </div>
  );

}
export default """ & name & """ ;
"""&"\n")
