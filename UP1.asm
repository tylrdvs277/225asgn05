            .ORIG	x3000
            LEA         R6, #-1
            LD          R1, TrapLoc
            STI         R1, TrapVectLoc
            LD          R1, ISRLoc
            STI         R1, IntVectLoc
LOOP        TRAP	x26
            TRAP	x21
            TRAP	x26
            TRAP	x21
            TRAP	x26
            TRAP	x21
            TRAP	x26
            TRAP	x21
            TRAP	x26
            TRAP	x21 
	    LEA		R0, EndMsg
	    PUTS
            BRnzp 	LOOP

TrapVectLoc .FILL       x0026
TrapLoc     .FILL       x3300
IntVectLoc  .FILL       x0180
ISRLoc      .FILL       x3500
EndMsg      .STRINGZ	"\nSuccess!  Running again...\n"
            .END
