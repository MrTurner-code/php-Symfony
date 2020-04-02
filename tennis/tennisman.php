<!DOCTYPE html>
<html>
    <head>
        <title>Classement Tennis Homme - ATP -</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
		<form method="GET" action="tennisman.php">
			<input type="radio" name="orderby" value="classement" 
			<?php 
				if(isset($_GET["orderby"]) && $_GET["orderby"] == "classement")
				{
					echo "checked";
				}
			?>
			>: ordre d'affichage sur le classement
			<input type="radio" name="orderby" value="nom"
			<?php
				if(isset($_GET["orderby"]) && $_GET["orderby"] == "nom")
				{
					echo "checked";
				}
			?>
			>: ordre d'affichage sur le nom
			<input type="radio" name="orderby" value="prenom"
			<?php
				if(isset($_GET["orderby"]) && $_GET["orderby"] == "prenom")
				{
					echo "checked";
				}
			?>
			>: ordre d'affichage sur le prénom
			<input type="text" name="limit">
			<input type="submit" value="Filtrer">
		</form>
		<?php
			$limit = "";
			$orderby = "";
			if(isset($_GET["limit"]) && $_GET["limit"] != "")
			{
				$limit = " LIMIT " . $_GET["limit"];
			}
			if(isset($_GET["orderby"]))
			{
				$orderby = " ORDER BY " . $_GET["orderby"];
			}
			include("includes/bdd.inc.php");
			$sql = "SELECT * FROM tennisman $orderby $limit";
			$resultat = mysqli_query($lien, $sql);
			if(!$resultat)
			{
				echo "ERREUR : BDD (select)";
				exit();
			}
			echo "<table>";
			echo "<tr>";
				echo "<th>Nom</th>";
				echo "<th>Prénom</th>";
				echo "<th>Nationalité</th>";
				echo "<th>Code du pays</th>";
				echo "<th>Nombre de points acquis</th>";
				echo "<th>Nombre de tournois réalisés</th>";
				echo "<th>Classement</th>";
			echo "</tr>";
			while($ligne = mysqli_fetch_array($resultat))
			{
				echo "<tr>";
					echo "<td>" . $ligne['nom'] . "</td>";
					echo "<td>" . $ligne['prenom'] . "</td>";
					echo "<td>" . $ligne['nationalite'] . "</td>";
					echo "<td>" . $ligne['codepays'] . "</td>";
					echo "<td>" . $ligne['pointacquis'] . "</td>";
					echo "<td>" . $ligne['nombretournoi'] . "</td>";
					echo "<td>" . $ligne['classement'] . "</td>";
				echo "</tr>";
			}
			echo "</table>";
		?>
        <script language="JavaScript" type="text/javascript">
        </script>
    </body>
</html>
