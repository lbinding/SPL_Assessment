#! /usr/bin/env python
#__author__ = 'LB'
import base64
import argparse
import os

def webm_file(b64_file, output):
    with open('1.txt', 'r') as file:
        data = file.read()
    decodedData = base64.b64decode(data)
    webmfile = output + ".webm"
    with open(webmfile, 'wb') as file:
        file.write(decodedData)

# inputs
parser = argparse.ArgumentParser()
parser.add_argument('--b64', dest='b64_file', help='Base 64 file', required=True)
parser.add_argument('--out', dest='output', help='Base 64 file', required=True)

args = parser.parse_args()

# call function to do correction
webm_file(os.path.abspath(args.b64_file),os.path.abspath(args.output))
