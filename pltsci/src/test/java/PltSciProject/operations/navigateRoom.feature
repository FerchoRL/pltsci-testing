@ignore
Feature:Automated method to create and mapping the room and return propertyes needed

Scenario:
    # Obtain data from json
    * def roomSize = requestBodyJson.roomSize
    * def initialCoords = requestBodyJson.coords
    * def patches = requestBodyJson.patches
    * def instructions = requestBodyJson.instructions
    # Create room
    * def initialRoomFN = call read('../helpers/createRoom.js') roomSize
    # Mapping Coordinates according room indexes
    * def mappingCoordsFN = read('../helpers/mappingCoords.js')
    * def initialCoordsMapped = mappingCoordsFN(initialCoords)
    * def patchesCoordsMapped = mappingCoordsFN(patches)
    # Mapping the patches in the room
    * def mappingRoomFN = read('../helpers/mappingRoom.js')
    * def mappingRoom = mappingRoomFN(initialRoomFN,patchesCoordsMapped)
    # Obtain final possition and total of patches cleaned according instructions
    * def patchesCleaned = 0
    * def navigateRoomFN = read('../helpers/navigateRoom.js')
    * def propertiesRoom = navigateRoomFN(mappingRoom, initialCoordsMapped, instructions, patchesCleaned)
    * def finalPossition = propertiesRoom[0]
    * def patchesCleaned = propertiesRoom[1]
