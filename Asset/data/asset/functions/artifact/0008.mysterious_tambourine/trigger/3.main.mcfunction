#> asset:artifact/0008.mysterious_tambourine/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0008.mysterious_tambourine/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 効果
    effect give @a[distance=..10] strength 300 15
    effect give @e[type=#lib:living,type=!player,tag=Friend,tag=!Uninterferable,distance=..10] strength 300 1
# 演出
    tellraw @a[distance=..10] [{"text":"不思議なタンバリン","color":"yellow"},{"text":"の音が聞こえた。\n不思議と力がみなぎってくる。","color":"white"}]
    playsound minecraft:block.chain.place player @a ~ ~ ~ 1 1
    playsound minecraft:block.chain.place player @a ~ ~ ~ 1 0.6
    playsound minecraft:block.iron_door.open player @a ~ ~ ~ 0.7 1.5
    playsound minecraft:entity.arrow.hit_player player @a ~ ~ ~ 0.8 0.8
    playsound ogg:random.levelup player @a ~ ~ ~ 0.5 1.2
    playsound ogg:random.levelup player @a ~ ~ ~ 0.7 1.5
    playsound ogg:random.levelup player @a ~ ~ ~ 0.7 2
    particle minecraft:crit ~ ~1 ~ 0.25 0.1 0.25 0.7 20