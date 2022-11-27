#> asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/combo/damage
#
# 攻撃判定に入った敵にダメージを与える
#
# @within function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/combo/**

# どうしてもダメージを受けてほしい（HurtTimeで反応を起こすモブもいるので)
    effect give @s[type=#lib:undead] instant_health
    effect give @s[type=!#lib:undead] instant_damage

# 補正functionを実行
    execute as @p[tag=this] run function lib:damage/modifier
# ダメージ実行
    function lib:damage/

# 吹っ飛ばす
    execute as @s at @s facing entity @p[tag=this] feet rotated ~ ~25 run function lib:motion/

# リセット
    function lib:damage/reset
    scoreboard players reset $RandomDamage Temporary
    data remove storage lib: Argument