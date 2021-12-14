#> asset:mob/0188.fireball/event/hit
#
#
#
# @within function asset:mob/0188.fireball/tick/move

# ヒット
    #execute store result storage csr_score_damage: ChuzDamage.Body int 1 run data get entity @s data.ChuzData.BodyDamage
    #execute store result storage csr_score_damage: ChuzDamage.Head int 1 run data get entity @s data.ChuzData.HeadDamage

# ダメージを与える
    execute as @p[dx=0] unless entity @s[gamemode=!adventure,gamemode=!survival] at @s run function asset:mob/0188.fireball/event/damage

# 補正functionを実行
    function lib:damage/modifier

# 消失
    function asset:mob/0188.fireball/event/break