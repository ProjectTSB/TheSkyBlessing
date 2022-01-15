#> asset:sacred_treasure/0822.sound_of_a_star/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0822.sound_of_a_star/trigger/2.check_condition

# 最初にMP割合を求める
# 最大MPを取得する
    execute store result score $MPMaxValue Temporary run function lib:mp/get_max
# 使用直前のMPを取得する
    execute store result score $MPValue Temporary run function lib:mp/get

# MP現在量を100倍する
    scoreboard players operation $MPValue Temporary *= $100 Const

# 割る
    scoreboard players operation $MPValue Temporary /= $MPMaxValue Temporary

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    playsound minecraft:block.beacon.activate player @a ~ ~ ~ 0.7 0 1
    playsound minecraft:block.beacon.activate player @a ~ ~ ~ 0.4 0.5 1
    playsound minecraft:block.bell.resonate player @a ~ ~ ~ 0.8 0.5

# 星を召喚 MP割合によって個数変化
    summon marker ~ ~1.8 ~ {Tags:["MU.Star"]}
    execute positioned ~ ~1.8 ~ run tp @e[type=marker,tag=MU.Star,distance=..0.01,sort=nearest,limit=1] ^ ^ ^0.5 ~ ~
    scoreboard players operation @e[type=marker,tag=MU.Star,distance=..0.01,sort=nearest,limit=1] MU.UserID = @s UserID

    execute if score $MPValue Temporary matches 34.. run summon marker ~ ~1.3 ~ {Tags:["MU.Star","MU.2"]}
    execute if score $MPValue Temporary matches 34.. positioned ~ ~1.3 ~ run tp @e[type=marker,tag=MU.Star,tag=MU.2,distance=..0.01,sort=nearest,limit=1] ^0.4 ^ ^0.5 ~ ~
    execute if score $MPValue Temporary matches 34.. run scoreboard players operation @e[type=marker,tag=MU.Star,distance=..0.01,sort=nearest,limit=1] MU.UserID = @s UserID

    execute if score $MPValue Temporary matches 67.. run summon marker ~ ~1.3 ~ {Tags:["MU.Star","MU.3"]}
    execute if score $MPValue Temporary matches 67.. positioned ~ ~1.3 ~ run tp @e[type=marker,tag=MU.Star,tag=MU.3,distance=..0.01,sort=nearest,limit=1] ^-0.4 ^ ^0.5 ~ ~
    execute if score $MPValue Temporary matches 67.. run scoreboard players operation @e[type=marker,tag=MU.Star,distance=..0.01,sort=nearest,limit=1] MU.UserID = @s UserID

# 星の処理開始
    schedule function asset:sacred_treasure/0822.sound_of_a_star/trigger/star/01.schedule 1t replace

# リセット
    scoreboard players reset $MPMaxValue Temporary
    scoreboard players reset $MPValue Temporary