#/!/usr/bin/python
#chat bot
#Hmei7

from os import system as bodoamat
from time import sleep as waktu
import json

#ngeklir
bodoamat("clear")

#n
try:
    import requests
except ImportError:
    print('install')
    input('enter')
    bodoamat('pip install requests')

#klir
bodoamat('clear')

iyeu_logo = """\033[32;1m
 _   _                _ _____ 
 | | | |_ __ ___   ___(_)___  |
 | |_| | '_ ` _ \ / _ \ |  / / 
 |  _  | | | | | |  __/ | / /  
 |_| |_|_| |_| |_|\___|_|/_/   
                               
"""
print(iyeu_logo)

while True:
    anjim = input('fanny: ')
    link = 'https://chatbot-indo.herokuapp.com/get/{}'.format (anjim)
    
    req = requests.get(link)
    jeson = json.loads(req.text)
    print('robot hmei7:', jeson['msg'])
