#> asset:mob/example.2/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/65533/attack

# このモブの処理、superを書いていないので、example.1のattackは実行されない。
    tellraw @a [{"text":"当たったな？俺サンダーを喰らえ"}]
    execute at @a[tag=Victim] run summon lightning_bolt
