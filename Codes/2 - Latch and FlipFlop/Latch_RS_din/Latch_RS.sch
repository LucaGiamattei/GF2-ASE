<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Q" />
        <signal name="S" />
        <signal name="XLXN_2" />
        <signal name="R" />
        <signal name="XLXN_4" />
        <signal name="NQ" />
        <port polarity="Output" name="Q" />
        <port polarity="Input" name="S" />
        <port polarity="Input" name="R" />
        <port polarity="Output" name="NQ" />
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="nor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
        </blockdef>
        <block symbolname="nor2" name="XLXI_8">
            <blockpin signalname="XLXN_2" name="I0" />
            <blockpin signalname="R" name="I1" />
            <blockpin signalname="Q" name="O" />
        </block>
        <block symbolname="nor2" name="XLXI_9">
            <blockpin signalname="S" name="I0" />
            <blockpin signalname="Q" name="I1" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_10">
            <blockpin signalname="Q" name="I" />
            <blockpin signalname="NQ" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="Q">
            <wire x2="1200" y1="1488" y2="1488" x1="1136" />
            <wire x2="1136" y1="1488" y2="1648" x1="1136" />
            <wire x2="1520" y1="1648" y2="1648" x1="1136" />
            <wire x2="1504" y1="1184" y2="1184" x1="1440" />
            <wire x2="1520" y1="1184" y2="1184" x1="1504" />
            <wire x2="1520" y1="1184" y2="1648" x1="1520" />
            <wire x2="1504" y1="1184" y2="1264" x1="1504" />
            <wire x2="1632" y1="1264" y2="1264" x1="1504" />
            <wire x2="1920" y1="1264" y2="1264" x1="1632" />
            <wire x2="1632" y1="1264" y2="1488" x1="1632" />
            <wire x2="1664" y1="1488" y2="1488" x1="1632" />
            <wire x2="1920" y1="1184" y2="1264" x1="1920" />
        </branch>
        <branch name="S">
            <wire x2="1200" y1="1552" y2="1552" x1="976" />
        </branch>
        <iomarker fontsize="28" x="1920" y="1184" name="Q" orien="R270" />
        <branch name="XLXN_2">
            <wire x2="1184" y1="1216" y2="1216" x1="1104" />
            <wire x2="1104" y1="1216" y2="1296" x1="1104" />
            <wire x2="1504" y1="1296" y2="1296" x1="1104" />
            <wire x2="1504" y1="1296" y2="1520" x1="1504" />
            <wire x2="1504" y1="1520" y2="1520" x1="1456" />
        </branch>
        <branch name="R">
            <wire x2="1184" y1="1152" y2="1152" x1="960" />
        </branch>
        <instance x="1184" y="1280" name="XLXI_8" orien="R0" />
        <instance x="1200" y="1616" name="XLXI_9" orien="R0" />
        <instance x="1664" y="1520" name="XLXI_10" orien="R0" />
        <branch name="NQ">
            <wire x2="1936" y1="1488" y2="1488" x1="1888" />
        </branch>
        <iomarker fontsize="28" x="976" y="1552" name="S" orien="R180" />
        <iomarker fontsize="28" x="960" y="1152" name="R" orien="R180" />
        <iomarker fontsize="28" x="1936" y="1488" name="NQ" orien="R0" />
    </sheet>
</drawing>