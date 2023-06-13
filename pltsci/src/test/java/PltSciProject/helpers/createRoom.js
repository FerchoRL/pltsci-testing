function createRoom(roomSize) {
    const lengthX = roomSize[0]
    const lengthY = roomSize[1] 
    return Array.from(
        { length: lengthY }, (_, y) => Array.from(
            { length: lengthX }, (_, x) => ({ x, y })
        )
    )
}