            .ORIG       x3300
            
            STI         R7, SavePC
            LD          R1, KBSRMask
            STI         R1, KBSR
            LD          R7, UP2
            RET

SavePC      .FILL       x32FF
KBSRMask    .FILL       x4000
KBSR        .FILL       xFE00
UP2         .FILL       x3400

            .END
