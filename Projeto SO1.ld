LDmicro0.1
MICRO=Microchip PIC16F628 18-PDIP or 18-SOIC
CYCLE=5000
CRYSTAL=4000000
BAUD=2400

IO LIST
    XIN1 at 1
    XIN2 at 2
    XIN3 at 3
    XIN4 at 6
    XIN5 at 7
    YSAIDA1 at 18
    YSAIDA2 at 17
    YSAIDA3 at 16
    YSAIDA4 at 15
    YSAIDA5 at 11
END

PROGRAM
RUNG
    CONTACTS XIN1 0
    MOVE CCTD 1
END
RUNG
    CONTACTS XIN2 0
    MOVE CCTD 2
END
RUNG
    CONTACTS XIN3 0
    MOVE CCTD 3
END
RUNG
    CONTACTS XIN4 0
    MOVE CCTD 4
END
RUNG
    CONTACTS XIN5 0
    MOVE CCTD 5
END
RUNG
    MUL RLY1 CCTD 0
END
RUNG
    MUL RLY2 CCTD 1
END
RUNG
    MUL RLY3 CCTD 2
END
RUNG
    MUL RLY4 CCTD 3
END
RUNG
    MUL RLY5 CCTD 4
END
RUNG
    MUL RLY6 CCTD 5
END
RUNG
    CONTACTS RRstTIMER 1
    TON TTIMER1 50000
    COIL RRstTIMER 0 0 0
END
RUNG
    CONTACTS RRstTIMER 0
    CTU CCTD1 0
    COIL RCTDATV 0 0 0
END
RUNG
    GRT CCTD1 RLY1
    LEQ CCTD1 RLY2
    CONTACTS YSAIDA2 1
    CONTACTS YSAIDA3 1
    CONTACTS YSAIDA4 1
    PARALLEL
        COIL YSAIDA1 0 1 0
        COIL YSAIDA5 0 0 1
    END
END
RUNG
    GRT CCTD1 RLY2
    LEQ CCTD1 RLY3
    CONTACTS YSAIDA3 1
    CONTACTS YSAIDA4 1
    CONTACTS YSAIDA5 1
    PARALLEL
        COIL YSAIDA2 0 1 0
        COIL YSAIDA1 0 0 1
    END
END
RUNG
    GRT CCTD1 RLY3
    LEQ CCTD1 RLY4
    CONTACTS YSAIDA4 1
    CONTACTS YSAIDA5 1
    CONTACTS YSAIDA1 1
    PARALLEL
        COIL YSAIDA3 0 1 0
        COIL YSAIDA2 0 0 1
    END
END
RUNG
    GRT CCTD1 RLY4
    LEQ CCTD1 RLY5
    CONTACTS YSAIDA5 1
    CONTACTS YSAIDA1 1
    CONTACTS YSAIDA2 1
    PARALLEL
        COIL YSAIDA4 0 1 0
        COIL YSAIDA3 0 0 1
    END
END
RUNG
    GRT CCTD1 RLY5
    LEQ CCTD1 RLY6
    CONTACTS YSAIDA1 1
    CONTACTS YSAIDA2 1
    CONTACTS YSAIDA3 1
    PARALLEL
        COIL YSAIDA5 0 1 0
        COIL YSAIDA4 0 0 1
    END
END
RUNG
    PARALLEL
        GRT CCTD1 RLY6
        EQU CCTD1 RLY6
    END
    RES CCTD1
END
