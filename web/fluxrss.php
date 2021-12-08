<?php
// connexion a la Base de Données
$db = new PDO('mysql:host=database;dbname=watson;charset=utf8','root','');
// Récupération de la table tl_liens (MySQL)
$lien = $db->query("SELECT * FROM tl_liens ORDER BY lien_id desc LIMIT 0,15");
  
// Affichage
header('Content-Type: text/xml; charset=UTF-8');
echo '<?xml version="1.0" encoding="UTF-8"?>'."\n";
?>
<rss version="2.0">
    <channel>
        <title>Watson</title>
        <link></link>
        <description>Watson - Articles</description>
        <?php
        // Boucle qui liste les items
        while( $a = $lien->fetch()) { ?>
            <item>
                <title><?= $a['lien_titre'] ?></title>
                <link><?= $a['lien_url'] ?></link>
                <description><?= $a['lien_desc'] ?></description>
            </item>
                <?php
            }
        ?>
    </channel>
</rss>