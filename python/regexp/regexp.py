import re

def trymatching (str):
  # Changing this to ^start would match only the last line
  exp = re.compile (r"start")
  print "%s : %s" % (str, exp.findall (str))

trymatching ("this is a start of something more starting to startup an upstart")
trymatching ("this has no any match at all")
trymatching ("start is a bad place to be")

