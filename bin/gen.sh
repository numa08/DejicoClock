#!/usr/bin/env zsh

current=$(cd $(dirname $0) && pwd)
proj_root=${current}/..
content_root=${proj_root}/contents
LARGE=$content_root/large
MEDIUM=${content_root}/medium
SMALL=${content_root}/small

contents=$(cat <<EOF
<script src="http://source.pixiv.net/source/embed.js" data-id="49725165_d223625a12cf4c6bba10fc20ad200585" data-size="large" data-border="on" charset="utf-8"></script><noscript><p><a href="http://www.pixiv.net/member_illust.php?mode=medium&amp;illust_id=49725165" target="_blank">DUP</a> by <a href="http://www.pixiv.net/member.php?id=1258513" target="_blank">hiro</a> on <a href="http://www.pixiv.net/" target="_blank">pixiv</a></p></noscript>
<script src="http://source.pixiv.net/source/embed.js" data-id="49908223_9ebffb875f8441f8b08dff93f6150f11" data-size="large" data-border="on" charset="utf-8"></script><noscript><p><a href="http://www.pixiv.net/member_illust.php?mode=medium&amp;illust_id=49908223" target="_blank">来年もまた、お花見行こうね</a> by <a href="http://www.pixiv.net/member.php?id=16912" target="_blank">按図よしひろ</a> on <a href="http://www.pixiv.net/" target="_blank">pixiv</a></p></noscript>
<script src="http://source.pixiv.net/source/embed.js" data-id="40869020_d1ad8a1458a03b159dc63f482319f9ad" data-size="large" data-border="on" charset="utf-8"></script><noscript><p><a href="http://www.pixiv.net/member_illust.php?mode=medium&amp;illust_id=40869020" target="_blank">会えないサンタさん</a> by <a href="http://www.pixiv.net/member.php?id=16912" target="_blank">按図よしひろ</a> on <a href="http://www.pixiv.net/" target="_blank">pixiv</a></p></noscript>
<script src="http://source.pixiv.net/source/embed.js" data-id="49272639_30ae9394f68663f3bd57653e77501947" data-size="large" data-border="on" charset="utf-8"></script><noscript><p><a href="http://www.pixiv.net/member_illust.php?mode=medium&amp;illust_id=49272639" target="_blank">でじきゃら詰め</a> by <a href="http://www.pixiv.net/member.php?id=1241454" target="_blank">なこうみ こころ</a> on <a href="http://www.pixiv.net/" target="_blank">pixiv</a></p></noscript>
<script src="http://source.pixiv.net/source/embed.js" data-id="29876981_c61674ab61c551b0620af3ae4ba2ed1f" data-size="large" data-border="on" charset="utf-8"></script><noscript><p><a href="http://www.pixiv.net/member_illust.php?mode=medium&amp;illust_id=29876981" target="_blank">でじこ</a> by <a href="http://www.pixiv.net/member.php?id=116749" target="_blank">赤マフラー大和</a> on <a href="http://www.pixiv.net/" target="_blank">pixiv</a></p></noscript>
<script src="http://source.pixiv.net/source/embed.js" data-id="37284513_57dd7147d145dccdb70f922c628d097b" data-size="large" data-border="on" charset="utf-8"></script><noscript><p><a href="http://www.pixiv.net/member_illust.php?mode=medium&amp;illust_id=37284513" target="_blank">C84告知１　でじこアンソロ</a> by <a href="http://www.pixiv.net/member.php?id=16912" target="_blank">按図よしひろ</a> on <a href="http://www.pixiv.net/" target="_blank">pixiv</a></p></noscript>
<script src="http://source.pixiv.net/source/embed.js" data-id="39387562_d2efa6894c5340c56d5a9ea933b9288d" data-size="large" data-border="on" charset="utf-8"></script><noscript><p><a href="http://www.pixiv.net/member_illust.php?mode=medium&amp;illust_id=39387562" target="_blank">祝</a> by <a href="http://www.pixiv.net/member.php?id=1756644" target="_blank">ひめのみかん</a> on <a href="http://www.pixiv.net/" target="_blank">pixiv</a></p></noscript>
<script src="http://source.pixiv.net/source/embed.js" data-id="41796923_3b5dce8837726be0101e6e47f28b093d" data-size="large" data-border="on" charset="utf-8"></script><noscript><p><a href="http://www.pixiv.net/member_illust.php?mode=medium&amp;illust_id=41796923" target="_blank">ビタミンD(猫の日版)</a> by <a href="http://www.pixiv.net/member.php?id=6115905" target="_blank">あるば貴重</a> on <a href="http://www.pixiv.net/" target="_blank">pixiv</a></p></noscript>
<script src="http://source.pixiv.net/source/embed.js" data-id="37285132_913112fb76d4c4770cf2e01e1b8ddfae" data-size="large" data-border="on" charset="utf-8"></script><noscript><p><a href="http://www.pixiv.net/member_illust.php?mode=medium&amp;illust_id=37285132" target="_blank">土曜日東ヒー05b　ごはんふっくら</a> by <a href="http://www.pixiv.net/member.php?id=16912" target="_blank">按図よしひろ</a> on <a href="http://www.pixiv.net/" target="_blank">pixiv</a></p></noscript>
<script src="http://source.pixiv.net/source/embed.js" data-id="7664248_dcd5148e0c03cd620f7a940b4eb67d1b" data-size="large" data-border="on" charset="utf-8"></script><noscript><p><a href="http://www.pixiv.net/member_illust.php?mode=medium&amp;illust_id=7664248" target="_blank">といき</a> by <a href="http://www.pixiv.net/member.php?id=16912" target="_blank">按図よしひろ</a> on <a href="http://www.pixiv.net/" target="_blank">pixiv</a></p></noscript>
<script src="http://source.pixiv.net/source/embed.js" data-id="41556887_5e462b4066a1205a19e5415137114141" data-size="large" data-border="on" charset="utf-8"></script><noscript><p><a href="http://www.pixiv.net/member_illust.php?mode=medium&amp;illust_id=41556887" target="_blank">でじこHappy birthday!!</a> by <a href="http://www.pixiv.net/member.php?id=1235584" target="_blank">刃ノ月</a> on <a href="http://www.pixiv.net/" target="_blank">pixiv</a></p></noscript>
<script src="http://source.pixiv.net/source/embed.js" data-id="46634822_99aa5afa97facb44795a19148d37d589" data-size="large" data-border="on" charset="utf-8"></script><noscript><p><a href="http://www.pixiv.net/member_illust.php?mode=medium&amp;illust_id=46634822" target="_blank">にょ</a> by <a href="http://www.pixiv.net/member.php?id=139423" target="_blank">pow</a> on <a href="http://www.pixiv.net/" target="_blank">pixiv</a></p></noscript>
<script src="http://source.pixiv.net/source/embed.js" data-id="8668678_eb82c512cd8dce14261550e02fc6a398" data-size="large" data-border="on" charset="utf-8"></script><noscript><p><a href="http://www.pixiv.net/member_illust.php?mode=medium&amp;illust_id=8668678" target="_blank">おめでとう</a> by <a href="http://www.pixiv.net/member.php?id=16912" target="_blank">按図よしひろ</a> on <a href="http://www.pixiv.net/" target="_blank">pixiv</a></p></noscript>
<script src="http://source.pixiv.net/source/embed.js" data-id="2095227_a422dd222495f16f6a98c246f34cf491" data-size="large" data-border="on" charset="utf-8"></script><noscript><p><a href="http://www.pixiv.net/member_illust.php?mode=medium&amp;illust_id=2095227" target="_blank">でじこ</a> by <a href="http://www.pixiv.net/member.php?id=381643" target="_blank">まーぴん</a> on <a href="http://www.pixiv.net/" target="_blank">pixiv</a></p></noscript>
<script src="http://source.pixiv.net/source/embed.js" data-id="41465832_d66f49f6c58da117c691d8cdb8bb9c76" data-size="large" data-border="on" charset="utf-8"></script><noscript><p><a href="http://www.pixiv.net/member_illust.php?mode=medium&amp;illust_id=41465832" target="_blank">でじたん</a> by <a href="http://www.pixiv.net/member.php?id=1011721" target="_blank">てん子@11/14単行本発売</a> on <a href="http://www.pixiv.net/" target="_blank">pixiv</a></p></noscript>
<script src="http://source.pixiv.net/source/embed.js" data-id="2559426_155781e54f38da420bb4ec525bf5584c" data-size="large" data-border="on" charset="utf-8"></script><noscript><p><a href="http://www.pixiv.net/member_illust.php?mode=medium&amp;illust_id=2559426" target="_blank">うぇるかむとぅーまいは</a> by <a href="http://www.pixiv.net/member.php?id=471507" target="_blank">アヤコ</a> on <a href="http://www.pixiv.net/" target="_blank">pixiv</a></p></noscript>
<script src="http://source.pixiv.net/source/embed.js" data-id="8804632_ee9a7cd8225b3c8d4fde924e914ed7a7" data-size="large" data-border="on" charset="utf-8"></script><noscript><p><a href="http://www.pixiv.net/member_illust.php?mode=medium&amp;illust_id=8804632" target="_blank">バレンタイン</a> by <a href="http://www.pixiv.net/member.php?id=16912" target="_blank">按図よしひろ</a> on <a href="http://www.pixiv.net/" target="_blank">pixiv</a></p></noscript>
<script src="http://source.pixiv.net/source/embed.js" data-id="19009864_5a75ce7d84505ad4c45dae6ef04e541a" data-size="large" data-border="on" charset="utf-8"></script><noscript><p><a href="http://www.pixiv.net/member_illust.php?mode=medium&amp;illust_id=19009864" target="_blank">――まってるにょ♪（塗ってみた）</a> by <a href="http://www.pixiv.net/member.php?id=18652" target="_blank">龍姫@ぱにーに</a> on <a href="http://www.pixiv.net/" target="_blank">pixiv</a></p></noscript>
<script src="http://source.pixiv.net/source/embed.js" data-id="19025733_eca72f25e2759e30d8621f06f876096a" data-size="large" data-border="on" charset="utf-8"></script><noscript><p><a href="http://www.pixiv.net/member_illust.php?mode=medium&amp;illust_id=19025733" target="_blank">塗らせていただきました！</a> by <a href="http://www.pixiv.net/member.php?id=2983975" target="_blank">よもぎぃ＠毎日ヒマ～</a> on <a href="http://www.pixiv.net/" target="_blank">pixiv</a></p></noscript>
<script src="http://source.pixiv.net/source/embed.js" data-id="26326942_8e4a29a663f867761b0c822533c13f3f" data-size="large" data-border="on" charset="utf-8"></script><noscript><p><a href="http://www.pixiv.net/member_illust.php?mode=medium&amp;illust_id=26326942" target="_blank">ピカソのアレ</a> by <a href="http://www.pixiv.net/member.php?id=16912" target="_blank">按図よしひろ</a> on <a href="http://www.pixiv.net/" target="_blank">pixiv</a></p></noscript>
EOF)

write()
{
    case $1 in
        "large")
            target=$LARGE
            ;;
        "medium")
            target=$MEDIUM
            ;;
        "small")
            target=$SMALL
            ;;
    esac

    num=1
    echo $2 | while read line
do

cat <<EOF > $target/$num.html
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>1</title>
</head>
<body>
$line
</body>
</heml>
EOF

    ((num = $num + 1))
done
}

large()
{
    write large $1
}

medium()
{
    mid_contents=$(echo $1 | sed -e 's/large/medium/g')
    write medium $mid_contents
}

small()
{
    sm_contents=$(echo $1 | sed -e 's/large/small/g')
    write small $sm_contents
}

large $contents
medium $contents
small $contents
