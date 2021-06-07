#> asset:sacred_treasure/0610.call_fish/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0610.call_fish/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    execute positioned ~ ~0.5 ~ rotated ~ 90 run function lib:particle/circle/fishing/1
    execute positioned ~ ~0.5 ~ rotated ~ 90 run function lib:particle/circle/fishing/1.25
    execute positioned ~ ~0.5 ~ rotated ~ 90 run function lib:particle/circle/fishing/1.5
    playsound minecraft:entity.puffer_fish.blow_up master @a ~ ~ ~ 1 1.3

# 魚召喚
    summon cod ~ ~ ~ {Invulnerable:1b,Tags:["9Q.Fish","9Q.First"]}

# 魚の寿命を設定する
    scoreboard players set @e[type=cod,tag=9Q.First] 9Q.FishTime 600

# ユーザーID適応
    scoreboard players operation @e[type=cod,tag=9Q.First] 9Q.UserID = @s UserID

# タグを消す
    tag @e[type=cod,tag=9Q.First] remove 9Q.First

# 再帰先へ飛ばす
    execute as @e[type=cod,tag=9Q.Fish,limit=1] run function asset:sacred_treasure/0610.call_fish/3.1.tick