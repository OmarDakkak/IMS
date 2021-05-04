CREATE TABLE `adresse` (
  `id_adresse` smallint(6) NOT NULL,
  `indicatif` decimal(5,0) DEFAULT NULL,
  `rue` varchar(50) DEFAULT NULL,
  `ville` varchar(50) DEFAULT NULL,
  `code_postal` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `adresse`
--

INSERT INTO `adresse` (`id_adresse`, `indicatif`, `rue`, `ville`, `code_postal`) VALUES
(1, '48', 'rue des moulineaux', 'Paris', '75415'),
(2, '54', 'rue des asticotes', 'Paris', '75415'),
(3, '758', 'boulevard maastricht', 'Paris', '75415'),
(4, '1', 'avenue beau regard', 'Paris', '75415'),
(5, '11', 'avenue coluche', 'Paris', '75415'),
(6, '145', 'quai de la rapêe', 'Bordeaux', '32100'),
(7, '21', 'rue marcel doriot', 'Toulouse', '00450'),
(8, '41', 'rue lima', 'Bordeaux', '32300'),
(9, '45', 'avenue du lion', 'lyon', '69400'),
(10, '20', 'boulevard capucine', 'Paris', '75415'),
(11, '200', 'rue de l\'école', 'Calais', '62100'),
(12, '200', 'rue de la rapêe', 'Calais', '62100'),
(13, '141', 'boulevard poissonière', 'Paris', '75415'),
(14, '145', 'place d\'italie', 'Mérignac', '32100'),
(15, '21', 'rue platier', 'Toulouse', '00450'),
(16, '41', 'rue torunesol', 'Bordeaux', '32300'),
(17, '45', 'avenue lieutenant', 'lyon', '69400'),
(18, '20', 'rue richard', 'Paris', '75415');

-- --------------------------------------------------------

--
-- Table structure for table `campus`
--

CREATE TABLE `campus` (
  `id_campus` tinyint(4) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `filiere` varchar(255) NOT NULL,
  `date_creation` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `campus`
--

INSERT INTO `campus` (`id_campus`, `nom`, `filiere`, `date_creation`) VALUES
(1, 'Calais', 'Génie Informatique', '2008-05-12'),
(2, 'Saint-Omer', 'Génie Industriel', '2008-05-12'),
(3, 'Dunkerque', 'Génie Energétique et Environnement', '2020-05-12');

-- --------------------------------------------------------

--
-- Table structure for table `entreprise`
--

CREATE TABLE `entreprise` (
  `id_entreprise` smallint(6) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `id_adresse` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `entreprise`
--

INSERT INTO `entreprise` (`id_entreprise`, `nom`, `id_adresse`) VALUES
(1, 'thales', 5),
(2, 'nexter', 6),
(3, 'matières', 7),
(4, 'sekoia', 8),
(5, 'suez', 9),
(6, 'engie', 10),
(7, 'EILCO', 11);

-- --------------------------------------------------------

--
-- Table structure for table `etudiant`
--

CREATE TABLE `etudiant` (
  `id_etudiant` smallint(6) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `civilite` varchar(50) DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  `id_adresse` smallint(6) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `annee_scolaire` varchar(50) DEFAULT NULL,
  `id_campus` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `etudiant`
--

INSERT INTO `etudiant` (`id_etudiant`, `nom`, `prenom`, `civilite`, `date_naissance`, `id_adresse`, `email`, `tel`, `annee_scolaire`, `id_campus`) VALUES
(1, 'nguyen', 'martin', 'monsieur', '1997-04-25', 1, 'martinnguyen@outlook.com', '1111111111', 'ING2', 1),
(2, 'dupont', 'jean', 'monsieur', '1996-04-25', 2, 'jeandupont@outlook.com', '1111111111', 'ING1', 2),
(3, 'flores', 'marie', 'madame', '1998-04-25', 3, 'floresmarie@outlook.com', '1111111111', 'ING3', 3),
(4, 'lofter', 'christian', 'monsieur', '1994-04-25', 4, 'christianlofter@outlook.com', '1111111111', 'Diplômé/plus en formation', 1);

-- --------------------------------------------------------

--
-- Table structure for table `stage`
--

CREATE TABLE `stage` (
  `id_stage` smallint(6) NOT NULL,
  `libelle` varchar(255) NOT NULL,
  `stage_niveau` tinyint(4) DEFAULT NULL,
  `id_etudiant` smallint(6) DEFAULT NULL,
  `id_tuteur_interne` smallint(6) DEFAULT NULL,
  `id_tuteur_externe` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stage`
--

INSERT INTO `stage` (`id_stage`, `libelle`, `stage_niveau`, `id_etudiant`, `id_tuteur_interne`, `id_tuteur_externe`) VALUES
(1, 'Stage de première année - Découverte du milieu du travail', 1, 1, 1, 2),
(2, 'Stage de première année - Découverte du milieu du travail', 1, 3, 1, 3),
(3, 'Stage de deuxième année - Assistant Ingénieur', 2, 3, 1, 4),
(4, 'Stage de première année - Découverte du milieu du travail', 1, 4, 1, 5),
(5, 'Stage de deuxième année - Assistant Ingénieur', 2, 4, 1, 6),
(6, 'Stage de troisième année - Projet de Fin d\'Etudes', 3, 4, 1, 7),
(7, 'Stage de deuxième année - Assistant Ingénieur', 2, 1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tuteur`
--

CREATE TABLE `tuteur` (
  `id_tuteur` smallint(6) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `id_adresse` smallint(6) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `id_entreprise` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tuteur`
--

INSERT INTO `tuteur` (`id_tuteur`, `nom`, `prenom`, `id_adresse`, `email`, `tel`, `id_entreprise`) VALUES
(1, 'Lherbier', 'Régis', 12, 'regis.lherbier@outlook.com', '1111111111', 7),
(2, 'Dupont', 'Xavier', 13, 'xavierdupont@hotmail.fr', '1111111111', 1),
(3, 'Charles', 'Jean', 14, 'jeancharles@hotmail.fr', '1111111111', 2),
(4, 'Dubois', 'Paul', 15, 'pauldubois@hotmail.fr', '1111111111', 3),
(5, 'Lepelletier', 'Richard', 16, 'richardlepelletier@hotmail.fr', '1111111111', 4),
(6, 'Gump', 'Forest', 17, 'forestgump@hotmail.fr', '1111111111', 5),
(7, 'Douglas', 'Mike', 18, 'mikedouglas@hotmail.fr', '1111111111', 6);

-- --------------------------------------------------------

--
-- Table structure for table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id_utilisateur` smallint(6) NOT NULL,
  `login` varchar(100) DEFAULT NULL,
  `pwd` varchar(100) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `utilisateur`
--

INSERT INTO `utilisateur` (`id_utilisateur`, `login`, `pwd`, `role`, `email`) VALUES
(12, 'admin', '123', 'Directeur', 'admin@gmail.com'),
(13, 'swc1', '123', 'Secrétaire', 'sec1@gmail.com'),
(14, 'sec2', '123', 'Secrétaire', 'user2@gmail.com'),
(17, 'sec3', '123', 'Secrétaire', 'test10@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adresse`
--
ALTER TABLE `adresse`
  ADD PRIMARY KEY (`id_adresse`);

--
-- Indexes for table `campus`
--
ALTER TABLE `campus`
  ADD PRIMARY KEY (`id_campus`);

--
-- Indexes for table `entreprise`
--
ALTER TABLE `entreprise`
  ADD PRIMARY KEY (`id_entreprise`);

--
-- Indexes for table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`id_etudiant`),
  ADD KEY `id_campus` (`id_campus`),
  ADD KEY `id_adresse` (`id_adresse`);

--
-- Indexes for table `stage`
--
ALTER TABLE `stage`
  ADD PRIMARY KEY (`id_stage`),
  ADD KEY `id_etudiant` (`id_etudiant`),
  ADD KEY `id_tuteur_interne` (`id_tuteur_interne`),
  ADD KEY `id_tuteur_externe` (`id_tuteur_externe`);

--
-- Indexes for table `tuteur`
--
ALTER TABLE `tuteur`
  ADD PRIMARY KEY (`id_tuteur`),
  ADD KEY `id_adresse` (`id_adresse`),
  ADD KEY `id_entreprise` (`id_entreprise`);

--
-- Indexes for table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id_utilisateur`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adresse`
--
ALTER TABLE `adresse`
  MODIFY `id_adresse` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `campus`
--
ALTER TABLE `campus`
  MODIFY `id_campus` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `entreprise`
--
ALTER TABLE `entreprise`
  MODIFY `id_entreprise` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `id_etudiant` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `stage`
--
ALTER TABLE `stage`
  MODIFY `id_stage` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tuteur`
--
ALTER TABLE `tuteur`
  MODIFY `id_tuteur` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id_utilisateur` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `etudiant`
--
ALTER TABLE `etudiant`
  ADD CONSTRAINT `etudiant_ibfk_1` FOREIGN KEY (`id_campus`) REFERENCES `campus` (`id_campus`) ON DELETE CASCADE,
  ADD CONSTRAINT `etudiant_ibfk_2` FOREIGN KEY (`id_adresse`) REFERENCES `adresse` (`id_adresse`) ON DELETE CASCADE;

--
-- Constraints for table `stage`
--
ALTER TABLE `stage`
  ADD CONSTRAINT `stage_ibfk_1` FOREIGN KEY (`id_etudiant`) REFERENCES `etudiant` (`id_etudiant`) ON DELETE CASCADE,
  ADD CONSTRAINT `stage_ibfk_2` FOREIGN KEY (`id_tuteur_interne`) REFERENCES `tuteur` (`id_tuteur`) ON DELETE CASCADE,
  ADD CONSTRAINT `stage_ibfk_3` FOREIGN KEY (`id_tuteur_externe`) REFERENCES `tuteur` (`id_tuteur`) ON DELETE CASCADE;

--
-- Constraints for table `tuteur`
--
ALTER TABLE `tuteur`
  ADD CONSTRAINT `tuteur_ibfk_1` FOREIGN KEY (`id_adresse`) REFERENCES `adresse` (`id_adresse`) ON DELETE CASCADE,
  ADD CONSTRAINT `tuteur_ibfk_2` FOREIGN KEY (`id_entreprise`) REFERENCES `entreprise` (`id_entreprise`) ON DELETE CASCADE;
