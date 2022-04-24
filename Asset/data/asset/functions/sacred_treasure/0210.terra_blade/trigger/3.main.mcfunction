#> asset:sacred_treasure/0210.terra_blade/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0210.terra_blade/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/common/use/auto

# ここから先は神器側の効果の処理を書く
# テラショット(サウンド)
    playsound minecraft:item.trident.throw player @a ~ ~ ~ 1.5 0.75
    playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1.5 1.25
    playsound minecraft:entity.shulker.shoot player @a ~ ~ ~ 2 1.5
    playsound minecraft:entity.ghast.shoot player @a ~ ~ ~ 2 2

# テラショット(パーティクル)
    execute anchored eyes run particle minecraft:dust 0 1 0 1 ^-0.35 ^ ^ 0.1 0.1 0.1 0 2
    execute anchored eyes run particle minecraft:dust 0 1 0.5 0.75 ^-0.35 ^ ^ 0.1 0.1 0.1 0 2
    execute anchored eyes run particle minecraft:sweep_attack ^-0.35 ^ ^1 0.1 0.1 0.1 0 1

# 剣を回す
    function asset:mob/0281.terra_doublis_attack/summon/2.summon

# テラショット(召喚)
    execute anchored eyes run summon armor_stand ^-0.35 ^-0.25 ^ {Marker:1b,Invisible:1b,Tags:["ChuzTerraShotInit","Projectile","Uninterferable"]}

# テラショットにInitコマンド実行
    execute as @e[type=armor_stand,tag=ChuzTerraShotInit] at @s run function asset:sacred_treasure/0210.terra_blade/trigger/3.2.terra_shot_init

# ループスタート
    function asset:sacred_treasure/0210.terra_blade/trigger/3.1.terra_shot_tick