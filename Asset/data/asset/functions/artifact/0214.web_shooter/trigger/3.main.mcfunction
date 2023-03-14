#> asset:artifact/0214.web_shooter/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0214.web_shooter/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 蜘蛛の巣を設置
    execute at @e[tag=Enemy,tag=!Uninterferable,distance=..7] run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 cobweb replace air

# 演出
    execute if entity @e[tag=Enemy,tag=!Uninterferable,distance=..7] run playsound minecraft:item.crossbow.shoot player @a ~ ~ ~ 1 1
    execute if entity @e[tag=Enemy,tag=!Uninterferable,distance=..7] as @e[tag=Enemy,tag=!Uninterferable,distance=..7] at @s run particle poof ~ ~ ~ 0 0 0 0.5 100 normal
# 敵がいない時の演出
    execute unless entity @e[tag=Enemy,tag=!Uninterferable,distance=..7] run playsound minecraft:block.dispenser.fail player @a ~ ~ ~ 1 1
    execute unless entity @e[tag=Enemy,tag=!Uninterferable,distance=..7] run particle minecraft:smoke ~ ~1 ~ 0 0 0 0.1 50
