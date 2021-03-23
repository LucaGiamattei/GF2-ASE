<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Clk" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="D" />
        <signal name="Q" />
        <port polarity="Input" name="Clk" />
        <port polarity="Input" name="D" />
        <port polarity="Output" name="Q" />
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="ld">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
        </blockdef>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="Clk" name="I" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="ld" name="XLXI_7">
            <blockpin signalname="D" name="D" />
            <blockpin signalname="Clk" name="G" />
            <blockpin signalname="XLXN_8" name="Q" />
        </block>
        <block symbolname="ld" name="XLXI_9">
            <blockpin signalname="XLXN_8" name="D" />
            <blockpin signalname="XLXN_7" name="G" />
            <blockpin signalname="Q" name="Q" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="992" y="1472" name="XLXI_6" orien="R0" />
        <branch name="Clk">
            <wire x2="704" y1="1280" y2="1280" x1="672" />
            <wire x2="752" y1="1280" y2="1280" x1="704" />
            <wire x2="704" y1="1280" y2="1440" x1="704" />
            <wire x2="992" y1="1440" y2="1440" x1="704" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="1280" y1="1440" y2="1440" x1="1216" />
            <wire x2="1280" y1="1280" y2="1440" x1="1280" />
            <wire x2="1344" y1="1280" y2="1280" x1="1280" />
            <wire x2="1360" y1="1280" y2="1280" x1="1344" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="1344" y1="1152" y2="1152" x1="1136" />
            <wire x2="1360" y1="1152" y2="1152" x1="1344" />
        </branch>
        <branch name="D">
            <wire x2="752" y1="1152" y2="1152" x1="704" />
        </branch>
        <iomarker fontsize="28" x="704" y="1152" name="D" orien="R180" />
        <branch name="Q">
            <wire x2="1776" y1="1152" y2="1152" x1="1744" />
        </branch>
        <iomarker fontsize="28" x="1776" y="1152" name="Q" orien="R0" />
        <iomarker fontsize="28" x="672" y="1280" name="Clk" orien="R180" />
        <instance x="752" y="1408" name="XLXI_7" orien="R0" />
        <instance x="1360" y="1408" name="XLXI_9" orien="R0" />
    </sheet>
</drawing>