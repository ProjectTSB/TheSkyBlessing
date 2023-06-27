#> asset:mob/0313.blazing_fireball/tick/explosion
#
# 炸裂する、ちっちゃい範囲攻撃。
#
# @within function
#   asset:mob/0313.blazing_fireball/tick/2.tick
#   asset:mob/0313.blazing_fireball/tick/move

# パーティクル
    execute at @s run function asset:mob/0313.blazing_fireball/tick/explosion_sfx

# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 22.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Fire"
# 補正functionを実行
    function lib:damage/modifier
# ダメージを与える。直撃したヤツと、そこからdistanceで
    tag @a[dx=0] add Hit
    tag @a[distance=..1.5] add Hit
    execute as @a[gamemode=!creative,gamemode=!spectator,tag=Hit] run say yo
    execute as @a[gamemode=!creative,gamemode=!spectator,tag=Hit] run function lib:damage/

# リセット
    function lib:damage/reset
    tag @a[tag=Hit] remove Hit

# 消失
    kill @s