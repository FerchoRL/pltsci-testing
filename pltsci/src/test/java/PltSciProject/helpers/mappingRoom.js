function MappingRoom(room, patches) {
    patches.forEach(patch => {
        let positionY = patch[0]
        let positionX = patch[1]
        room[positionX][positionY] = "Patch"
    })
    return room;
}