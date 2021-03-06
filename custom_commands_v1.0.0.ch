/*
    System.......: 
    Program......: custom_commands_v1.0.0.ch
    Description..: custom commands created for Harbour Language
    Author.......: Sergio Lima
    Updated at...: Oct, 2021
    Version......: 1.0.0
*/


// TRY CATCH FINALLY structure
#xcommand TRY      			=> BEGIN SEQUENCE WITH {|o| break(o)}
#xcommand CATCH [<!oErr!>] 	=> RECOVER [USING <oErr>] <-oErr->
#xcommand FINALLY 			=> ALWAYS
#xcommand ENDTRY 			=> ENDSEQUENCE

// in line IF & UNLESS commands
#xcommand <Command1> [<Commandn>] IF <lCondition> => IF <lCondition> ; <Command1> [<Commandn>]; ENDIF ;
// keep this comment line between IF & UNLESS commands
#xcommand <Command1> [<Commandn>] UNLESS <lCondition> => IF !(<lCondition>) ; <Command1> [<Commandn>]; ENDIF ;

// "repeat until" repetition structure 
#xcommand REPEAT => WHILE .T.
#xcommand UNTIL <lCondition> => IF <lCondition> ; EXIT; END ; ENDDO ;