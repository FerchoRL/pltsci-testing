function navigateRoom(room, startedCoords, instructions, patchesCleaned) {
    //Started coords
    const startedX = startedCoords[0]
    const startedY = startedCoords[1]
    const startCoords = [startedX,startedY]
    const arrayInstructions = Array.from(instructions.toUpperCase());
    //Reduce function to iterate each element in the array and return the last position
    const finalPossition = arrayInstructions.reduce((acc,el) => {
        //Mapping instructions to navigate around the room
        if(el == "N") acc[1]++ 
        if(el == "S") acc[1]-- 
        if(el == "E") acc[0]++ 
        if(el == "W") acc[0]-- 
        // Verify if room[X][Y] contains a patch
        if(room[acc[0]][acc[1]]=="Patch") patchesCleaned++
        console.log(acc)
        return acc
    },startCoords);
    return [finalPossition, patchesCleaned]
}