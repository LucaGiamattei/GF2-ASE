setMode -bs
setMode -bs
setCable -port auto
Identify 
identifyMPM 
assignFile -p 1 -file "C:/mic1_ok_ccellar/sistema_mic1.bit"
Program -p 1 -defaultVersion 0 
Program -p 1 -defaultVersion 0 
setMode -bs
deleteDevice -position 1
deleteDevice -position 1
deleteDevice -position 1
setMode -ss
setMode -sm
setMode -hw140
setMode -spi
setMode -acecf
setMode -acempm
setMode -pff
setMode -bs
