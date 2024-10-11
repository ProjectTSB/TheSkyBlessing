#> asset:mob/65533.example_2/hurt/
#
# Mobのダメージ時の処理
#
# @within function asset:mob/alias/65533/hurt

# example.1のhurtを実装
    function asset:mob/super.hurt

# このモブの処理、example.1のhurtのあとに実行される
    tellraw @a [{"text":"そしてこれは俺専用の処理、俺サンダーだ"}]
    execute at @a[tag=Attacker] run summon lightning_bolt
