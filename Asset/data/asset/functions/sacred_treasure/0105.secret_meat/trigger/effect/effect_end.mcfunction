#> asset:sacred_treasure/0105.secret_meat/trigger/effect/effect_end
#
#
#
# @within function asset:sacred_treasure/0105.secret_meat/trigger/effect/effect

# 効果を終える
# MP回復量
    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,105,0]
# 補正の削除
    function api:player_modifier/mp_regen/remove

# 攻撃力
    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,105,0]
# 補正の削除
    function api:player_modifier/attack/base/remove

# HP回復量-100%
    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,105,0]
# 補正の削除
    function api:player_modifier/heal/remove

# MP0にする
    scoreboard players set $Set Lib 0
    function lib:mp/set

# デーモンアイを出産する
    data modify storage api: Argument.ID set value 21
    execute positioned ^ ^ ^2 run function api:mob/summon

# 自身の現在体の50%分のダメージを与える
    # ダメージ量(事故防止で1は入れておくだけ)
        data modify storage lib: Argument.Damage set value 1.0f
        execute store result storage lib: Argument.Damage float 0.5 run attribute @s generic.max_health get 1
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 耐性エフェクトを無視するか否か
        data modify storage lib: Argument.BypassResist set value true
    # 補正をしない
        data modify storage lib: Argument.FixedDamage set value true
    # 死亡メッセージ
        data modify storage lib: Argument.DeathMessage set value ['[{"translate": "%1$sは発狂し、内蔵をぶちまけ、デーモンアイを出産した。","with":[{"selector":"@s"}]}]']
    # ダメージ
        function lib:damage/modifier
        execute as @s[tag=!PlayerShouldInvulnerable] run function lib:damage/
# リセット
    function lib:damage/reset

# スコアとかけす
    tag @s remove 2X.Effect
    scoreboard players reset @s 2X.EffectTime