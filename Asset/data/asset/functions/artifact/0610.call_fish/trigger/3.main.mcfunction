#> asset:artifact/0610.call_fish/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0610.call_fish/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    execute positioned ~ ~0.5 ~ rotated ~ 0 run function asset:artifact/0610.call_fish/trigger/particle.1
    playsound minecraft:entity.puffer_fish.blow_up neutral @a ~ ~ ~ 1 1.3

# 魚召喚
    summon cod ~ ~ ~ {Invulnerable:1b,Tags:["GY.Fish","GY.First","Friend"]}

# 魚の寿命を設定する
    scoreboard players set @e[type=cod,tag=GY.First] GY.FishTime 600

# ユーザーID適応
    scoreboard players operation @e[type=cod,tag=GY.First] GY.UserID = @s UserID

# タグを消す
    tag @e[type=cod,tag=GY.First] remove GY.First

# 再帰先へ飛ばす
    execute as @e[type=cod,tag=GY.Fish,limit=1] run function asset:artifact/0610.call_fish/trigger/3.1.tick