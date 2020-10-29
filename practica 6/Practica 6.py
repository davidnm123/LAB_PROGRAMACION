from bs4 import BeautifulSoup
import requests

url= input ("Ingresa el url de donde se va a extrarer las imágenes: ")

r= requests.get("http://"+url)

info= r.text

soup = BeautifulSoup (info, 'html.parser')
print(soup.find_all('a'))

for link in soup.find_all('a'):
      if link is not None:
          print(link.get('href'))
      
