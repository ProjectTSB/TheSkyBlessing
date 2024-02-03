#> player_manager:grave/place/summon
#
#
#
# @within function player_manager:grave/place/

#> Init
#@private
#declare tag Init

# 墓を召喚
    #$summon armor_stand ~ ~ ~ {Small:1b,CustomNameVisible:1b,CustomName:'$(Name)',Tags:["Grave","GraveInit"],Passengers:[{id:"minecraft:interaction",height:-1f,Tags:["Grave_Interaction"]}],Rotation:[$(Rotation)F,0F]}
    $summon item_display ~ ~ ~ {Rotation:[$(Rotation)F,0F],Tags:["Grave","GraveInit"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]},Passengers:[{id:"minecraft:interaction"},{id:"minecraft:armor_stand",CustomNameVisible:1b,Small:1b,Invisible:1b,CustomName:'$(Name)'}],item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20347}}}