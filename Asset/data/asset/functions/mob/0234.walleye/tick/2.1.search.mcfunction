#> asset:mob/0234.walleye/tick/2.1.search
#
# @within
#   function asset:mob/0234.walleye/tick/2.tick

#> prv
# @private
    #declare score_holder $6i.GameTime
    #declare score_holder $6i.LockTime
    #declare score_holder $6i.SoundTime
    #declare tag 6i.TargetCandidate

# LockTime定義
    execute store result score $6i.GameTime Temporary run time query gametime 
    execute store result score $6i.LockTime Temporary run time query gametime 
    scoreboard players add $6i.LockTime Temporary 60

#攻撃範囲内にプレイヤーか友好mobがいる場合ロックオン終了予定時間をセットして向きを変える
    execute positioned ~-5 ~-20 ~-5 if entity @e[tag=Friend,dx=10,dy=20,dz=10] unless score @s 6i.LockOnTime matches -2147483648..2147483647 run tag @e[tag=Friend,dx=10,dy=20,dz=10] add 6i.TargetCandidate
    execute positioned ~-5 ~-20 ~-5 if entity @e[tag=Friend,dx=10,dy=20,dz=10] unless score @s 6i.LockOnTime matches -2147483648..2147483647 at @s positioned ~ ~1.5 ~ run tp @s ~ ~-1.5 ~ facing entity @e[tag=Friend,tag=6i.TargetCandidate,distance=..25,sort=nearest,limit=1]
    execute positioned ~-5 ~-20 ~-5 if entity @e[tag=Friend,dx=10,dy=20,dz=10] unless score @s 6i.LockOnTime matches -2147483648..2147483647 store result score @s 6i.LockOnTime run scoreboard players get $6i.LockTime Temporary

#攻撃範囲内にプレイヤーか友好mobがいない場合ロックオン終了予定時間をリセット
    execute positioned ~-5 ~-20 ~-5 unless entity @e[tag=Friend,dx=10,dy=20,dz=10] run scoreboard players reset @s 6i.LockOnTime

#音
    execute if score @s 6i.LockOnTime matches -2147483648..2147483647 run scoreboard players operation $6i.SoundTime Temporary = @s 6i.LockOnTime 
    execute if score @s 6i.LockOnTime matches -2147483648..2147483647 run scoreboard players operation $6i.SoundTime Temporary -= $6i.GameTime Temporary
    execute if score @s 6i.LockOnTime matches -2147483648..2147483647 run scoreboard players operation $6i.SoundTime Temporary %= $10 Const
    execute if score @s 6i.LockOnTime matches -2147483648..2147483647 if score $6i.SoundTime Temporary matches 9 run playsound minecraft:block.note_block.bit player @a[distance=..32] ~ ~ ~ 3 1.334840 1

#ロックオン終了予定時間に達した場合Phaseを1にして移動状態へ移行する
    execute if score $6i.GameTime Temporary >= @s 6i.LockOnTime run scoreboard players set @s 6i.Phase 1
    execute if score $6i.GameTime Temporary >= @s 6i.LockOnTime run playsound minecraft:block.note_block.bell player @a[distance=..32] ~ ~ ~ 3 1.334840 1

#reset
    tag @e[tag=Friend,tag=6i.TargetCandidate,distance=..25] remove 6i.TargetCandidate
    scoreboard players reset $6i.GameTime Temporary
    scoreboard players reset $6i.LockTime Temporary
    scoreboard players reset $6i.SoundTime Temporary