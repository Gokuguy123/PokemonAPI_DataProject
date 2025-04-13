from genericpath import isfile
from socket import timeout
from urllib import response
import requests
# import json
import msgspec
import datetime
import sys
import os
import time

#----------------------------------------------------------------------------------------------------------------------------
#
#   Description: Pulls data from Pokemon-API for all Pokemon IDs, and saves data to single JSON file.
#   Parameters: 1
#       - Destination Path (optional): File path to save JSON file to. When NULL, user input is requested.
#   Average Duration: ~2-3 Minutes
#
#----------------------------------------------------------------------------------------------------------------------------

#Define base URL as a variable for easier access
baseURL = 'https://pokeapi.co/api/v2/'
subURLs = ['evolution-chain','move','pokemon','pokemon-form','type','pokedex']

def clearDirectory (dir):
    files = os.listdir(dir)
    for i in files:
        filePath = os.path.join(dir,i)
        if os.path.isfile(filePath):
            os.remove(filePath)

def checkURL(): #Checks for valid URL
    try:
        url = dataList["results"][urlIndex]["url"]
        return 1
    except:
        responseCode = 0
        return 0

#Define Function for making data call - Set the URL call to make, and variable for response code
def getData(idx, sub, dest, timeout=10, max_retries=3, retry_delay=1):
    
    url = dataList["results"][idx - 1]["url"]
    print(url)
    #pkmnName = dataList["results"][idx]["name"]
    for apiCall in range(max_retries):
        try:
            response = requests.get(url, timeout=timeout)
            response.raise_for_status
            if response.status_code == 200:
                #print (dataList["results"][idx]["url"])
                pkmnData = response.json()
                encPKMNData = msgspec.json.encode(pkmnData).decode("utf-8")
                #print(pkmnData)
                # with open(f"{dest}\pkmn_data_{pkmnID}.json","a") as file:
                with open(f"{dest}\{sub.capitalize()}\{idx}_{sub.title()}_{fileStartTime}.json",'a',encoding='utf-16') as file:
                    # json.dump(pkmnData, file, indent=4)
                    file.write(f"{encPKMNData} \n")
                    file.close()
        
            else:
                print(f"No data found for index {idx}, ending loop.")
        except requests.exceptions.Timeout:
            print(f"Timeout occurred. Attempting again in {retry_delay} seconds.")
            time.sleep(retry_delay)
        
    stCode = response.status_code
    return stCode

#Use parameter as destVar; if no parameter was given, request path input from user
if len(sys.argv) > 1:
    destVar = sys.argv[1]
else:
    destVar = input("Enter export path for JSON files (or x to Exit):")

startTime = datetime.datetime.now()
fileStartTime = datetime.datetime.strftime(startTime,'%m%d%y-%H%M%S')

if destVar == "x":
    print("Exiting script...")

for subURL in subURLs:
    destPath = f"{destVar}/{subURL.title()}"

    try:
        os.makedirs(destPath,exist_ok = False)
    except FileExistsError:
        clearDirectory(destPath)

    urlIndex = 1
    time.sleep(2) #Pause to help avoid rejected requests
    listResponse = requests.get(f"{baseURL}/{subURL}?limit=50000")
    if listResponse.status_code == 200:
        dataList = listResponse.json()
        responseCode = 200

    #Call the function to get data
    while responseCode == 200 and destVar != "x":
        if checkURL() == 1:
            responseCode = getData(urlIndex,subURL,destVar)
            urlIndex += 1
        else:
            break

endTime = datetime.datetime.now()
print(f"Total duration: {endTime - startTime}")
print("Exiting script...")