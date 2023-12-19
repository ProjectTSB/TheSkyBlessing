#> asset:artifact/0759.sina_tk_empty/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0759.sina_tk_empty/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 消費
    clear @s bamboo 16

# 演出
    particle block bamboo ~ ~1.2 ~ 0.4 0.4 0.4 0 20 normal @a
    playsound block.bamboo.break player @a ~ ~ ~ 1 1 0
    stopsound @a * entity.item.break
    playsound block.bamboo.break player @a ~ ~ ~ 1 0.5
    #playsound entity.horse.armor player @p ~ ~ ~ 0.6 0.6

# 残り回数が1回の時発動した場合
    execute unless data storage asset:context Items.mainhand.id run playsound entity.horse.armor player @a ~ ~ ~ 1 1 0
    execute unless data storage asset:context Items.mainhand.id run data modify storage api: Argument.ID set value 758
    execute unless data storage asset:context Items.mainhand.id run function api:artifact/give/from_id