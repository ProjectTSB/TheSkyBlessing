#> asset:mob/0099.witch_zombie/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0099.witch_zombie/tick/1.trigger

# スコア
    scoreboard players add @s 2R.Tick 1

# スコアが100(5秒ごと)のときに火か氷の魔方陣を自身の上に生成し、そこからMob100：ゾンビウィッチの魔法弾を召喚
    execute if score @s 2R.Tick matches 100.. run function asset:mob/0099.witch_zombie/tick/3.magic