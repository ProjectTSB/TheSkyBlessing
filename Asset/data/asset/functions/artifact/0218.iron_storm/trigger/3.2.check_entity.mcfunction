#> asset:artifact/0218.iron_storm/trigger/3.2.check_entity
#
# 神器のメイン処理部
#
# @within function asset:artifact/0218.iron_storm/trigger/3.1.entity_manager

#> private
#
# @private
    #declare score_holder $IsOnGround

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね


# 着地しているか判定
    execute store result score $IsOnGround Temporary run data get entity @s OnGround

# 着地していないなら速度代入
    execute if score $IsOnGround Temporary matches 0 run data modify entity @s Motion set value [0d,-5d,0d]

# 着地していたら爆風function実行
    execute if score $IsOnGround Temporary matches 1 at @s if entity @s[y=256,dy=-256] run function asset:artifact/0218.iron_storm/trigger/3.3.blast