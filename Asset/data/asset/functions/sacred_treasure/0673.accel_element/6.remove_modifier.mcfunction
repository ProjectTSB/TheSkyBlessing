#> asset:sacred_treasure/0673.accel_element/6.remove_modifier
#
#
#
# @within function asset:sacred_treasure/0673.accel_element/5.in_effect

# 演出
    particle dust_color_transition 1 0 0 1 0 0 0 ~ ~1.2 ~ 0.6 0.4 0.6 0 20 normal @a
    particle dust_color_transition 0 1 1 1 0 0 0 ~ ~1.2 ~ 0.6 0.4 0.6 0 20 normal @a
    particle dust_color_transition 1 1 0 1 0 0 0 ~ ~1.2 ~ 0.6 0.4 0.6 0 20 normal @a
    playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 1 0.6 0
# 補正削除

    # 火ダメージ量
    data modify storage api: Argument.UUID set value [I;1,1,673,0]
    function api:player_modifier/attack/fire/remove

    # 水ダメージ量
    data modify storage api: Argument.UUID set value [I;1,1,673,0]
    function api:player_modifier/attack/water/remove

    # 雷ダメージ量
    data modify storage api: Argument.UUID set value [I;1,1,673,0]
    function api:player_modifier/attack/thunder/remove

# タグ削除&スコアリセット
    tag @s remove IP.InEffect
    scoreboard players reset @s IP.Tick