#> asset:mob/0022.red_knight/tick/skills/2.slashcombo/9.neo_finishwave
#
# フェイズで放つ追加の斬撃弾
#
# @within function asset:mob/0022.red_knight/tick/skills/2.slashcombo/1.tick

#> プレイヤーヒット時のタグ
# @private
    #declare tag Hit

# パーティクル
    function asset:mob/0022.red_knight/tick/particle_4

# 判定
    # ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 10.0f
    # 物理属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 無属性
        data modify storage lib: Argument.ElementType set value "None"
    # ダメージ判定
        function lib:damage/modifier
        execute positioned ~-0.5 ~-2 ~-0.5 if entity @a[dx=0,dy=3,dz=0] run tag @a[tag=!PlayerShouldInvulnerable,dx=0,dy=3,dz=0] add Hit
        execute positioned ^ ^ ^1 positioned ~-0.5 ~-2 ~-0.5 if entity @a[dx=0,dy=3,dz=0] run tag @a[tag=!PlayerShouldInvulnerable,dx=0,dy=3,dz=0] add Hit
        execute positioned ^ ^ ^2 positioned ~-0.5 ~-2 ~-0.5 if entity @a[dx=0,dy=3,dz=0] run tag @a[tag=!PlayerShouldInvulnerable,dx=0,dy=3,dz=0] add Hit

    # ヒットしたやつに対して実行
        execute as @a[tag=Hit] run function lib:damage/

# リセット
    function lib:damage/reset
    tag @a[tag=Hit] remove Hit
