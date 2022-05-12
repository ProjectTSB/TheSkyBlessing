#> asset:sacred_treasure/0953.meteor_rain/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0953.meteor_rain/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/auto

# サウンド
    playsound minecraft:entity.blaze.ambient player @a ~ ~ ~ 3 1.2
    playsound minecraft:entity.blaze.ambient player @a ~ ~ ~ 3 0.8
    playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 3 1.5
    playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 3 1.2
    playsound minecraft:entity.ghast.shoot player @a ~ ~ ~ 3 0.5

# 召喚
    data modify storage api: Argument.ID set value 285
    function api:mob/summon