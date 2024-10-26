#> asset_manager:artifact/_index.d
# @private

#> storage
# @within *
#   asset_manager:artifact/**
#   asset:artifact/*/register
#   asset:artifact/*/give/2.give
#   asset:artifact/*/trigger/2.check_condition
#   asset:artifact/*/trigger/3.main
#   asset:artifact/common/**
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
#   asset_manager:artifact/triggers/**
#   core:handler/**
    #declare tag TriggerFlag.ClickCarrot
    #declare tag TriggerFlag.UseItem
    #declare tag TriggerFlag.Sneak
    #declare tag TriggerFlag.UsingItem

#> 攻撃されたEntity
# @within function
#   asset_manager:artifact/triggers/
#   asset_manager:artifact/triggers/attack/foreach
#   api:damage/core/trigger_events/non-player/attack_and_hurt/push_from_attacker
#   mob_manager:entity_finder/player_hurt_entity/fetch_entity
#declare tag DamagedEntity

#> 殺されたEntity
# @within function
#   asset_manager:artifact/triggers/killed/foreach
#   api:damage/core/trigger_events/non-player/kill_and_death/push_from_attacker
#   asset_manager:artifact/triggers/attack/vanilla/push_kill_and_death_event
#declare tag KilledEntity

#> 攻撃してきたEntity
# @within function
#   asset_manager:artifact/triggers/
#   asset_manager:artifact/triggers/damage/foreach
#   api:damage/core/trigger_events/player/attack_and_damage/push_from_attacker
#   mob_manager:entity_finder/entity_hurt_player/fetch_entity
#declare tag AttackedEntity

#> バニラの攻撃を扱う用
# @within function
#   asset_manager:artifact/check/
#   asset_manager:artifact/triggers/attack/**
#declare tag ShouldVanillaAttack

#> check用の失敗フラグ
# @within function
#   asset_manager:artifact/check/**
    #declare tag CheckFailed

#> スニークの閾値用スコアホルダー
# @within function asset_manager:artifact/triggers/sneak/*
    #declare score_holder $SneakThreshold

#> use_itemの誤検知対策タグ
# @within function
#   core:handler/drop
#   asset_manager:artifact/triggers/use_item/check_item_drop
    #declare tag StrictCheckMainhand

#> 神器側にさらすタグ
# @within *
#   asset_manager:artifact/triggers/**
#   asset:artifact/**
    #declare tag Attacker
    #declare tag Victim
    #declare tag Equip
    #declare tag DisEquip

#> セレクターテンプレート
# @within * asset:artifact/**
    #alias entity selectorTemplate @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..n]

#> クールダウン表示用
# @within function asset_manager:artifact/cooldown/**
    #declare score_holder $Cooldown
    #declare score_holder $Value
    #declare score_holder $NormalizedValue
    #declare score_holder $Max

#> リセット用
# @within function asset_manager:artifact/triggers/equipments/update_cooldown/*
    #declare score_holder $Tick
    #declare score_holder $LatestUsedTick
