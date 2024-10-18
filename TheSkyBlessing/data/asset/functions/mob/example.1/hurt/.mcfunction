#> asset:mob/example.1/hurt/
#
# Mobのダメージ時の処理
#
# @within function asset:mob/alias/65534/hurt

tellraw @a [{"selector":"@a[tag=Attacker]"},{"text":"から攻撃された！ "}]
tellraw @a [{"storage":"asset:context","nbt":"this.myValue"},{"text":"ってフィールドを自分は持っている！"}]
