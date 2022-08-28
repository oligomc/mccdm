## store killer data
data modify storage cdm:data entity.killer set from storage cdm:data temp.display.Lore[1]
data modify storage cdm:data entity.direct_killer set from storage cdm:data temp.display.Lore[2]
data modify storage cdm:data temp.pool set from storage cdm:data temp.event.player

## calculate distance between victim and killer
function cdm:process/dist