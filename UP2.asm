            .ORIG       x3400

            AND         R1, R1, #0
Loop        BRzp        NotNeg
            LD          R0, Char
            TRAP        x21
            AND         R1, R1, #0
            BRnzp       Loop
NotNeg      ADD         R1, R1, #1
            BRnzp       Loop

Char        .FILL       x002A

            .END
