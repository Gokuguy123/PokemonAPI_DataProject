import requests
import json

#Set the base URL as a variable for easier access
baseURL = 'https://pokeapi.co/api/v2/'

#Set variable to loop through every Pokemon ID
pkmnID = 1

#Define Function for making data call - Set the URL call to make, and variable for response code
def getPKMNdata(id, dest):
    url = f"{baseURL}/pokemon/{pkmnID}"
    response = requests.get(url)
    
    if response.status_code == 200:
        pkmnData = response.json()
        #print(pkmnData)
        with open(f"{dest}\pkmn_data_{pkmnID}.json","w") as file:
            json.dump(pkmnData, file, indent=4)
            file.close()
        
    else:
        print(f"No data found for ID {pkmnID}, ending loop.")
        
    stCode = response.status_code
    return stCode

#Take user input for destination path
destVar = input("Enter export path for JSON files (or x to Exit):")

if destVar == "x":
    print("Exiting script...")

#Set initial response value. This will get updated to continue looping until 
#response is no longer 200
responseCode = 200

#Call the function to get data
while responseCode == 200 and destVar != "x":
    responseCode = getPKMNdata(pkmnID,destVar)
    pkmnID += 1