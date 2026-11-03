#> asset_manager:artifact/load
#
#
#
# @within function core:load

# 定義データを吹き飛ばす
    data modify storage asset:artifact RarityRegistry set value [["UNUSED"], [], [], [], []]
    data modify storage asset:artifact RarityRegistryWithColor.Red set value [["UNUSED"], [], [], [], []]
    data modify storage asset:artifact RarityRegistryWithColor.Blue set value [["UNUSED"], [], [], [], []]
    data modify storage asset:artifact RarityRegistryWithColor.Green set value [["UNUSED"], [], [], [], []]
# Triggers に書ける Event と、LoreTrigger を省いたときに説明欄へ出す使い方の対応
    data modify storage asset:artifact TriggerEvents set value []
    data modify storage asset:artifact TriggerEvents append value {Event:"equip",LoreTrigger:"equipping"}
    data modify storage asset:artifact TriggerEvents append value {Event:"dis_equip",LoreTrigger:"equipping"}
    data modify storage asset:artifact TriggerEvents append value {Event:"use_item",LoreTrigger:"itemUse"}
    data modify storage asset:artifact TriggerEvents append value {Event:"tick",LoreTrigger:"passive"}
    data modify storage asset:artifact TriggerEvents append value {Event:"click.carrot_on_a_stick",LoreTrigger:"onClick"}
    data modify storage asset:artifact TriggerEvents append value {Event:"sneak/keep/",LoreTrigger:"keepSneak"}
    data modify storage asset:artifact TriggerEvents append value {Event:"sneak/keep/0.5s",LoreTrigger:"keepSneak0.5s"}
    data modify storage asset:artifact TriggerEvents append value {Event:"sneak/keep/1s",LoreTrigger:"keepSneak1s"}
    data modify storage asset:artifact TriggerEvents append value {Event:"sneak/keep/2s",LoreTrigger:"keepSneak2s"}
    data modify storage asset:artifact TriggerEvents append value {Event:"sneak/keep/3s",LoreTrigger:"keepSneak3s"}
    data modify storage asset:artifact TriggerEvents append value {Event:"sneak/keep/4s",LoreTrigger:"keepSneak4s"}
    data modify storage asset:artifact TriggerEvents append value {Event:"sneak/keep/5s",LoreTrigger:"keepSneak5s"}
    data modify storage asset:artifact TriggerEvents append value {Event:"sneak/keep/10s",LoreTrigger:"keepSneak10s"}
    data modify storage asset:artifact TriggerEvents append value {Event:"sneak/",LoreTrigger:"sneak"}
    data modify storage asset:artifact TriggerEvents append value {Event:"sneak/0.5s",LoreTrigger:"sneak0.5s"}
    data modify storage asset:artifact TriggerEvents append value {Event:"sneak/1s",LoreTrigger:"sneak1s"}
    data modify storage asset:artifact TriggerEvents append value {Event:"sneak/2s",LoreTrigger:"sneak2s"}
    data modify storage asset:artifact TriggerEvents append value {Event:"sneak/3s",LoreTrigger:"sneak3s"}
    data modify storage asset:artifact TriggerEvents append value {Event:"sneak/4s",LoreTrigger:"sneak4s"}
    data modify storage asset:artifact TriggerEvents append value {Event:"sneak/5s",LoreTrigger:"sneak5s"}
    data modify storage asset:artifact TriggerEvents append value {Event:"sneak/10s",LoreTrigger:"sneak10s"}
    data modify storage asset:artifact TriggerEvents append value {Event:"using_item/keep/",LoreTrigger:"keepUsingItem"}
    data modify storage asset:artifact TriggerEvents append value {Event:"using_item/keep/0.5s",LoreTrigger:"keepUsingItem0.5s"}
    data modify storage asset:artifact TriggerEvents append value {Event:"using_item/keep/1s",LoreTrigger:"keepUsingItem1s"}
    data modify storage asset:artifact TriggerEvents append value {Event:"using_item/keep/2s",LoreTrigger:"keepUsingItem2s"}
    data modify storage asset:artifact TriggerEvents append value {Event:"using_item/keep/3s",LoreTrigger:"keepUsingItem3s"}
    data modify storage asset:artifact TriggerEvents append value {Event:"using_item/keep/4s",LoreTrigger:"keepUsingItem4s"}
    data modify storage asset:artifact TriggerEvents append value {Event:"using_item/keep/5s",LoreTrigger:"keepUsingItem5s"}
    data modify storage asset:artifact TriggerEvents append value {Event:"using_item/keep/10s",LoreTrigger:"keepUsingItem10s"}
    data modify storage asset:artifact TriggerEvents append value {Event:"using_item/",LoreTrigger:"usingItem"}
    data modify storage asset:artifact TriggerEvents append value {Event:"using_item/0.5s",LoreTrigger:"usingItem0.5s"}
    data modify storage asset:artifact TriggerEvents append value {Event:"using_item/1s",LoreTrigger:"usingItem1s"}
    data modify storage asset:artifact TriggerEvents append value {Event:"using_item/2s",LoreTrigger:"usingItem2s"}
    data modify storage asset:artifact TriggerEvents append value {Event:"using_item/3s",LoreTrigger:"usingItem3s"}
    data modify storage asset:artifact TriggerEvents append value {Event:"using_item/4s",LoreTrigger:"usingItem4s"}
    data modify storage asset:artifact TriggerEvents append value {Event:"using_item/5s",LoreTrigger:"usingItem5s"}
    data modify storage asset:artifact TriggerEvents append value {Event:"using_item/10s",LoreTrigger:"usingItem10s"}
    data modify storage asset:artifact TriggerEvents append value {Event:"using_item/release/",LoreTrigger:"releaseUsingItem"}
    data modify storage asset:artifact TriggerEvents append value {Event:"using_item/release/0.5s",LoreTrigger:"releaseUsingItem0.5s"}
    data modify storage asset:artifact TriggerEvents append value {Event:"using_item/release/1s",LoreTrigger:"releaseUsingItem1s"}
    data modify storage asset:artifact TriggerEvents append value {Event:"using_item/release/2s",LoreTrigger:"releaseUsingItem2s"}
    data modify storage asset:artifact TriggerEvents append value {Event:"using_item/release/3s",LoreTrigger:"releaseUsingItem3s"}
    data modify storage asset:artifact TriggerEvents append value {Event:"using_item/release/4s",LoreTrigger:"releaseUsingItem4s"}
    data modify storage asset:artifact TriggerEvents append value {Event:"using_item/release/5s",LoreTrigger:"releaseUsingItem5s"}
    data modify storage asset:artifact TriggerEvents append value {Event:"using_item/release/10s",LoreTrigger:"releaseUsingItem10s"}
    data modify storage asset:artifact TriggerEvents append value {Event:"attack",LoreTrigger:"onAttack"}
    data modify storage asset:artifact TriggerEvents append value {Event:"attack/melee",LoreTrigger:"onAttackByMelee"}
    data modify storage asset:artifact TriggerEvents append value {Event:"attack/projectile",LoreTrigger:"onAttackByProjectile"}
    data modify storage asset:artifact TriggerEvents append value {Event:"attack/explosion",LoreTrigger:"onAttack"}
    data modify storage asset:artifact TriggerEvents append value {Event:"damage",LoreTrigger:"onDamage"}
    data modify storage asset:artifact TriggerEvents append value {Event:"damage/melee",LoreTrigger:"onDamageFromMelee"}
    data modify storage asset:artifact TriggerEvents append value {Event:"damage/drowning",LoreTrigger:"onDamage"}
    data modify storage asset:artifact TriggerEvents append value {Event:"damage/projectile",LoreTrigger:"onDamageFromProjectile"}
    data modify storage asset:artifact TriggerEvents append value {Event:"damage/explosion",LoreTrigger:"onDamageFromExplode"}
    data modify storage asset:artifact TriggerEvents append value {Event:"damage/fire",LoreTrigger:"onDamageFromBurn"}
    data modify storage asset:artifact TriggerEvents append value {Event:"damage/freezing",LoreTrigger:"onDamage"}
    data modify storage asset:artifact TriggerEvents append value {Event:"damage/lightning",LoreTrigger:"onDamage"}
    data modify storage asset:artifact TriggerEvents append value {Event:"damage/other",LoreTrigger:"onDamage"}
    data modify storage asset:artifact TriggerEvents append value {Event:"damage/from_entity/",LoreTrigger:"onDamageFromEntity"}
    data modify storage asset:artifact TriggerEvents append value {Event:"damage/from_entity/melee",LoreTrigger:"onDamageFromMelee"}
    data modify storage asset:artifact TriggerEvents append value {Event:"damage/from_entity/projectile",LoreTrigger:"onDamageFromProjectile"}
    data modify storage asset:artifact TriggerEvents append value {Event:"damage/from_entity/explosion",LoreTrigger:"onDamageFromExplode"}
    data modify storage asset:artifact TriggerEvents append value {Event:"killed",LoreTrigger:"onKilled"}
    data modify storage asset:artifact TriggerEvents append value {Event:"killed/melee",LoreTrigger:"onKilledByMelee"}
    data modify storage asset:artifact TriggerEvents append value {Event:"killed/projectile",LoreTrigger:"onKilledByProjectile"}
    data modify storage asset:artifact TriggerEvents append value {Event:"killed/explosion",LoreTrigger:"onKilled"}
    data modify storage asset:artifact TriggerEvents append value {Event:"heal",LoreTrigger:"onHeal"}
    data modify storage asset:artifact TriggerEvents append value {Event:"receive_heal",LoreTrigger:"onReceiveHeal"}
    data modify storage asset:artifact TriggerEvents append value {Event:"shot",LoreTrigger:"shot"}
# 読み込み
    function #asset:artifact/register
