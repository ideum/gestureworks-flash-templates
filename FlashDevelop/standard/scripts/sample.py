import csv
import sys
import fileinput
import xml.etree.ElementTree as ET
from xml.dom import minidom
import itertools
        
reader = csv.DictReader(open('sample.csv', 'rU'))

#cml node
root = ET.Element("cml")

#nodes container
nodes = {}

#parse fields 
for row in reader:
        parent_id = row['parent']
        
        if(parent_id == ""):
            node = ET.SubElement(root, "Container", id=row['id'], x=row['x'], y=row['y'])
        elif(parent_id in nodes):
            node = ET.SubElement(nodes[parent_id], "Image", src=row['src'])
            
        nodes[row['id']] = node
        
outfile = open('../bin/library/cml/display/sample.cml', 'w')
outfile.write(minidom.parseString(ET.tostring(root, "utf-8")).toprettyxml(indent="    "))
outfile.close()	



