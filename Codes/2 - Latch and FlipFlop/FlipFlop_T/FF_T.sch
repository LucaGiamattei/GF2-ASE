<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="Q" />
        <signal name="T" />
        <signal name="Pre" />
        <signal name="Clk" />
        <signal name="Clr" />
        <port polarity="Output" name="Q" />
        <port polarity="Input" name="T" />
        <port polarity="Input" name="Pre" />
        <port polarity="Input" name="Clk" />
        <port polarity="Input" name="Clr" />
        <blockdef name="fdcp">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="192" y1="-320" y2="-352" x1="192" />
            <line x2="64" y1="-352" y2="-352" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-352" y2="-352" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
        </blockdef>
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
        <block symbolname="fdcp" name="XLXI_6">
            <blockpin signalname="Clk" name="C" />
            <blockpin signalname="Clr" name="CLR" />
            <blockpin signalname="XLXN_1" name="D" />
            <blockpin signalname="Pre" name="PRE" />
            <blockpin signalname="Q" name="Q" />
        </block>
        <block symbolname="xor2" name="XLXI_7">
            <blockpin signalname="T" name="I0" />
            <blockpin signalname="Q" name="I1" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1280" y="1072" name="XLXI_6" orien="R0" />
        <instance x="864" y="912" name="XLXI_7" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="1280" y1="816" y2="816" x1="1120" />
        </branch>
        <branch name="Q">
            <wire x2="1744" y1="608" y2="608" x1="784" />
            <wire x2="1744" y1="608" y2="816" x1="1744" />
            <wire x2="1808" y1="816" y2="816" x1="1744" />
            <wire x2="784" y1="608" y2="784" x1="784" />
            <wire x2="864" y1="784" y2="784" x1="784" />
            <wire x2="1744" y1="816" y2="816" x1="1664" />
        </branch>
        <branch name="T">
            <wire x2="848" y1="848" y2="848" x1="768" />
            <wire x2="864" y1="848" y2="848" x1="848" />
        </branch>
        <branch name="Pre">
            <wire x2="1280" y1="720" y2="720" x1="1248" />
        </branch>
        <iomarker fontsize="28" x="1248" y="720" name="Pre" orien="R180" />
        <branch name="Clk">
            <wire x2="1280" y1="944" y2="944" x1="1248" />
        </branch>
        <iomarker fontsize="28" x="1248" y="944" name="Clk" orien="R180" />
        <branch name="Clr">
            <wire x2="1280" y1="1040" y2="1040" x1="1248" />
        </branch>
        <iomarker fontsize="28" x="1248" y="1040" name="Clr" orien="R180" />
        <iomarker fontsize="28" x="1808" y="816" name="Q" orien="R0" />
        <iomarker fontsize="28" x="768" y="848" name="T" orien="R180" />
    </sheet>
</drawing>