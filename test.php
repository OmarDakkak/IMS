<?php
$pdo = new PDO("mysql: host=localhost:8889;	dbname=ecoledb_v2", "omar", "omar");

$req_stage1_tuteur_interne = "select T.nom as nom, T.prenom as prenom, T.email as email,
						    T.tel as tel, A.indicatif as indicatif, A.rue as rue, A.ville as
							ville, A.code_postal as code_postal, S.libelle_stage as lib_stage
							from etudiant E, stage S, tuteur T, adresse A
							where S.id_etudiant=$id_etudiant and S.id_tuteur_interne=T.id_tuteur 
							and T.id_adresse=A.id_adresse and S.stage_niveau=1";

$stage1_tuteur_interne_result = $pdo->query($req_stage1_tuteur_interne);
$stage1_tuteur_interne = $stage1_tuteur_interne_result->fetch();

echo $stage1_tuteur_interne;