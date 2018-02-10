            .ORIG       x3500
            
            LDI         R0, KBDR
            AND         R1, R1, #0
            STI         R1, KBSR
            LDI         R1, UP1PC
            STR         R1, R6, #0
            RTI

KBSR        .FILL       xFE00
KBDR        .FILL       xFE02
UP1PC       .FILL       x32FF

            .END
