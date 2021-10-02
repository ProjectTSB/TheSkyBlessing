#> asset:sacred_treasure/0673.accel_element/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0673.accel_element/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    particle lava ~ ~1.2 ~ 0.2 0.4 0.2 0 20 normal @a
    particle splash ~ ~1.2 ~ 0.6 0.4 0.6 0 120 normal @a
    particle dust 1 1 0 1 ~ ~3 ~ 0.05 2 0.05 0 100 normal @a

    playsound entity.blaze.shoot master @a ~ ~ ~ 0.6 0.5 0
    playsound entity.player.splash.high_speed master @a ~ ~ ~ 0.6 2 0
    playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 0.3 1.3 0
    playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 0.6 2 0

# 火ダメージ量+20%
    data modify storage api: Argument.UUID set value [I;1,1,649,3]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/attack/fire/add

# 水ダメージ量+20%
    data modify storage api: Argument.UUID set value [I;1,1,649,3]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/attack/fire/add

# 火ダメージ量+20%
    data modify storage api: Argument.UUID set value [I;1,1,649,3]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/attack/fire/add

# 効果解除までのスケジュールループ開始
    schedule function asset:sacred_treasure/0673.accel_element/4.schedule_loop 1t replace

# Tag付与
    tag @s add IP.InEffect