#> asset_manager:artifact/_index.d
# @private

#> storage
# @within *
#   api:artifact/core/**
#   asset:artifact/*/enroll_pool
#   asset:artifact/*/register
#   asset:artifact/enum/**
#   asset_manager:artifact/**
#   player_manager:actionbar/
    #declare storage asset:artifact

#> 特殊クールダウン
# @within function
#   asset_manager:artifact/check/check_special_cooldown
#   asset_manager:artifact/use/
#   asset_manager:artifact/tick/
#   core:tick/
    #declare score_holder $ArtifactSpecialCooldown

#> Trigger検知用
# @within function
#   asset_manager:artifact/triggers/
#   asset_manager:artifact/triggers/*/
#   core:handler/**
    #declare tag TriggerFlag.ClickCarrot
    #declare tag TriggerFlag.UseItem
    #declare tag TriggerFlag.Sneak
    #declare tag TriggerFlag.UsingItem

#> バニラの攻撃を扱う用
# @within function
#   asset_manager:artifact/triggers/trigger/
#   asset_manager:artifact/triggers/attack_melee/foreach
    #declare tag ShouldVanillaAttack

#> check用の失敗フラグ
# @within function
#   asset_manager:artifact/check/**
    #declare tag CheckFailed

#> スニーク用スコアホルダー
# @within function asset_manager:artifact/triggers/*sneak*/*
    #declare score_holder $SneakTime

#> use_itemの誤検知対策タグ
# @within function
#   core:handler/drop
    #declare tag StrictCheckMainhand

#> 神器側にさらすタグ
# @within *
#   asset_manager:artifact/triggers/**
#   asset:artifact/**
    #declare tag Attacker
    #declare tag Victim
    #declare tag Healer
    #declare tag Receiver

#> セレクターテンプレート
# @within * asset:artifact/**
    #alias entity selectorTemplate @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..n]

#> クールダウン表示用
# @within function asset_manager:artifact/cooldown/**
    #declare score_holder $Cooldown
    #declare score_holder $Value
    #declare score_holder $NormalizedValue
    #declare score_holder $Max

#> クールダウンリセット用
# @within function asset_manager:artifact/triggers/equipments/update_cooldown/**
    #declare score_holder $Tick
    #declare score_holder $Max
    #declare score_holder $LatestUsedTick

#> スロットの数値化
# @within function
#   asset_manager:artifact/data/new/fetch_data/*
#   asset_manager:artifact/triggers/trigger/**
    #declare score_holder $SlotIndex

#> 使用条件
# @within function
#   asset:artifact/*/*/check**
#   asset_manager:artifact/check/
#   asset_manager:artifact/use/
#   asset_manager:artifact/triggers/*/*
#   asset_manager:artifact/triggers/trigger/foreach/exec
    #declare tag CanUsed
