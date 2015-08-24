require 'IniParse'

inifile='test.tmp.ini'

document = IniParse.parse( File.read(inifile) )
document['driver']['key'] = "some new value"
document.save(inifile)
