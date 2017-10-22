import requests
import sys

cfid = input("CFID: ")
cftoken = input("CFTOKEN: ")

url = "http://localhost:8080/process.cfm"
cookies = dict(STAGEAUTH="letmein", CFID=cfid, CFTOKEN=cftoken)
payload = dict(
    Filename = "test.txt",
    id = 1,
    filetype = "1",
    title = "Test",
    category = "1",
    keywords = "",
    copyright = "1999",
    author = "Robert"
)

with open(sys.path[0] + '/test.txt') as file:
    request = requests.post(url, cookies=cookies, files={'file': file}, data=payload)

print(request.text)