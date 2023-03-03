#> asset:artifact/0976.brave_sword/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0976.brave_sword/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# スコア持ってないなら0に
    execute unless entity @s[scores={R4.Combo=0..}] run scoreboard players set @s R4.Combo 0

# 攻撃
    execute if entity @s[scores={R4.Combo=0}] run function asset:artifact/0976.brave_sword/trigger/combo/slash1
    execute if entity @s[scores={R4.Combo=1}] run function asset:artifact/0976.brave_sword/trigger/combo/slash2
    execute if entity @s[scores={R4.Combo=2}] run function asset:artifact/0976.brave_sword/trigger/combo/slash3

# Init
    execute rotated ~ 0 anchored eyes positioned ^ ^-1.8 ^ as @e[type=armor_stand,tag=R4.SlashInit,distance=..0.5,sort=nearest,limit=1] run function asset:artifact/0976.brave_sword/trigger/slash_entity/init

# コンボカウント
    scoreboard players set @s R4.Wait 13
    scoreboard players add @s R4.Combo 1
    scoreboard players set @s[scores={R4.Combo=3..}] R4.Combo 0

# スケジュール開始
    schedule function asset:artifact/0976.brave_sword/trigger/slash_entity/1.tick 1t replace
    schedule function asset:artifact/0976.brave_sword/trigger/combo/1.tick 1t replace
