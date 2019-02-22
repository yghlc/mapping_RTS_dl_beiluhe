#!/bin/bash

tmp=.texpadtmp
rm mapping_RTS_dl_beiluhe.docx
pandoc -o mapping_RTS_dl_beiluhe.docx -s mapping_RTS_dl_beiluhe.tex \
	--bibliography=03_mapping_RTS_dl_beiluhe.bib

#rm test.docx
#pandoc -o test.docx -s test.tex \
#       --bibliography=04_synchrotron_xray_imaging_4D.bib

exit

pandoc -s  --bibliography \
 02_mapping_usingDL_eboling.bib \
 --csl mdpi.csl \
 -f markdown+smart -t docx \
-o pandoc_output.docx mapping_dl_eboling.tex

