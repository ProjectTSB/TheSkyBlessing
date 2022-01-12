#> world_manager:gimmick/shard_processor/
#
#
#
# @within function world_manager:gimmick/

# カプセルの座標: -35 22 -14
# 額縁の座標: -34.0 21.5 -13.5

# 額縁データの取得
    data modify storage world_manager:gimmick FrameData set from entity @e[type=glow_item_frame,tag=ShardProcessor,distance=..0.4,x=-34.0,y=21.5,z=-13.5,limit=1]
# データが存在しない( = ShardProcessorが消失している)ときの処理
    execute unless data storage world_manager:gimmick FrameData run kill @e[type=item,nbt={Item:{id:"minecraft:glow_item_frame"}},distance=..1,x=-34.0,y=21.5,z=-13.5,limit=1]
    execute unless data storage world_manager:gimmick FrameData run kill @e[type=armor_stand,tag=ShardProcessorModel,distance=..1,x=-34.0,y=21.5,z=-13.5]
    execute unless data storage world_manager:gimmick FrameData run summon glow_item_frame -34.0 21.5 -13.5 {Tags:["ShardProcessor","Object","Uninterferable"],Facing:5b,Invulnerable:1b,Invisible:1b,Silent:1b}
    execute unless data storage world_manager:gimmick FrameData run summon armor_stand -34.5 21 -13.5 {NoGravity:1b,Silent:1b,Invisible:1b,Tags:["ShardProcessorModel","Object","Uninterferable"],DisabledSlots:4144959,Rotation:[-90f,0f],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20113}}]}
# 額縁が存在するときの処理
    execute if data storage world_manager:gimmick FrameData as @e[type=glow_item_frame,tag=ShardProcessor,distance=..0.4,x=-34.0,y=21.5,z=-13.5,limit=1] at @s run function world_manager:gimmick/shard_processor/check_item/
# リセット
    data remove storage world_manager:gimmick FrameData