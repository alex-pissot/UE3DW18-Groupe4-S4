<html>
<head>
<title>Pagination</title>
</head>
<body>
<?php
//Connexion à la base de données
$db = new PDO('mysql:host=database;dbname=watson;charset=utf8','root','');
 
$liensParPage=5; // On initialise nos pages à 5 liens par pages
 
$retour_total=$db->query('SELECT COUNT(*) AS total FROM tl_liens'); 
$donnees_total=$retour_total->fetch(); 
$total=$donnees_total['total']; // Nombre de liens qui se trouvent dans la bdd
 
$nombreDePages=ceil($total/$liensParPage); // Arrondi au chiffre supérieur le nombre de pages
 
if(isset($_GET['page'])) 
{
     $pageActuelle=intval($_GET['page']); // Définit la page sur laquelle on se trouve
 
     if($pageActuelle>$nombreDePages)
     {
          $pageActuelle=$nombreDePages;
     }
}
else
{
     $pageActuelle=1;   
}
 
$premiereEntree=($pageActuelle-1)*$liensParPage;
 
// Requête permettant de retourner les données de la table tl_liens par ordre décroissant
$retour_liens=$db->query("SELECT * FROM tl_liens ORDER BY id DESC LIMIT '.$premiereEntree.', '.$liensParPage.'");

while($donnees_liens=$retour_liens->fetch())
{
    // Affiche les entrées de la table tl_liens
    echo $donnees_liens=['lien_id'];
    echo $donnees_liens=['lien_url'];
    echo $donnees_liens=['lien_titre'];
    echo $donnees_liens=['lien_desc'];
}
echo '<p align="center">Page : '; 
for($i=1; $i<=$nombreDePages; $i++)  // La variable i définit le numéro de la page
{
     if($i==$pageActuelle)
     {
         echo ' [ '.$i.' ] '; 
     }
     else
     {
          echo ' <a href="pagination.php?page='.$i.'">'.$i.'</a> '; // Changement de page
     }
}
echo '</p>';
?>
</body>
</html>