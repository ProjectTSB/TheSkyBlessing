#> asset:mob/0149.giant_swinger/tick/2.1.summon_scythe
#
# 召喚直後は鎌を持っていないのでここで召喚
#
# @within function asset:mob/0149.giant_swinger/tick/2.tick

# summon/2.summon.mcfで本体と同時に鎌を召喚して紐づけしようにも
# 召喚直後は本体にまだUUIDが割り振られてないので代わりにtickで呼び出してます


# 鎌召喚
    summon armor_stand ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["Uninterferable","45.ScytheAS","45.NoPair"],Pose:{LeftArm:[0f,0f,0f],RightArm:[-90f,0f,0f],Head:[0f,0f,0f]},DisabledSlots:4144959,HandItems:[{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20050}},{}],CustomName:'{"text":"ジャイアントスインガー"}'}

# ペアリング
    scoreboard players operation @e[type=armor_stand,tag=45.ScytheAS,tag=45.NoPair,distance=..0.01,sort=nearest,limit=1] 45.PairUUID = @s MobUUID

# 未紐づけ状態を表すタグを削除
    tag @e[type=armor_stand,tag=45.ScytheAS,tag=45.NoPair,distance=..0.01,sort=nearest,limit=1] remove 45.NoPair
    tag @s remove 45.NoPair