import json

file = open ('sample.json', 'r')
data = json.read (file.read ())
file.close ()

for item in data ['person']:
  print data['person'][item]

