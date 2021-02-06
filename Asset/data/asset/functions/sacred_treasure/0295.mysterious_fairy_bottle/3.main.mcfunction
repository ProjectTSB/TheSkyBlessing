#> asset:sacred_treasure/0295.mysterious_fairy_bottle/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0295.mysterious_fairy_bottle/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く
# ハチを召喚 一瞬も見せたくないので空の上に
# 4種類を確立で呼び出す
    summon bee ~ ~256 ~ {Silent:1b,Invulnerable:0b,Team:"NoCollision",DeathTime:19s,Health:16777215f,HasStung:0b,Tags:["ChuzFairyInit","ChuzFairyNormal"],Passengers:[{id:"minecraft:snowball",Item:{id:"minecraft:light_gray_shulker_box",Count:1b}}]}
    summon bee ~ ~256 ~ {Silent:1b,Invulnerable:0b,Team:"NoCollision",DeathTime:19s,Health:16777215f,HasStung:0b,Tags:["ChuzFairyInit","ChuzFairyWater"],Passengers:[{id:"minecraft:snowball",Item:{id:"minecraft:blue_shulker_box",Count:1b}}]}
    summon bee ~ ~256 ~ {Silent:1b,Invulnerable:0b,Team:"NoCollision",DeathTime:19s,Health:16777215f,HasStung:0b,Tags:["ChuzFairyInit","ChuzFairyThunder"],Passengers:[{id:"minecraft:snowball",Item:{id:"minecraft:yellow_shulker_box",Count:1b}}]}
    summon bee ~ ~256 ~ {Silent:1b,Invulnerable:0b,Team:"NoCollision",DeathTime:19s,Health:16777215f,HasStung:0b,Tags:["ChuzFairyInit","ChuzFairyFire"],Passengers:[{id:"minecraft:snowball",Item:{id:"minecraft:red_shulker_box",Count:1b}}]}

# 音とパーティクル
    playsound minecraft:item.bottle.fill_dragonbreath player @a ~ ~ ~ 2 2
    playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 2 1.75
    playsound minecraft:entity.ender_eye.death player @a ~ ~ ~ 2 2
    playsound minecraft:entity.vex.ambient neutral @a ~ ~ ~ 1 1.75
    playsound minecraft:entity.vex.ambient neutral @a ~ ~ ~ 1 2

# ハチを動かすやつ
    function asset:sacred_treasure/0295.mysterious_fairy_bottle/3.1.fairy_tick