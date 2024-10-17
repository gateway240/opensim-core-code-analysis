 #!/usr/bin/env bash
f=opensim-common.dot
F=${f%.*}
T=png
out=j-opensim-common
sccmap $f -S > $out
gvpr -f ../stronglyColored.gvpr  $out  $f  | dot -T$T >$F.S.$T