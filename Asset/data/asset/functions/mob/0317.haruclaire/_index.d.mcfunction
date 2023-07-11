#> asset:mob/0317.haruclaire/_index.d
# @private

#> tag
# @within function asset:mob/0317.haruclaire/**
    ## API用
    #declare tag SpreadMarker
    
    ## 処理用
    #declare tag 8T.ModelRoot animated_javaモデルにつける処理簡略化用のタグ 
    #declare tag 8T.Marker.SpawnPoint 召喚中心点の記録
    #declare tag 8T.Temp.Me 汎用処理に使う一時的なタグ，自身に付与
    #declare tag 8T.Temp.GeneralTarget 汎用処理に使う一時的なタグ，対象に付与
    #declare tag 8T.Temp.TargetModel  animated_javaモデルにつける対応付け用の一時的なタグ
    #declare tag 8T.Temp.PlayRareAnimation レアアニメーション再生用の一時的なタグ

    ## スキル処理用
    #declare tag 8T.SkillSp.Rod.IcePillar.AttackPos つらら攻撃位置

    ## スキル：杖モード
    #declare tag 8T.Skill.Rod.Idle 待機
    #declare tag 8T.Skill.Rod.Attack 杖殴り
    #declare tag 8T.Skill.Rod.IcePillar つらら
    ## スキル：剣モード