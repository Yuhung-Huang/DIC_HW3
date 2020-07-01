wvResizeWindow -win $_nWave1 1920 23 1920 1137
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/yuhong/DIC/DIC2020/DIC_HW3/cs.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/top"
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/top/X\[7:0\]} \
{/test/top/Y\[9:0\]} \
{/test/top/accum\[11:0\]} \
{/test/top/avg\[29:0\]} \
{/test/top/clk} \
{/test/top/flag\[8:0\]} \
{/test/top/inputx\[0:8\]} \
{/test/top/sum\[12:0\]} \
{/test/top/xappr9\[11:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvGetSignalClose -win $_nWave1
wvZoom -win $_nWave1 200387.521793 368007.272727
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetCursor -win $_nWave1 109276.388062 -snap {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvExpandBus -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/top"
wvSetPosition -win $_nWave1 {("G1" 26)}
wvSetPosition -win $_nWave1 {("G1" 26)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/top/X\[7:0\]} \
{/test/top/Y\[9:0\]} \
{/test/top/accum\[11:0\]} \
{/test/top/avg\[29:0\]} \
{/test/top/clk} \
{/test/top/flag\[8:0\]} \
{/test/top/inputx\[0:8\]} \
{/test/top/inputx\[0\]\[7:0\]} \
{/test/top/inputx\[1\]\[7:0\]} \
{/test/top/inputx\[2\]\[7:0\]} \
{/test/top/inputx\[3\]\[7:0\]} \
{/test/top/inputx\[4\]\[7:0\]} \
{/test/top/inputx\[5\]\[7:0\]} \
{/test/top/inputx\[6\]\[7:0\]} \
{/test/top/inputx\[7\]\[7:0\]} \
{/test/top/inputx\[8\]\[7:0\]} \
{/test/top/sum\[12:0\]} \
{/test/top/xappr9\[11:0\]} \
{/test/top/o_value_11\[7:0\]} \
{/test/top/o_value_12\[7:0\]} \
{/test/top/o_value_13\[7:0\]} \
{/test/top/o_value_14\[7:0\]} \
{/test/top/o_value_21\[7:0\]} \
{/test/top/o_value_22\[7:0\]} \
{/test/top/o_value_31\[7:0\]} \
{/test/top/o_value_41\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 19 20 21 22 23 24 25 26 )} 
wvSetPosition -win $_nWave1 {("G1" 26)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSetPosition -win $_nWave1 {("G1" 19)}
wvExpandBus -win $_nWave1 {("G1" 19)}
wvSetPosition -win $_nWave1 {("G1" 34)}
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSetPosition -win $_nWave1 {("G1" 19)}
wvCollapseBus -win $_nWave1 {("G1" 19)}
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSetPosition -win $_nWave1 {("G1" 26)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/top"
wvGetSignalSetScope -win $_nWave1 "/test/top"
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSetPosition -win $_nWave1 {("G1" 20)}
wvSetPosition -win $_nWave1 {("G1" 21)}
wvSetPosition -win $_nWave1 {("G1" 22)}
wvSetPosition -win $_nWave1 {("G1" 23)}
wvSetPosition -win $_nWave1 {("G1" 24)}
wvSetPosition -win $_nWave1 {("G1" 25)}
wvSetPosition -win $_nWave1 {("G1" 26)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 26)}
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvExpandBus -win $_nWave1 {("G1" 26)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/top"
wvGetSignalSetScope -win $_nWave1 "/test/top"
wvGetSignalSetScope -win $_nWave1 "/test/top/c11"
wvGetSignalSetScope -win $_nWave1 "/test/top"
wvGetSignalSetScope -win $_nWave1 "/test/top/c11"
wvSetPosition -win $_nWave1 {("G1" 36)}
wvSetPosition -win $_nWave1 {("G1" 36)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/top/X\[7:0\]} \
{/test/top/Y\[9:0\]} \
{/test/top/accum\[11:0\]} \
{/test/top/avg\[29:0\]} \
{/test/top/clk} \
{/test/top/inputx\[0:8\]} \
{/test/top/inputx\[0\]\[7:0\]} \
{/test/top/inputx\[1\]\[7:0\]} \
{/test/top/inputx\[2\]\[7:0\]} \
{/test/top/inputx\[3\]\[7:0\]} \
{/test/top/inputx\[4\]\[7:0\]} \
{/test/top/inputx\[5\]\[7:0\]} \
{/test/top/inputx\[6\]\[7:0\]} \
{/test/top/inputx\[7\]\[7:0\]} \
{/test/top/inputx\[8\]\[7:0\]} \
{/test/top/sum\[12:0\]} \
{/test/top/xappr9\[11:0\]} \
{/test/top/o_value_11\[7:0\]} \
{/test/top/o_value_12\[7:0\]} \
{/test/top/o_value_13\[7:0\]} \
{/test/top/o_value_14\[7:0\]} \
{/test/top/o_value_21\[7:0\]} \
{/test/top/o_value_22\[7:0\]} \
{/test/top/o_value_31\[7:0\]} \
{/test/top/o_value_41\[7:0\]} \
{/test/top/flag\[8:0\]} \
{/test/top/flag\[8\]} \
{/test/top/flag\[7\]} \
{/test/top/flag\[6\]} \
{/test/top/flag\[5\]} \
{/test/top/flag\[4\]} \
{/test/top/flag\[3\]} \
{/test/top/flag\[2\]} \
{/test/top/flag\[1\]} \
{/test/top/flag\[0\]} \
{/test/top/c11/flag} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 36 )} 
wvSetPosition -win $_nWave1 {("G1" 36)}
wvGetSignalClose -win $_nWave1
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 35)}
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/top"
wvGetSignalSetScope -win $_nWave1 "/test/top/c11"
wvGetSignalSetScope -win $_nWave1 "/test/top"
wvSetPosition -win $_nWave1 {("G1" 44)}
wvSetPosition -win $_nWave1 {("G1" 44)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/top/X\[7:0\]} \
{/test/top/Y\[9:0\]} \
{/test/top/accum\[11:0\]} \
{/test/top/avg\[29:0\]} \
{/test/top/clk} \
{/test/top/inputx\[0:8\]} \
{/test/top/inputx\[0\]\[7:0\]} \
{/test/top/inputx\[1\]\[7:0\]} \
{/test/top/inputx\[2\]\[7:0\]} \
{/test/top/inputx\[3\]\[7:0\]} \
{/test/top/inputx\[4\]\[7:0\]} \
{/test/top/inputx\[5\]\[7:0\]} \
{/test/top/inputx\[6\]\[7:0\]} \
{/test/top/inputx\[7\]\[7:0\]} \
{/test/top/inputx\[8\]\[7:0\]} \
{/test/top/sum\[12:0\]} \
{/test/top/xappr9\[11:0\]} \
{/test/top/o_value_11\[7:0\]} \
{/test/top/o_value_12\[7:0\]} \
{/test/top/o_value_13\[7:0\]} \
{/test/top/o_value_14\[7:0\]} \
{/test/top/o_value_21\[7:0\]} \
{/test/top/o_value_22\[7:0\]} \
{/test/top/o_value_31\[7:0\]} \
{/test/top/o_value_41\[7:0\]} \
{/test/top/flag\[8:0\]} \
{/test/top/flag\[8\]} \
{/test/top/flag\[7\]} \
{/test/top/flag\[6\]} \
{/test/top/flag\[5\]} \
{/test/top/flag\[4\]} \
{/test/top/flag\[3\]} \
{/test/top/flag\[2\]} \
{/test/top/flag\[1\]} \
{/test/top/flag\[0\]} \
{/test/top/o_valid_11} \
{/test/top/o_valid_12} \
{/test/top/o_valid_13} \
{/test/top/o_valid_14} \
{/test/top/o_valid_21} \
{/test/top/o_valid_22} \
{/test/top/o_valid_31} \
{/test/top/o_valid_41} \
{/test/top/o_valie_14} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 36 37 38 39 40 41 42 43 44 )} 
wvSetPosition -win $_nWave1 {("G1" 44)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 36 )} 
wvSelectSignal -win $_nWave1 {( "G1" 37 )} 
wvSelectGroup -win $_nWave1 {G2}
wvSelectSignal -win $_nWave1 {( "G1" 44 )} 
wvSetPosition -win $_nWave1 {("G2" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 43)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 43)}
wvSetPosition -win $_nWave1 {("G1" 44)}
wvSelectGroup -win $_nWave1 {G2} {G3}
wvSelectGroup -win $_nWave1 {G3}
wvSelectGroup -win $_nWave1 {G2}
wvSelectGroup -win $_nWave1 {G2}
wvSelectGroup -win $_nWave1 {G3}
wvSelectSignal -win $_nWave1 {( "G1" 44 )} 
wvSetPosition -win $_nWave1 {("G2" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 43)}
wvSetPosition -win $_nWave1 {("G1" 42)}
wvSetPosition -win $_nWave1 {("G1" 43)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 43)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 43)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 43)}
wvSetPosition -win $_nWave1 {("G1" 44)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/top"
wvGetSignalSetScope -win $_nWave1 "/test/top/c11"
wvGetSignalSetScope -win $_nWave1 "/test/top"
wvGetSignalSetScope -win $_nWave1 "/test/top/c12"
wvSetPosition -win $_nWave1 {("G1" 51)}
wvSetPosition -win $_nWave1 {("G1" 51)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/top/X\[7:0\]} \
{/test/top/Y\[9:0\]} \
{/test/top/accum\[11:0\]} \
{/test/top/avg\[29:0\]} \
{/test/top/clk} \
{/test/top/inputx\[0:8\]} \
{/test/top/inputx\[0\]\[7:0\]} \
{/test/top/inputx\[1\]\[7:0\]} \
{/test/top/inputx\[2\]\[7:0\]} \
{/test/top/inputx\[3\]\[7:0\]} \
{/test/top/inputx\[4\]\[7:0\]} \
{/test/top/inputx\[5\]\[7:0\]} \
{/test/top/inputx\[6\]\[7:0\]} \
{/test/top/inputx\[7\]\[7:0\]} \
{/test/top/inputx\[8\]\[7:0\]} \
{/test/top/sum\[12:0\]} \
{/test/top/xappr9\[11:0\]} \
{/test/top/o_value_11\[7:0\]} \
{/test/top/o_value_12\[7:0\]} \
{/test/top/o_value_13\[7:0\]} \
{/test/top/o_value_14\[7:0\]} \
{/test/top/o_value_21\[7:0\]} \
{/test/top/o_value_22\[7:0\]} \
{/test/top/o_value_31\[7:0\]} \
{/test/top/o_value_41\[7:0\]} \
{/test/top/flag\[8:0\]} \
{/test/top/flag\[8\]} \
{/test/top/flag\[7\]} \
{/test/top/flag\[6\]} \
{/test/top/flag\[5\]} \
{/test/top/flag\[4\]} \
{/test/top/flag\[3\]} \
{/test/top/flag\[2\]} \
{/test/top/flag\[1\]} \
{/test/top/flag\[0\]} \
{/test/top/o_valid_11} \
{/test/top/o_valid_12} \
{/test/top/o_valid_13} \
{/test/top/o_valid_14} \
{/test/top/o_valid_21} \
{/test/top/o_valid_22} \
{/test/top/o_valid_31} \
{/test/top/o_valid_41} \
{/test/top/o_valie_14} \
{/test/top/c12/flag} \
{/test/top/c12/in_valid1} \
{/test/top/c12/in_valid2} \
{/test/top/c12/in_value1\[7:0\]} \
{/test/top/c12/in_value2\[7:0\]} \
{/test/top/c12/out_valid} \
{/test/top/c12/out_value\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G1" 45 46 47 48 49 50 51 )} 
wvSetPosition -win $_nWave1 {("G1" 51)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 46 )} 
wvSelectSignal -win $_nWave1 {( "G1" 47 )} 
wvSelectSignal -win $_nWave1 {( "G1" 46 )} 
wvSelectSignal -win $_nWave1 {( "G1" 47 )} 
wvSelectSignal -win $_nWave1 {( "G1" 48 )} 
wvSelectSignal -win $_nWave1 {( "G1" 49 )} 
wvSelectSignal -win $_nWave1 {( "G1" 50 )} 
wvSelectSignal -win $_nWave1 {( "G1" 50 )} 
wvSelectSignal -win $_nWave1 {( "G1" 51 )} 
wvSelectSignal -win $_nWave1 {( "G1" 48 )} 
wvSelectSignal -win $_nWave1 {( "G1" 49 )} 
wvSelectSignal -win $_nWave1 {( "G1" 46 )} 
wvSelectSignal -win $_nWave1 {( "G1" 47 )} 
wvSetCursor -win $_nWave1 19726.110166 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvScrollUp -win $_nWave1 4
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSelectSignal -win $_nWave1 {( "G1" 42 )} 
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSelectSignal -win $_nWave1 {( "G1" 40 )} 
wvSelectSignal -win $_nWave1 {( "G1" 41 )} 
wvSelectSignal -win $_nWave1 {( "G1" 40 )} 
wvSelectSignal -win $_nWave1 {( "G1" 41 )} 
wvSelectGroup -win $_nWave1 {G2}
wvSelectSignal -win $_nWave1 {( "G1" 51 )} 
wvSetPosition -win $_nWave1 {("G2" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 1)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test/top/c21"
wvGetSignalSetScope -win $_nWave1 "/test/top/c22"
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/top/X\[7:0\]} \
{/test/top/Y\[9:0\]} \
{/test/top/accum\[11:0\]} \
{/test/top/avg\[29:0\]} \
{/test/top/clk} \
{/test/top/inputx\[0:8\]} \
{/test/top/inputx\[0\]\[7:0\]} \
{/test/top/inputx\[1\]\[7:0\]} \
{/test/top/inputx\[2\]\[7:0\]} \
{/test/top/inputx\[3\]\[7:0\]} \
{/test/top/inputx\[4\]\[7:0\]} \
{/test/top/inputx\[5\]\[7:0\]} \
{/test/top/inputx\[6\]\[7:0\]} \
{/test/top/inputx\[7\]\[7:0\]} \
{/test/top/inputx\[8\]\[7:0\]} \
{/test/top/sum\[12:0\]} \
{/test/top/xappr9\[11:0\]} \
{/test/top/o_value_11\[7:0\]} \
{/test/top/o_value_12\[7:0\]} \
{/test/top/o_value_13\[7:0\]} \
{/test/top/o_value_14\[7:0\]} \
{/test/top/o_value_21\[7:0\]} \
{/test/top/o_value_22\[7:0\]} \
{/test/top/o_value_31\[7:0\]} \
{/test/top/o_value_41\[7:0\]} \
{/test/top/flag\[8:0\]} \
{/test/top/flag\[8\]} \
{/test/top/flag\[7\]} \
{/test/top/flag\[6\]} \
{/test/top/flag\[5\]} \
{/test/top/flag\[4\]} \
{/test/top/flag\[3\]} \
{/test/top/flag\[2\]} \
{/test/top/flag\[1\]} \
{/test/top/flag\[0\]} \
{/test/top/o_valid_11} \
{/test/top/o_valid_12} \
{/test/top/o_valid_13} \
{/test/top/o_valid_14} \
{/test/top/o_valid_21} \
{/test/top/o_valid_22} \
{/test/top/o_valid_31} \
{/test/top/o_valid_41} \
{/test/top/o_valie_14} \
{/test/top/c12/flag} \
{/test/top/c12/in_valid1} \
{/test/top/c12/in_valid2} \
{/test/top/c12/in_value1\[7:0\]} \
{/test/top/c12/in_value2\[7:0\]} \
{/test/top/c12/out_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/top/c12/out_value\[7:0\]} \
{/test/top/c22/flag} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 50)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 50)}
wvSetPosition -win $_nWave1 {("G1" 51)}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectGroup -win $_nWave1 {G3}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 51)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/top"
wvGetSignalSetScope -win $_nWave1 "/test/top/c11"
wvGetSignalSetScope -win $_nWave1 "/test/top/c22"
wvGetSignalSetScope -win $_nWave1 "/test/top/c21"
wvSetPosition -win $_nWave1 {("G1" 52)}
wvSetPosition -win $_nWave1 {("G1" 52)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/top/X\[7:0\]} \
{/test/top/Y\[9:0\]} \
{/test/top/accum\[11:0\]} \
{/test/top/avg\[29:0\]} \
{/test/top/clk} \
{/test/top/inputx\[0:8\]} \
{/test/top/inputx\[0\]\[7:0\]} \
{/test/top/inputx\[1\]\[7:0\]} \
{/test/top/inputx\[2\]\[7:0\]} \
{/test/top/inputx\[3\]\[7:0\]} \
{/test/top/inputx\[4\]\[7:0\]} \
{/test/top/inputx\[5\]\[7:0\]} \
{/test/top/inputx\[6\]\[7:0\]} \
{/test/top/inputx\[7\]\[7:0\]} \
{/test/top/inputx\[8\]\[7:0\]} \
{/test/top/sum\[12:0\]} \
{/test/top/xappr9\[11:0\]} \
{/test/top/o_value_11\[7:0\]} \
{/test/top/o_value_12\[7:0\]} \
{/test/top/o_value_13\[7:0\]} \
{/test/top/o_value_14\[7:0\]} \
{/test/top/o_value_21\[7:0\]} \
{/test/top/o_value_22\[7:0\]} \
{/test/top/o_value_31\[7:0\]} \
{/test/top/o_value_41\[7:0\]} \
{/test/top/flag\[8:0\]} \
{/test/top/flag\[8\]} \
{/test/top/flag\[7\]} \
{/test/top/flag\[6\]} \
{/test/top/flag\[5\]} \
{/test/top/flag\[4\]} \
{/test/top/flag\[3\]} \
{/test/top/flag\[2\]} \
{/test/top/flag\[1\]} \
{/test/top/flag\[0\]} \
{/test/top/o_valid_11} \
{/test/top/o_valid_12} \
{/test/top/o_valid_13} \
{/test/top/o_valid_14} \
{/test/top/o_valid_21} \
{/test/top/o_valid_22} \
{/test/top/o_valid_31} \
{/test/top/o_valid_41} \
{/test/top/o_valie_14} \
{/test/top/c12/flag} \
{/test/top/c12/in_valid1} \
{/test/top/c12/in_valid2} \
{/test/top/c12/in_value1\[7:0\]} \
{/test/top/c12/in_value2\[7:0\]} \
{/test/top/c12/out_valid} \
{/test/top/c12/out_value\[7:0\]} \
{/test/top/c21/flag} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G1" 52 )} 
wvSetPosition -win $_nWave1 {("G1" 52)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 51 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 51 )} {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 51 )} 
wvSetPosition -win $_nWave1 {("G1" 51)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/top"
wvGetSignalSetScope -win $_nWave1 "/test/top/c11"
wvGetSignalSetScope -win $_nWave1 "/test/top/c22"
wvGetSignalSetScope -win $_nWave1 "/test/top/c21"
wvGetSignalSetScope -win $_nWave1 "/test/top/c14"
wvGetSignalSetScope -win $_nWave1 "/test/top/c22"
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/top/X\[7:0\]} \
{/test/top/Y\[9:0\]} \
{/test/top/accum\[11:0\]} \
{/test/top/avg\[29:0\]} \
{/test/top/clk} \
{/test/top/inputx\[0:8\]} \
{/test/top/inputx\[0\]\[7:0\]} \
{/test/top/inputx\[1\]\[7:0\]} \
{/test/top/inputx\[2\]\[7:0\]} \
{/test/top/inputx\[3\]\[7:0\]} \
{/test/top/inputx\[4\]\[7:0\]} \
{/test/top/inputx\[5\]\[7:0\]} \
{/test/top/inputx\[6\]\[7:0\]} \
{/test/top/inputx\[7\]\[7:0\]} \
{/test/top/inputx\[8\]\[7:0\]} \
{/test/top/sum\[12:0\]} \
{/test/top/xappr9\[11:0\]} \
{/test/top/o_value_11\[7:0\]} \
{/test/top/o_value_12\[7:0\]} \
{/test/top/o_value_13\[7:0\]} \
{/test/top/o_value_14\[7:0\]} \
{/test/top/o_value_21\[7:0\]} \
{/test/top/o_value_22\[7:0\]} \
{/test/top/o_value_31\[7:0\]} \
{/test/top/o_value_41\[7:0\]} \
{/test/top/flag\[8:0\]} \
{/test/top/flag\[8\]} \
{/test/top/flag\[7\]} \
{/test/top/flag\[6\]} \
{/test/top/flag\[5\]} \
{/test/top/flag\[4\]} \
{/test/top/flag\[3\]} \
{/test/top/flag\[2\]} \
{/test/top/flag\[1\]} \
{/test/top/flag\[0\]} \
{/test/top/o_valid_11} \
{/test/top/o_valid_12} \
{/test/top/o_valid_13} \
{/test/top/o_valid_14} \
{/test/top/o_valid_21} \
{/test/top/o_valid_22} \
{/test/top/o_valid_31} \
{/test/top/o_valid_41} \
{/test/top/o_valie_14} \
{/test/top/c12/flag} \
{/test/top/c12/in_valid1} \
{/test/top/c12/in_valid2} \
{/test/top/c12/in_value1\[7:0\]} \
{/test/top/c12/in_value2\[7:0\]} \
{/test/top/c12/out_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/top/c21/flag} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/test/top/c12/out_value\[7:0\]} \
{/test/top/c22/flag} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvSetPosition -win $_nWave1 {("G4" 2)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/top"
wvGetSignalSetScope -win $_nWave1 "/test/top/c11"
wvGetSignalSetScope -win $_nWave1 "/test/top/c21"
wvGetSignalSetScope -win $_nWave1 "/test/top/c22"
wvGetSignalSetScope -win $_nWave1 "/test/top/c22"
wvGetSignalClose -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 38 )} 
wvSelectSignal -win $_nWave1 {( "G1" 39 )} 
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
