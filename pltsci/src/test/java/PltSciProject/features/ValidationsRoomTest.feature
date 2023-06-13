@AllPltSciTags
Feature: Navigation around the imaginary room

  Background: Define URL and global variables
    Given url apiUrl

  @CleanAndNavigate
  Scenario: Navigate inside the room according to the instructions and clean up the patches finded
    # Read data from json
    * def requestBodyJson = read('../data/navigateAndFind.json')
    # Indicate service name
    Given path 'cleaning-sessions'
    # Read body and assign request
    And request requestBodyJson
    When method Post
    Then status 200\
    # Getting response's propertyes
    * def finalPositionFromResponse = response.coords
    * def cleanedPatchesFromResponse = response.patches
    # Assertions
    Then match response ==
    """
        {
            "coords": "#[2]",
            "patches": "#number"
        }
    """
    And finalPositionFromResponse = [1,3]
    And cleanedPatchesFromResponse = 1
  
  @CleanAndNavigateAssertsAutomated
  Scenario: Navigate inside the room according to the instructions without clean up the patches
    # Read data from json
    # Read data from json
    * def requestBodyJson = read('../data/navigateAndFind.json')
    # Indicate service name
    Given path 'cleaning-sessions'
    # Read body and assign request
    And request requestBodyJson
    When method Post
    Then status 200
    # Method to navigate around the room, clean the patches and return final possition
    * def finalRoomProperties = call read('../operations/navigateRoom.feature') requestBodyJson
    * def finalPositionFromFn = finalRoomProperties.finalPossition
    * def patchesCleanedFromFn = finalRoomProperties.patchesCleaned
    # Getting response's propertyes
    * def finalPositionFromResponse = response.coords
    * def cleanedPatchesFromResponse = response.patches
    # Assertions
    Then match response ==
    """
        {
            "coords": "#[2]",
            "patches": "#number"
        }
    """
    And match finalPositionFromFn == finalPositionFromResponse
    And match patchesCleanedFromFn == cleanedPatchesFromResponse