require 'iniparse'

inifile='test.tmp.ini'

document = iniparse.parse( File.read(inifile) )
document['driver']['key'] = "some new value"
document.save(inifile)
