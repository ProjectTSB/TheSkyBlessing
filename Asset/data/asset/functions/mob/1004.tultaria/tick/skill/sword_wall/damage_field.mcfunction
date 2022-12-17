#> asset:mob/1004.tultaria/tick/skill/sword_wall/damage_field
#
#
#
# @within function
#   asset:mob/1004.tultaria/tick/skill/phase2/1.place_red_sword/main
#   asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/1.tick
#   asset:mob/1004.tultaria/tick/skill/10.deadly_attack_phase2/1.tick

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 20f
        data modify storage lib: Argument.AttackType set value "Magic"
        data modify storage lib: Argument.ElementType set value "None"
        function lib:damage/modifier
        execute as @a[tag=!PlayerShouldInvulnerable,distance=10..15] run function lib:damage/

# ワープで戻される
    execute as @a[tag=!PlayerShouldInvulnerable,distance=10..15] positioned ^ ^ ^5 rotated ~ 0 run function asset:mob/1004.tultaria/tick/skill/sword_wall/player_pull

# リセット
    function lib:damage/reset

# パーティクル
    function asset:mob/1004.tultaria/tick/skill/sword_wall/particle