#> asset:mob/0313.blazing_fireball/tick/explosion
#
# 炸裂する、ちっちゃい範囲攻撃。
#
# @within function
#   asset:mob/0313.blazing_fireball/tick/2.tick
#   asset:mob/0313.blazing_fireball/tick/move

#> 地雷の起爆チェック用タグ
# @private
#declare tag 8S.Ready

# パーティクル
    execute at @s run function asset:mob/0313.blazing_fireball/tick/explosion_sfx

# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 18.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Fire"
# 補正functionを実行
    function lib:damage/modifier
# ダメージを与える。直撃したヤツと、そこからdistanceで
    tag @a[dx=0] add Hit
    tag @a[distance=..1.5] add Hit
    execute as @a[tag=Hit,tag=!PlayerShouldInvulnerable] run function lib:damage/

# 付近の地雷を起爆
    execute as @e[type=item_display,tag=!8S.Ready,scores={MobID=316},distance=..4] run function asset:mob/0316.blazing_mine/tick/event/bomb/start

# リセット
    function lib:damage/reset
    tag @a[tag=Hit] remove Hit

# 消失
    kill @s