function mappingCoords(objectsCords) {
    const coordsMapping = []
    objectsCords.forEach(object => {
        if(typeof(object)=='number'){
            if(object == 5) {
                object--
            }
            coordsMapping.push(object)
        }
        else {
            let positionX = object[0] == 5 ? object[0] - 1 : object[0]
            let positionY = object[1] == 5 ? object[1] - 1 : object[1]
            coordsMapping.push([positionX,positionY])
        }
    })
    return coordsMapping
}