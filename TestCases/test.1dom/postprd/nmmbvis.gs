
inputfile = 'nmmb_hst_01_nio_0006h_00m_00.00s.ctl'
outputfile = 'nmmbvis.gmf'
title = '10m Temperature'

'open 'inputfile

* Disable logo
'set grads off'

'set gxout shaded'


'd t10'

'draw title 'title

'run cbar'

'enable print 'outputfile
'print'

