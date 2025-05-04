# from: ./explode

summon arrow ^ ^ ^ {life:1140,Tags:["in.cluster_bomb"],HasBeenShot:true,LeftOwner:true,Fire:200,HasVisualFire:false}
execute as @e[type=arrow,tag=in.cluster_bomb,tag=!in.checked,distance=..1,limit=1] run function incendium:item/patron/holy_wrath/fireball_init
