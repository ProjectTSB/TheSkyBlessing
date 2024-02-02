#> player_manager:grave/place/summon
#
#
#
# @within function player_manager:grave/place/

#> Init
#@private
#declare tag Init

# 墓を召喚
    $summon armor_stand ~ ~ ~ {CustomNameVisible:0b,CustomName:'{"text":"右クリックで回収","color":"white","italic":false}',Tags:["Grave","GraveInit"],Passengers:[{id:"minecraft:interaction",height:-2f,Tags:["Grave_Interaction"]}],Rotation:[$(Rotation)F,0F]}