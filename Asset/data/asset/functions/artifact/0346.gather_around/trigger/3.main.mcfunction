#> asset:artifact/0346.gather_around/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0346.gather_around/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出 (particleは共通)
    particle minecraft:reverse_portal ~ ~ ~ 0.75 0.125 0.75 0.3 100 force

    # 成功演出
        execute if entity @e[type=#lib:living,tag=!Uninterferable,distance=1..15,limit=1] run playsound minecraft:block.portal.travel player @a ~ ~ ~ 0.1 2
        execute if entity @e[type=#lib:living,tag=!Uninterferable,distance=1..15,limit=1] run tellraw @a[distance=..15] [{"text":"["},{"selector":"@s"},{"text":"] "},{"text":"全員集合ーっ！","bold":true}]

    # 失敗演出
        execute unless entity @e[type=#lib:living,tag=!Uninterferable,distance=1..15,limit=1] run playsound minecraft:entity.villager.no player @s ~ ~ ~ 1 0.8
        execute unless entity @e[type=#lib:living,tag=!Uninterferable,distance=1..15,limit=1] run tellraw @s {"text":"全員集ご...！ 誰もいないみたいだ..."}

# 集合
    tp @e[type=#lib:living,tag=!Uninterferable,distance=1..15] @s