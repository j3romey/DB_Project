-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.16-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for test
CREATE DATABASE IF NOT EXISTS `test` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `test`;


-- Dumping structure for table test.course
CREATE TABLE IF NOT EXISTS `course` (
  `Cid` int(10) NOT NULL AUTO_INCREMENT,
  `Acronym` char(4) COLLATE utf8_bin DEFAULT NULL,
  `Number` int(5) DEFAULT NULL,
  `Name` char(255) COLLATE utf8_bin DEFAULT NULL,
  `Description` varchar(2000) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`Cid`),
  KEY `FK_course_department` (`Acronym`),
  CONSTRAINT `FK_course_department` FOREIGN KEY (`Acronym`) REFERENCES `department` (`Acronym`)
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table test.course: ~183 rows (approximately)
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` (`Cid`, `Acronym`, `Number`, `Name`, `Description`) VALUES
	(1, 'CPSC', 101, 'Introduction to Unix', 'An introduction to the Unix operating system, including the text editor "emacs," its programming modes and macros; shell usage (including "sh" and "tcsh"); and some advanced Unix commands.'),
	(2, 'CPSC', 102, 'Advanced Unix', 'Unix signals, processes, and file system; interprocess communication; advanced shell programming; program profiling.'),
	(3, 'CPSC', 105, 'Introduction to the Analysis of Algorithms', 'Techniques to prove the correctness and measure the efficiency of algorithms.'),
	(4, 'CPSC', 203, 'Introduction to Problem Solving using Application Software', 'Introduction to computer fundamentals; contemporary topics, such as security and privacy, and the Internet and World Wide Web. Problem solving, analysis and design using application software, including spreadsheets and databases.'),
	(5, 'CPSC', 217, 'Introduction to Computer Science for Multidisciplinary Studies I', 'Introduction to problem solving, analysis and design of small-scale computational systems and implementation using a procedural programming language. For students wishing to combine studies in computer science with studies in other disciplines.'),
	(6, 'CPSC', 219, 'Introduction to Computer Science for Multidisciplinary Studies II', 'Continuation of Introduction to Computer Science for Multidisciplinary Studies I. Emphasis on object oriented analysis and design of small-scale computational systems and implementation using an object oriented language. Issues of design, modularization and programming style will be emphasized.'),
	(7, 'CPSC', 231, 'Introduction to Computer Science for Computer Science Majors I', 'Introduction to problem solving, the analysis and design of small-scale computational systems, and implementation using a procedural programming language. For computer science majors.'),
	(8, 'CPSC', 233, 'Introduction to Computer Science for Computer Science Majors II', 'Continuation of Introduction to Computer Science for Computer Science Majors I. Emphasis on object-oriented analysis and design of small-scale computational systems and implementation using an object oriented language. Issues of design, modularization, and programming style will be emphasized.'),
	(9, 'CPSC', 235, 'Advanced Introduction to Computer Science', 'An accelerated introduction to problem solving, the analysis and design of small-scale computational systems and implementation using both procedural and object oriented programming languages. Issues of design, modularization, and programming style will be emphasized.'),
	(10, 'CPSC', 313, 'Introduction to Computability', 'An introduction to abstract models of sequential computation, including finite automata, regular expressions, context-free grammars, and Turing machines. Formal languages, including regular, context-free, and recursive languages, methods for classifying languages according to these types, and relationships among these classes.'),
	(11, 'CPSC', 319, 'Data Structures, Algorithms, and Their Applications', 'Fundamental data structures, including arrays, lists, stacks, queues, trees, hash tables, and graphs. Algorithms for searching and sorting. Applications of these data structures and algorithms. For students wishing to combine studies in computer science with studies in other disciplines.'),
	(12, 'CPSC', 329, 'Explorations in Information Security and Privacy', 'A broad survey of topics in information security and privacy, with the purpose of cultivating an appropriate mindset for approaching security and privacy issues. Topics will be motivated by recreational puzzles. Legal and ethical considerations will be introduced as necessary.'),
	(13, 'CPSC', 331, 'Data Structures, Algorithms, and Their Analysis', 'Fundamental data structures, including arrays, lists, stacks, queues, trees, hash tables, and graphs. Algorithms for searching and sorting. Introduction to the correctness and analysis of algorithms. For computer science majors and those interested in algorithm design and analysis, information security, and other mathematically-intensive areas.'),
	(14, 'CPSC', 335, 'Intermediate Information Structures', 'A continuation of Computer Science 319 or 331. Collision resolution in hash tables, search algorithms, advanced tree structures, strings. Advanced algorithmic tools for the storing and manipulation of information.'),
	(15, 'CPSC', 355, 'Computing Machinery I', 'An introduction to computing machinery establishing the connection between programs expressed in a compiled language, an assembly language, and machine code, and how such code is executed. Includes the detailed study of a modern CPU architecture, its assembly language and internal data representation, and the relationship between high-level program constructs and machine operations.'),
	(16, 'CPSC', 359, 'Computing Machinery II', 'An introduction to hardware and microprocessor design, including the connection between gate-level digital logic circuits and sequential machines that can execute an algorithm and perform input and output.'),
	(17, 'CPSC', 399, 'Special Topics in Computer Science', 'Exploration of various areas in Computer Science. Topics will vary from year-to-year. It will be offered as required to provide the opportunity for students to engage in additional areas in Computer Science. Before registration, consult the Department of Computer Science for topics offered.'),
	(18, 'CPSC', 409, 'History of Computation', 'The history of computation from the earliest times to the modern era.'),
	(19, 'CPSC', 411, 'Compiler Construction', 'Introduction to compilers, interpreters, and the tools for parsing and translation. Lexical analysis, context free grammars and software tools for their recognition. Attribute grammars and their applications in translation and compiling.'),
	(20, 'CPSC', 413, 'Design and Analysis of Algorithms I', 'Techniques for the analysis of algorithms, including counting, summation, recurrences, and asymptotic relations; techniques for the design of efficient algorithms, including greedy methods, divide and conquer, and dynamic programming; examples of their application; an introduction to tractable and intractable problems.'),
	(21, 'CPSC', 418, 'Introduction to Cryptography', 'The basics of cryptography, with emphasis on attaining well-defined and practical notations of security. Symmetric and public key cryptosystems; one-way and trapdoor functions; mechanisms for data integrity; digital signatures; key management; applications to the design of cryptographic systems. In addition to written homework, assessment will involve application programming; additional mathematical theory and proof-oriented exercises will be available for extra credit.'),
	(22, 'CPSC', 433, 'Artificial Intelligence', 'An examination of the objectives, key techniques and achievements of work on artificial intelligence in Computer Science.'),
	(23, 'CPSC', 441, 'Computer Networks', 'Principles and practice in modern telecommunications, computer communications and networks. Layered communication protocols and current physical, data link, network and Internet protocol layers. Circuit switching, packet switching, and an introduction to broadband multimedia networking.'),
	(24, 'CPSC', 449, 'Programming Paradigms', 'Examination of the basic principles of the major programming language paradigms. Focus on declarative paradigms such as functional and logic programming. Data types, control expressions, loops, types of references, lazy evaluation, different interpretation principles, information hiding.'),
	(25, 'CPSC', 453, 'Introduction to Computer Graphics', 'Introduction to computer graphics. Principles of raster image generation. Example of a graphics API. Graphics primitives. Co-ordinate systems, affine transformations and viewing of graphical objects. Introduction to rendering including shading models and ray tracing. Introduction to modelling including polygon meshes, subdivision, and parametric curves and surfaces.'),
	(26, 'CPSC', 457, 'Principles of Operating Systems', 'An introduction to operating systems principles. Performance measurement; concurrent programs; the management of information, memory and processor resources.'),
	(27, 'CPSC', 461, 'Information Structures III', 'File architecture and manipulation techniques for various file types. Physical characteristics of current mass storage devices. Advanced data structures and algorithms for implementing various sequential and hierarchical file structures. File organization and design for various applications, file systems and other storage management techniques including website design.'),
	(28, 'CPSC', 471, 'Data Base Management Systems', 'Conceptual, internal and external data bases. Relational data base systems and SQL. The normal forms, data base design, and the entity-relationship approach.'),
	(29, 'CPSC', 481, 'Human-Computer Interaction I', 'Fundamental theory and practice of the design, implementation, and evaluation of human-computer interfaces. Topics include: principles of design; methods for evaluating interfaces with or without user involvement; techniques for prototyping and implementing graphical user interfaces.'),
	(30, 'CPSC', 491, 'Techniques for Numerical Computation', 'Elementary techniques for the numerical solution of mathematical problems on a computer, including methods for solving linear and non-linear equations, numerical integration, and interpolation.'),
	(31, 'CPSC', 499, 'Special Topics in Computer Science', 'Exploration of various areas in Computer Science. Topics will vary from year to year. It will be offered as required to provide the opportunity for students to engage in additional areas in Computer Science. Before registration, consult the Department of Computer Science for topics offered.'),
	(32, 'CPSC', 501, 'Advanced Programming Techniques', 'Theory and application of advanced programming methods and tools. Recent issues as well as those of an enduring nature will be discussed.'),
	(33, 'CPSC', 502, 'Research Project', 'A substantial research project under the guidance of a faculty member. A report must be written and presented on completion of the course. 502.01. Research Project in Computer Science 502.02. Research Project in Theoretical Computer Science 502.03. Research Project in Computer Graphics 502.04. Research Project in Information Security 502.05. Research Project in Scientific Computation 502.06. Research Project in Software Engineering 502.07. Research Project in Human Computer Interaction 502.08. Research Project in Networks and Distributed Computing'),
	(34, 'CPSC', 503, 'Project', 'A research project conducted under the guidance of a faculty member. A report must be presented on completion of the course. 503.01. Project in Computer Science 503.02. Project in Theoretical Computer Science 503.03. Project in Computer Graphics 503.04. Project in Information Security 503.05. Project in Scientific Computation 503.06. Project in Software Engineering 503.07. Project in Human Computer Interaction 503.08. Project in Networks and Distributed Computing'),
	(35, 'CPSC', 511, 'Introduction to Complexity Theory', 'Time and space complexity; the classes P, LOGSPACE, PSPACE and their nondeterministic counterparts; containments and separations between complexity classes; intractability and the theory of NP-completeness; complexity theories for probabilistic algorithms and for parallel algorithms.'),
	(36, 'CPSC', 513, 'Computability', 'Computable functions; decidable and undecidable problems; Church\'s thesis and recursive functions.'),
	(37, 'CPSC', 517, 'Design and Analysis of Algorithms II', 'Advanced techniques for the design and analysis of deterministic and probabilistic algorithms; techniques for deriving lower bounds on the complexity of problems.'),
	(38, 'CPSC', 518, 'Introduction to Computer Algebra', 'Fundamental problems, classical and modern algorithms, and algorithm design and analysis techniques of use in computer algebra. Integer and polynomial arithmetic. Additional problems in computer algebra, possibly including problems in computational linear algebra, factorization, and concerning systems of polynomial equations will be considered as time permits.'),
	(39, 'CPSC', 519, 'Introduction to Quantum Computation', 'Quantum information, quantum algorithms including Shor\'s quantum factoring algorithm and Grover\'s quantum searching technique, quantum error correcting codes, quantum cryptography, nonlocality and quantum communication complexity, and quantum computational complexity.'),
	(40, 'CPSC', 521, 'Foundations of Functional Programming', 'Theoretical foundations of functional programming: the lambda-calculus, beta-reduction, confluence, and reduction strategies. Programming syntax: solving recursive equations with the Y-combinator, let and letrec, types, datatypes, and patterns. Programming in a functional language: recursion patterns, useful combinators, maps, and folds, for datatypes. Example applications: recursive descent parsing, unification, combinatorial algorithms, theorem proving.'),
	(41, 'CPSC', 522, 'Introduction to Randomized Algorithms', 'Techniques for the design and analysis of randomized algorithms; discrete probability theory; randomized data structures; lower bound techniques; randomized complexity classes; advanced algorithmic applications from various areas.'),
	(42, 'CPSC', 525, 'Principles of Computer Security', 'Security policies and protection mechanisms for a computing system, including such topics as design principles of protection systems, authentication and authorization, reference monitors, security architecture of popular platforms, formal modelling of protection systems, discretionary access control, safety analysis, information flow control, integrity, role-based access control. Legal and ethical considerations will be introduced.'),
	(43, 'CPSC', 526, 'Network Systems Security', 'Attacks on networked systems, tools and techniques for detection and protection against attacks including firewalls and intrusion detection and protection systems, authentication and identification in distributed systems, cryptographic protocols for IP networks, security protocols for emerging networks and technologies, privacy enhancing communication. Legal and ethical issues will be introduced.'),
	(44, 'CPSC', 527, 'Computer Viruses and Malware', 'Study of computer viruses, worms, Trojan horses, and other forms of malicious software. Countermeasures to malicious software. Legal and ethical issues, and some general computer and network security issues.'),
	(45, 'CPSC', 528, 'Spam and Spyware', 'Spam and other unsolicited bulk electronic communication, and spyware. Legal and ethical issues. Countermeasures and related security problems.'),
	(46, 'CPSC', 530, 'Information Theory and Security ', 'Information theoretic concepts such as entropy and mutual information and their applications to defining and evaluating information security systems including encryption, authentication, secret sharing and secure message transmission.'),
	(47, 'CPSC', 531, 'Systems Modelling and Simulation', 'An introduction to the modelling and simulation of stochastic systems; programming language issues; model and tool design; input data modelling; simulation experiments; and the interpretation of simulation results.'),
	(48, 'CPSC', 535, 'Introduction to Image Analysis and Computer Vision', 'Standard methods used in the analysis of digital images. Image acquisition and display: visual perception; digital representation. Sampling and enhancement. Feature extraction and classification methods. Object recognition.'),
	(49, 'CPSC', 550, 'Systems Administration', 'Topics and practices in systems administration and management. Required and optional administration duties and responsibilities. Moral and ethical conundrums, and legal responsibilities, in systems operation. Configuration and installation of operating systems and network and systems services.'),
	(50, 'CPSC', 559, 'Introduction to Distributed Systems', 'Designing and implementing distributed systems that overcome challenges due to concurrent computation, failure of components in the system and heterogeneity of processors and communication channels.'),
	(51, 'CPSC', 561, 'Introduction to Distributed Algorithms', 'Basic problems in distributed systems such as symmetry breaking, consensus, resource allocation, and synchronization. The impact of system characteristics, such as models of communication, timing and failure, and of solution requirements, such as correctness and complexity criteria and algorithmic constraints, on the computability and complexity of these problems. Techniques for solving problems under different models will be emphasized.'),
	(52, 'CPSC', 565, 'Emergent Computing', 'An insight into a new mindset for programming as an emergent and evolutionary process of "breeding," rather than constructing. Programs can evolve to perform specific tasks in a bottom-up fashion rather than being manually coded. Topics will include: decentralized agent-based programming, massive parallelism and interaction, evolution, swarm intelligence.'),
	(53, 'CPSC', 567, 'Foundations of Multi-Agent Systems', 'Modelling of agents and properties of multi-agent systems. Communication issues, including interaction and co-ordination concepts, forming and maintaining organizations, and competitive agent environments. Example systems; the implementation of a multi-agent system will be performed as the assignment.'),
	(54, 'CPSC', 568, 'Agent Communications', 'An examination of communication paradigms in multi-agent systems. A number of paradigms will be covered including simple protocols, BDI (Believe, Desire, Intension), and social commitments.'),
	(55, 'CPSC', 571, 'Design and Implementation of Database Systems', 'Implementation and design of modern database systems including query modification/optimization, recovery, concurrency, integrity, and distribution.'),
	(56, 'CPSC', 572, 'Fundamentals of Social Network Analysis and Data Mining', 'Introduction to data mining with emphasis on frequent pattern mining, clustering and classification, data collection, network construction, basic graph theory concepts and network analysis metrics, and case studies.'),
	(57, 'CPSC', 581, 'Human-Computer Interaction II', 'Intermediate and advanced topics and applications in human-computer interaction, to further one\'s skills for designing highly interactive human-computer interfaces.'),
	(58, 'CPSC', 583, 'Introduction to Information Visualization', 'Principles of information representation, presentation and interaction. Development of mappings from data to visual structures and exploration, navigation, cues, distortion and emphasis techniques.'),
	(59, 'CPSC', 584, 'Human-Robot Interaction', 'Introduction to the design, implementation and evaluation of human-robot interfaces. Topics include the evaluation of human-robot interaction (HRI), theoretical, philosophical and ethical issues, exploration of applications and tasks, prototyping HRI tools, and practical implementation and evaluation methods.'),
	(60, 'CPSC', 585, 'Games Programming', 'Standard techniques for the implementation of computer games. Standard multimedia programming environments and high performance multimedia. Special purpose rendering engines. Interactive control and feedback; modelling.'),
	(61, 'CPSC', 587, 'Fundamentals of Computer Animation', 'Principles of traditional animation, key framing, parametric and track animation, free form deformation, inverse kinematics, dynamics, spring mass systems, particle systems, numerical integration, Lagrangian constraints, space time constraints, collisions, human animation, behavioural animation, metamorphosis, implicit animation techniques, animating liquids, gases and cloth, motion capture.'),
	(62, 'CPSC', 589, 'Modelling for Computer Graphics', 'Parametric Modelling. B-splines and NURBS. Subdivision schemes. Surface subdivision. Multiresolution. Wavelets. Implicit modelling. Blends. Polygonization. Blobtree. Precise contact modelling. Solid modelling. CSG. Procedural modelling. Special topics, e.g. Differential geometry. Graph-based modelling. Topology.'),
	(63, 'CPSC', 591, 'Rendering', 'Physical foundations of illuminations techniques. Colour. Radiometry and photometry. Reflection models. The rendering equation. Ray tracing. Monte Carlo techniques. Sampling and antialiasing. Texturing. Radiosity. Photon tracing. Volume rendering. Image-based rendering. Real-time shading.'),
	(64, 'CPSC', 594, 'Software Engineering Project', 'A software engineering project conducted under the guidance of a faculty member.'),
	(65, 'CPSC', 598, 'Special Topics in Computer Science', 'New areas in Computer Science. It will be offered only as required. Before registration consult the Department of Computer Science for topics offered.'),
	(66, 'CPSC', 599, 'Special Topics in Computer Science', 'Exploration of various areas in Computer Science. Topics will vary from year to year. It will be offered as required to provide the opportunity for students to engage in additional areas in Computer Science. Before registration, consult the Department of Computer Science for topics offered.'),
	(67, 'CPSC', 601, 'Special Topics in Computer Science', 'A study of problems of particular interest to graduate students in Computer Science.'),
	(68, 'CPSC', 605, 'Information Storage and Processing in Biological Systems', 'Examination of complex biological systems; concepts and fundamentals of biological solutions to information storage and processing; modelling and computer simulation of biological systems; information storage in biological molecules; genetic networks; hierarchical organization of biological information processing in signal transduction, development, evolution, and ecology; biological control systems.'),
	(69, 'CPSC', 607, 'Biological Computation', 'Examination and modelling of biological networks; focus on the latest developments in biological computing and their theoretical backgrounds, such as: DNA computing; genomic algorithms; artificial chemistries; complex adaptive systems, chaos and fractals; immune system computing; gene regulatory networks; swarm intelligence systems.'),
	(70, 'CPSC', 609, 'Foundations of Multi-Agent Systems', 'Modelling of agents and properties of multi-agent systems. Communication issues, including interaction and co-ordination concepts, forming and maintaining organizations, and competitive agent environments. Example systems; the implementation of a multi-agent system will be performed as the assignment.'),
	(71, 'CPSC', 610, 'Compiler Code Generation and Optimization', 'Compiler code generation and optimization techniques, including register allocation, instruction selection, dataflow analysis, and code optimization techniques using intermediate representations. Implementation of special language features and tools for automated code generation.'),
	(72, 'CPSC', 611, 'Complexity Theory', 'Deterministic and non-deterministic time and space complexity; complexity classes and hierarchies; NP-complete problems and intractable problems; axiomatic complexity theory.'),
	(73, 'CPSC', 615, 'Computational Techniques for Graphics and Visualization', 'Various case studies from the fields of graphics and visualization.'),
	(74, 'CPSC', 617, 'Category Theory for Computer Science', 'Introduction to category theory with applications in computer science. Functors, natural transformations, adjoints and monads, initial and final algebras. Introduction to 2-categories and fibrations.'),
	(75, 'CPSC', 619, 'Quantum Computation', 'Quantum information, quantum algorithms including Shor\'s quantum factoring algorithm and Grover\'s quantum searching technique, quantum error correcting codes, quantum cryptography, nonlocality and quantum communication complexity, and quantum computational complexity.'),
	(76, 'CPSC', 622, 'Randomized Algorithms', 'Design and analysis of randomized algorithms; discrete probability theory; randomized data structures; lower bound techniques; randomized complexity classes; advanced algorithmic applications from various areas.'),
	(77, 'CPSC', 625, 'Principles of Computer Security', 'Security policies and protection mechanisms for a computing system, including such topics as design principles of protection systems, authentication and authorization, reference monitors, security architecture of popular platforms, formal modelling of protection systems, discretionary access control, safety analysis, information flow control, integrity, role-based access control. Legal and ethical considerations will be introduced as necessary.'),
	(78, 'CPSC', 626, 'Network Systems Security', 'Attacks on networked systems, tools and techniques for detection and protection against attacks including firewalls and intrusion detection and protection systems, authentication and identification in distributed systems, cryptographic protocols for IP networks, security protocols for emerging networks and technologies, privacy enhancing communication. Legal and ethical issues will be introduced as necessary.'),
	(79, 'CPSC', 627, 'Computer Viruses and Malware', 'Study of computer viruses, worms, Trojan horses, and other forms of malicious software. Countermeasures to malicious software. Legal and ethical issues, and some general computer and network security issues.'),
	(80, 'CPSC', 628, 'Spam and Spyware', 'Spam and other unsolicited bulk electronic communication, and spyware. Legal and ethical issues. Countermeasures, and related security problems.'),
	(81, 'CPSC', 629, 'Elliptic Curves and Cryptography', 'An introduction to elliptic curves over the rationals and finite fields. The focus is on both theoretical and computational aspects; subjects covered will include the study of endomorphism rings, Weil pairing, torsion points, group structure, and effective implementation of point addition. Applications to cryptography will be discussed, including elliptic curve-based Diffie-Helman key exchange, El Gamal encryption, and digital signatures, as well as the associated computational problems on which their security is based.'),
	(82, 'CPSC', 630, 'Information Theory and Security ', 'Information theoretic concepts such as entropy and mutual information, and their applications to defining and evaluating information security systems including encryption, authentication, secret sharing and secure message transmission.'),
	(83, 'CPSC', 635, 'Image Analysis and Computer Vision', 'Standard methods used in the analysis of digital images. Image acquisition and display: visual perception; digital representation. Sampling and enhancement. Feature extraction and classification methods. Object recognition.'),
	(84, 'CPSC', 641, 'Performance Issues in High Speed Networks', 'An overview of current research in high speed networks. Topics covered will include the current Internet, the future Internet, wireless networks, optical networks, Asynchronous Transfer Mode (ATM), TCP/IP, network traffic measurement, web server performance, and mobile computing. Emphasis will be placed on network performance issues for next-generation Internet protocols and applications.'),
	(85, 'CPSC', 643, 'Modern Wireless Networks', 'An introduction to the fundamentals and applications of wireless networks.'),
	(86, 'CPSC', 653, 'Computational Geometry', 'Geometric searching, hull proximity and intersection data structures and algorithms and their complexity.'),
	(87, 'CPSC', 657, 'Modelling And Visualization of Plants', 'Modelling, simulation and visualization of plants for computer graphics and biological purposes. Modelling of plants as an example of interdisciplinary research including computer science, biology, mathematics and physics. L-systems as a formal basis for model construction. Modelling languages. Information flow in plants. Symmetry, self-similarity and allometry of plants. Descriptive models of plant architecture. Models integrating plant structure and function. Simulation of plant development. Case studies: competition for space, phyllotaxis, tropisms, and biomechanical considerations. Reaction-diffusion models of morphogensis. Genotype-to-phenotype mapping. Modelling of plant ecosystems. Rendering and visualization of the models. A survey of applications and research directions.'),
	(88, 'CPSC', 661, 'Algorithms for Distributed Computation', 'Fundamental algorithmic problems in distributed computation; impact of communication, timing, failures and other characteristics on computability and complexity of solutions.'),
	(89, 'CPSC', 662, 'Agent Communications', 'An examination of communication paradigms in multi-agent systems. A number of paradigms will be covered including simple protocols, BDI (Believe, Desire, Intension), and social commitments.'),
	(90, 'CPSC', 667, 'Computer Algebra', 'Fundamental problems, classical and modern algorithms, and algorithm design and analysis techniques of use in computer algebra. Integer and polynomial arithmetic. Additional problems in computer algebra, possibly including problems in computational linear algebra, factorization, and concerning systems of polynomial equations will be considered as time permits.'),
	(91, 'CPSC', 669, 'Cryptography', 'An overview of the basic techniques in modern cryptography, with emphasis on fit-for-application primitives and protocols. Topics will include symmetric and public-key cryptosystems; digital signatures; elliptic curve cryptography; key management; attack models and well-defined notions of security.'),
	(92, 'CPSC', 671, 'Database Management Systems', 'Foundations of database applications and database systems, plus some advanced topics in data management systems will be introduced.'),
	(93, 'CPSC', 672, 'Fundamentals of Social Network Analysis and Data Mining', 'Introduction to data mining with emphasis on frequent pattern mining, clustering and classification, data collection, network construction, basic graph theory concepts and network analysis metrics, and case studies.'),
	(94, 'CPSC', 673, 'Distributed Database Systems', 'Introduction to distributed database systems. Topics covered include: architecture, data design, query processing, transaction management, multidatabases, object-oriented databases and advanced system issues.'),
	(95, 'CPSC', 675, 'Datawarehouse Systems', 'Design, development and deployment of datawarehouses. Schemas, models, data organization, OLAP, tuning, data mining and architectural models may be discussed.'),
	(96, 'CPSC', 681, 'Research Methods in Human-Computer Interaction', 'Application of the theory and methodology of human-machine studies to real systems; theory and practice.'),
	(97, 'CPSC', 683, 'Information Visualization: Theory and Practice', 'The theory and development of interactive visual representations of abstract data for the purpose of amplifying cognition. Topics covered can include representational issues, perceptual issues, visual literacy, spatial abstraction, and interaction issues.'),
	(98, 'CPSC', 687, 'Computer Animation', 'Principles of traditional animation, key framing, parametric and track animation, free form deformation, inverse kinematics, dynamics, spring mass systems, particle systems, numerical integration, Lagrangian constraints, space time constraints, collisions, human animation, behavioural animation, metamorphosis, implicit animation techniques, animating liquids, gases and cloth, motion capture.'),
	(99, 'CPSC', 689, 'Modelling for Computer Graphics', 'Parametric Modelling. B-splines and NURBS. Subdivision schemes. Surface subdivision. Multiresolution. Wavelets. Implicit modelling. Blends. Polygonization. Blobtree. Precise contact modelling. Solid modelling. CSG. Procedural modelling. Special topics, e.g. Differential geometry. Graph-based modelling. Topology.'),
	(100, 'CPSC', 691, 'Rendering', 'Physical foundations of illuminations techniques. Colour. Radiometry and photometry. Reflection models. The rendering equation. Ray tracing. Monte Carlo techniques. Sampling and antialiasing. Texturing. Radiosity. Photon tracing. Volume rendering. Image-based rendering. Real-time shading.'),
	(101, 'CPSC', 695, 'Data Management in Geographical Information Systems', 'Examination of advanced geometric algorithms for representation, analysis and visualization of Geographical Information Systems. Data structures such as progressive mesh, ROAM, multidimensional Delauney triangulization, quadtree and space partitioning. Algorithmic techniques such as incremental, divide and conquer, sweep-plane, and dimension reduction. Algorithms for surface simplification, culling, quality measurement and reduction.'),
	(102, 'CPSC', 696, 'Information Security Seminar', 'Topics in information security, such as security management, emerging threats, research frontiers using case studies and best practices.'),
	(103, 'CPSC', 697, 'Biometric Security', 'Principles of biometric system design, technology and performance evaluation. Verification, identification and synthesis in biometrics. Traditional and emerging techniques for fingerprint matching, face recognition, iris modelling, signature authentication, and biometric pattern recognition. Multi-modal biometrics and biometric security.'),
	(104, 'CPSC', 698, 'Information Security Project', 'An information security project conducted under the guidance of a faculty member. A report must be written and presented on completion of the course.'),
	(105, 'CPSC', 699, 'Research Methodology in Computer Science', 'An introduction to and survey of research areas and methods in Computer Science. Professional skills in computer science research such as reviewing, critical evaluation, and the preparation of research proposals.'),
	(106, 'CPSC', 701, 'Research Topics in Computer Science', 'In-depth course on a focused current research topic in Computer Science. Involves a significant research component and requires substantial background knowledge.'),
	(107, 'CPSC', 767, 'Advanced Topics in Multiagent Systems', 'An in-depth study of a selected subfield of multiagent systems including state-of-the-art research. This is a project-driven course.'),
	(108, 'CPSC', 771, 'Current Trends in Database Technology', 'Advanced topics chosen from Bioinformatics, Data mining, Mobile Databases, Spatial Databases and Web Databases. There is a large project component.'),
	(109, 'CPSC', 781, 'Advanced Topics in Human-Computer Interaction', 'The topics covered will change year by year depending on current advances in human computer interaction.'),
	(110, 'CPSC', 785, 'Implicit Modelling', 'A detailed look at modelling using implicit and iso-surface techniques taking an in-depth review of the literature. Algebraic methods will be followed by skeletal models, field function design, modelling techniques, rendering and texture mapping. Polygonisation algorithms, ray tracing implicits, techniques for animation, meta-morphosis, precise contact modelling, deformation and warping. Algorithms and data structures and implementation details will be presented. Students will be expected to make a new contribution in their project and term paper.'),
	(111, 'CPSC', 789, 'Advanced Geometric Modelling', 'Current research topics including spline modelling, Subdivision Surfaces, multiresolution, wavelets, analysis of the subdivision surfaces and reverse subdivision.'),
	(112, 'PHYS', 106, 'Module M6 Thermal Physics', 'Thermal Physics. Gas laws; kinetic theory of gases; temperature; internal energy; specific heat; energy transfer; laws of thermodynamics; PVT diagrams.'),
	(113, 'PHYS', 211, 'Mechanics', 'Introductory Newtonian particle mechanics and rigid bodies in rotational equilibrium: Kinematics, Newton\'s laws, conservation of momentum and mechanical energy.'),
	(114, 'PHYS', 221, 'Mechanics', 'Introductory Newtonian particle mechanics and rigid bodies in rotational equilibrium: Kinematics, Newton\'s laws, conservation of momentum and mechanical energy.'),
	(115, 'PHYS', 223, 'Introductory Electromagnetism, and Thermal Physics', 'Electrical forces and energy. Static electric fields due to point charges. Parallel-plate capacitor. Simple DC circuits. Lorentz force. Static magnetic fields generated by electric currents. Electromagnetic induction. Gas Laws; kinetic theory of gases; temperature, thermal energy, specific heat; energy transfer; laws of thermodynamics; PVT diagrams.'),
	(116, 'PHYS', 227, 'Classical Physics', 'Kinematics and statics of rigid bodies; conservation laws; rotational mechanics.'),
	(117, 'PHYS', 255, 'Electromagnetic Theory I', 'Electrostatics, DC circuits, calculation of magnetic intensity from currents, motion of charged particles in electric and magnetic fields, electromagnetic induction, transient effects in capacitors and inductors, electric and magnetic properties of materials.'),
	(118, 'PHYS', 259, 'Electricity and Magnetism (for students in Engineering)', 'Electric and magnetic fields related to charges and current through Maxwell’s equations. Energy stored in fields, potential energy, and voltage. Conductors, insulators, and dielectrics. Resistance, capacitance, and inductance with applications to RC/RL circuits.'),
	(119, 'PHYS', 271, 'ow Things Work', 'Physics behind many common devices will be discussed. Topics will be chosen from among the following: the use of simple and compound machines; waves, sound, acoustics; light and optics; household electric circuitry; magnetism.'),
	(120, 'PHYS', 303, 'uantum Mysteries and Paradoxes', 'Aims to explain basic quantum phenomena for students outside the physical sciences. Topics covered may include wave-particle duality, quantum interference, as well as the paradoxes of entanglement and quantum nonlocality. Applications such as quantum cryptography and quantum teleportation are discussed, as are the philosophical interpretations of the quantum picture of the world.'),
	(121, 'PHYS', 321, 'Harmonic Motion, Waves, and Rotation', 'Simple harmonic oscillations. Progressive waves in one dimension. Energy of a wave. Superposition. Standing waves. Newtonian mechanics of rigid body rotation.'),
	(122, 'PHYS', 323, 'Optics and Electromagnetism', 'Static electric fields due to charge distributions. Static magnetic fields due to current distributions. Time-dependent behaviour of capacitors and inductances. Geometrical optics: Thin lenses and curved mirrors. Physical optics: Interference and diffraction.'),
	(123, 'PHYS', 325, 'Modern Physics', 'Origins of quantum mechanics, a historical perspective. Concepts of wave mechanics and applications. Nuclear physics and radioactivity. Topics include: Special Theory of Relativity, Electromagnetic waves, Blackbody radiation, Photoelectric Effect, X-rays and Bragg Diffraction, Compton Scattering, Atomic Structure, The Bohr Model, Atomic Spectra, Applications of the Schrödinger Wave Equation, Radioactivity, Nuclear Stability, Nucleosynthesis, Structure of the Nucleus, Elementary Particles.'),
	(124, 'PHYS', 341, 'Classical Mechanics I', 'Forced and damped harmonic oscillations with real and complex numbers; anharmonic oscillators; central force motion and scattering; non-inertial frames; 2- and 3-body problems; applications of linear differential equations and complex numbers.'),
	(125, 'PHYS', 343, 'Classical Mechanics II', 'Rotating frames of reference; general rotations of rigid bodies; moment of inertia tensor; eigenvalues and eigenvectors; Lagrangian and Hamiltonian mechanics; potential theory and tides; perturbation theory.'),
	(126, 'PHYS', 365, 'coustics, Optics and Modern Physics (for students in Engineering)', 'Wave motion as applied to acoustics and physical optics. Wave-particle duality applied to light and matter; electron energy levels of atoms and crystals.'),
	(127, 'PHYS', 369, 'Acoustics, Optics and Radiation (for students in Engineering)', 'Wave motion as applied to acoustics, geometric and physical optics, and radiant energy transfer. Traditional and modern applications.'),
	(128, 'PHYS', 371, 'ntroduction to Energy', 'Energy and power will be discussed. Sources of energy such as wind power, solar power, nuclear power, geothermal energy and fossil fuels and related limitations will be considered. Generation and distribution of electricity will be discussed.'),
	(129, 'PHYS', 375, 'ntroduction to Optics and Waves', 'Geometrical Optics: lenses, mirrors, and other basic optical components. Wave motion. Description of light as a wave. Fermat’s principle. Refraction, scattering, interference, diffraction, and polarization. Optical instruments (including telescopes and microscopes). Lasers and fibre optics if time allows.'),
	(130, 'PHYS', 381, 'Computational Physics I', 'Solution of problems associated with the analysis of physical systems, using digital computers, high level programming languages, and mathematical computation systems.'),
	(131, 'PHYS', 397, 'Applied Physics Laboratory I', 'Basic laboratory electronics, vacuum systems, and optical devices. Introduction to experimental control, data collection, and analysis. Fundamentals of error analysis and error propagation.'),
	(132, 'PHYS', 443, 'Quantum Mechanics I', 'Basic postulates of quantum mechanics and their physical interpretation. Schrödinger\'s time-dependent and time-independent equations. Single particle in a potential field. Basic applications of quantum mechanics to atomic, molecular, optical, nuclear, and solid state physics, as well as quantum information science. Topics may include notions of quantum entanglement, non-locality and teleportation.'),
	(133, 'PHYS', 449, 'Statistical Mechanics I', 'State-counting; classical distributions; origins and role of entropy; equilibrium; microcanonical, canonical, and grand canonical ensembles; concepts of work, heat, and temperature; equations of state; heat capacity; equipartition theorem; engines; laws of thermodynamics; non-equilibrium systems; Maxwell-Boltzmann distribution; enthalpy and free energies.'),
	(134, 'PHYS', 451, 'Statistical Mechanics II', 'Gibbs\' paradox; bosons and fermions; quantum counting; classical-quantum transition; blackbody radiation; phase transitions; fluctuations and critical phenomena; complex systems; self-organized criticality; cellular automata.'),
	(135, 'PHYS', 455, 'Electromagnetic Theory II', 'Macroscopic Maxwell equations. Scalar and vector potentials. Electrostatics and magnetostatics. Dielectric and magnetic properties of materials. Superconductors.'),
	(136, 'PHYS', 457, 'Electromagnetic Theory III', 'Electromagnetic wave solutions to Maxwell\'s equations, in vacuum and in insulating and conducting media. Waveguides. Electromagnetic radiation from accelerated charges. Relativistic formulation of electrodynamics.'),
	(137, 'PHYS', 481, 'Computational Physics II', 'Solution of problems associated with the analysis of physical systems, using digital computers, high level programming languages, and mathematical computation systems.'),
	(138, 'PHYS', 497, 'Applied Physics Laboratory II', 'Intermediate laboratory electronics. AC circuit theory and semiconductor devices, including operational amplifiers. Digital sampling theory and frequency-domain signal processing. Computer automation of experimental control, data collection, and analysis, including error analysis and error propagation.'),
	(139, 'PHYS', 501, 'Special Relativity', 'Lorentz transformations in classical mechanics; relativistic kinematics; spacetime diagrams; relativistic energy and momentum conservation; Geometrical interpretation; applications of relativistic kinematics; four-vector formalism and tensors; applications, primarily to relativistic electrodynamics.'),
	(140, 'PHYS', 507, 'Solid State Physics', 'Crystal structure. Classification of solids and their bonding. Fermi surface. Elastic, electric and magnetic properties of solids.'),
	(141, 'PHYS', 509, 'Plasma Physics', 'Occurrence of plasmas in nature, single particle motion, plasmas as fluids, waves in plasmas, diffusion, resistivity, equilibrium and stability, kinetic theory of plasmas, non-linear effects.'),
	(142, 'PHYS', 521, 'Non-linear Dynamics and Chaos', 'Introduction to non-linear dynamical systems: Phase space representation, bifurcations, normal forms, non-linear oscillators, deterministic chaos, attractors, fractals, universality, renormalization, and synchronization.'),
	(143, 'PHYS', 543, 'Quantum Mechanics II', 'Theory of angular momentum and applications, perturbation theory and applications. Identical particles. Introduction to relativistic wave equations.'),
	(144, 'PHYS', 561, 'Stable and Radioactive Isotope Studies, Fundamentals', 'A multidisciplinary course. Topics include nucleosynthesis, radioactive decay, isotope exchange phenomena, kinetic isotope effects, tracer techniques, molecular spectra and instrumentation.'),
	(145, 'PHYS', 575, 'Optics', 'Geometrical Optics: lenses, mirrors, and other basic optical components. Matrix Methods. Physical Optics: Interference, Diffraction, and Polarization. Fourier Optics. Modern Optics: Lasers and Fibre Optics.'),
	(146, 'PHYS', 581, 'Computational Physics III', 'Solution of problems associated with the analysis of physical systems, using digital computers, high level programming languages, and mathematical computation systems (e.g., Maple, Macsyma).'),
	(147, 'PHYS', 593, 'Topics in Contemporary Physics', 'Topics will be from the research areas of staff members.'),
	(148, 'PHYS', 597, 'Senior Physics Laboratory', 'Selected advanced experiments. Where possible, students may choose those experiments most suited to their interests. Development of technical and computer-based skills, technical writing and presentation skills.'),
	(149, 'PHYS', 598, 'Honours Research Thesis', 'Each student will be assigned a project in consultation with a supervisor. Written reports and oral presentations are required.'),
	(150, 'PHYS', 599, 'Senior Research Thesis', 'Each student will be assigned a project in consultation with a supervisor. Written reports and oral presentations are required.'),
	(151, 'PHYS', 603, 'Experimental Methods of Physics', 'Instrumentation for physical experiments. General philosophy of experimentation; signal processes; signal processing methods; instrument design and control; data acquisition and storage; specific detection methods.'),
	(152, 'PHYS', 605, 'Advanced Data Analysis', 'Methods of extraction of significant information from experimental data degraded by noise. Parametric and non-parametric statistical methods; curve fitting; spectral analysis; filtering, sampling, convolution and deconvolution techniques.'),
	(153, 'PHYS', 609, 'Advanced Classical Mechanics', 'Variational principles, Lagrange\'s equations, Noether\'s theorem. Hamilton\'s equations and canonical transformations. Hamilton-Jacobi theory, action-angle variables. Perturbation theory.'),
	(154, 'PHYS', 611, 'Statistical Physics', 'Classical and quantum ensemble theory applied to interacting systems: real gases, spin lattices, phase transitions. Kinetic theory: Boltzmann equation, transport processes, irreversible processes and fluctuations.'),
	(155, 'PHYS', 613, 'Electrodynamics', 'Interaction between charged particles and the electromagnetic field in relativistic formulation. Scattering and energy losses of charged particles. Radiation by charged particles.'),
	(156, 'PHYS', 615, 'Advanced Quantum Mechanics I', 'Formalism of quantum mechanics. Entangled systems and their applications. Quantum nonlocality, Einstein-Podolsky-Rosen paradox, Bell theorem. Interpretations of quantum mechanics. Second quantization. Quantum theory of the electromagnetic field. Addition of angular momenta, Clebsch-Gordan coefficients, Wigner-Eckart theorem.'),
	(157, 'PHYS', 617, 'Advanced Quantum Mechanics II', 'Relativistic quantum mechanics. Topics may include Feynman path integrals. Scattering theory. Charged particles in electric and magnetic fields. Approximation methods. Quantum field theory.'),
	(158, 'PHYS', 619, 'Statistical Physics II', 'Topics Theories of equilibrium and non-equilibrium critical phenomena and methods to study fluctuating systems selected from the following list of topics: Percolation, scaling theory, phase transitions, Landau-Ginzburg theory, lattice models, Monte Carlo methods, renormalization group, self-organized criticality, theory of random graphs; Brownian motion, random walks and diffusion, Fokker-Planck-Equation, Markov processes, stochastic differential equations, first passage times.'),
	(159, 'PHYS', 621, 'Nonlinear Dynamics and Pattern Formation', 'Topics: Introduction to pattern formation and self-organization in nature: Reaction-diffusion systems, hydrodynamical systems, bistable media, excitable and oscillatory media, stability analysis, bifurcations, pattern selection, amplitude equations and normal forms, fronts, traveling waves, topological defects, spiral waves, spatiotemporal chaos, defect-mediated turbulence, spatiotemporal point processes'),
	(160, 'PHYS', 629, 'Gravitation', 'An introduction to Einstein\'s theory of gravitation. Applications to the solar system, black holes, and cosmology.'),
	(161, 'PHYS', 663, 'Applications of Stable Isotopes', 'Application of stable isotope techniques with special focus on Hydrogeology, Geology and Environmental Sciences. The use of isotopes to understand the water, carbon, nitrogen and sulphur cycles is demonstrated. Topics include hydrology, paleoclimates, geothermometry, fossil fuels exploration and recovery, pollutant tracing, food webs, forensic investigations, among others.'),
	(162, 'PHYS', 671, 'Atomic and Molecular Spectroscopy', 'Atomic structure and spectra. Rotational, vibrational and electronic spectra of diatomic molecules, including microwave, infrared, Raman and visible/ultraviolet spectroscopic techniques. Hund\'s coupling cases. Polyatomic molecular spectroscopy. Examples from astronomy and upper atmosphere/space physics.'),
	(163, 'PHYS', 673, 'Quantum and Non-linear Optics', 'Theory of dispersion. Fast and slow light. Basics of nonlinear optics. Nonlinear optical crystals, phase matching. Coherence theory. Preparation, manipulation and measurement of quantum optical states and single-photon qubits. Elements of atomic physics, optical Bloch equation, rotating-wave approximation. Two-and three-level systems. Cavity quantum electrodynamics.'),
	(164, 'PHYS', 675, 'Special Topics in Laser and Optical Sciences', 'Lectures by Physics and Astronomy, Chemistry, Engineering, and/or Medicine staff on current research topics in laser science and modern optical techniques.'),
	(165, 'PHYS', 677, 'Implementations of Quantum Information', 'Proposals and realizations of quantum information tasks including quantum computation, quantum communication, and quantum cryptography in optical, atomic, molecular, and solid state systems.'),
	(166, 'PHYS', 691, 'Scientific Communication Skills', 'Required, multi-component, program of courses for all graduate students in the Department of Physics and Astronomy designed to assist students in improving their scientific oral and written communication skills.'),
	(167, 'PHYS', 697, 'Topics in Contemporary Physics', 'Topics will be from the research areas of staff members.'),
	(168, 'PHYS', 699, 'Project in Physics', 'Each student will select a project in consultation with a staff member. The project may be experimental or theoretical in nature. A written report and an oral presentation are required.'),
	(169, 'PHYS', 701, 'Independent Study', 'Each student will select a topic of study in consultation with a staff member. The topic will be in the research area of the staff member. This course may not be used to meet the regular course requirements in the MSc and PhD programs.'),
	(170, 'JPNS', 205, 'Beginners\' Japanese I', 'Basic concepts of modern Japanese. Reading and writing of characters, essentials of grammar, basic vocabulary, and oral drills on normal speech patterns.'),
	(171, 'JPNS', 207, 'Beginners\' Japanese II', 'Continuation of Japanese 205.'),
	(172, 'JPNS', 301, 'Continuing Japanese I', 'Further acquisition of Japanese characters, and the development of conversational skills through reading and discussion of selected Japanese texts. Structural analysis of normal speech patterns. Preparation of written assignments. A continuation of Japanese 207.'),
	(173, 'JPNS', 303, 'Continuing Japanese II', 'Continuation of Japanese 301.'),
	(174, 'JPNS', 309, 'Topics in Japanese Culture in an Immersion Setting', 'Introduction to contemporary Japanese culture through research projects and life experience. 309.01. Wisdom, Imagination, and Creation309.02. Longing, Memory, and Inheritance'),
	(175, 'JPNS', 311, 'Japanese Language in an Immersion Setting I', 'Stresses oral skills and cultural understanding in an immersion setting. While the focus will be on speaking and aural comprehension, reading and writing will also be introduced.'),
	(176, 'JPNS', 313, 'Japanese Language in an Immersion Setting II', 'A continuation of Japanese 311.'),
	(177, 'JPNS', 317, 'Topics in Japanese Civilization', 'Distinctive features of Japanese civilization within the Asian context. 317.01. Japanese Civilization 317.02. Japanese Cultural History Through Film 317.03. Japanese Cultural History in the Present Day'),
	(178, 'JPNS', 331, 'Intermediate Japanese I', 'An intermediate course giving emphasis to both writing and oral skills. Some of the more difficult aspects of modern Japanese grammar will be studied.'),
	(179, 'JPNS', 333, 'Intermediate Japanese II', 'A continuation of Japanese 331.'),
	(180, 'JPNS', 341, 'Introduction to Japanese Literature', 'Reading and discussion of selected works of modern Japanese literature.'),
	(181, 'JPNS', 441, 'Advanced Conversational Japanese', 'Intensive development of aural and oral skills in Japanese through discussion of selected topics using a variety of authentic media. The focus will be on developing conversational abilities and vocabulary.'),
	(182, 'JPNS', 451, 'Japanese Through Texts', 'Language practice and cultural analysis through the study of contemporary Japanese texts. Authentic material will be selected from documents and textbooks. Students will be able to improve their reading skills while enhancing their knowledge of Japanese culture.'),
	(183, 'JPNS', 461, 'Japanese-Chinese Cultural Relations', 'Discussion of cultural relations and influences between Japan and China. Topics may include cultural identities and cross-influences, literary and artistic traditions, and writing systems.');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;


-- Dumping structure for table test.degree
CREATE TABLE IF NOT EXISTS `degree` (
  `Deg_ID` int(10) NOT NULL AUTO_INCREMENT,
  `Type` char(5) COLLATE utf8_bin NOT NULL,
  `Name` char(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`Deg_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table test.degree: ~0 rows (approximately)
/*!40000 ALTER TABLE `degree` DISABLE KEYS */;
/*!40000 ALTER TABLE `degree` ENABLE KEYS */;


-- Dumping structure for table test.department
CREATE TABLE IF NOT EXISTS `department` (
  `Acronym` char(4) COLLATE utf8_bin NOT NULL,
  `Name` char(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`Acronym`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table test.department: ~156 rows (approximately)
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` (`Acronym`, `Name`) VALUES
	('ACWR', 'Academic Writing'),
	('ACCT', 'Accounting'),
	('ACSC', 'Actuarial Science'),
	('AFST', 'African Studies'),
	('ASL', 'American Sign Language'),
	('ANTH', 'Anthropology'),
	('AMAT', 'Applied Mathematics'),
	('ALMC', 'Arabic Language and Muslim Cultures'),
	('ARKY', 'Archaeology'),
	('ARST', 'Architectural Studies'),
	('ART', 'Art'),
	('ARHI', 'Art History'),
	('ARTS', 'Arts'),
	('ASHA', 'Arts and Science Honours Academy A'),
	('ASTR', 'Astronomy A'),
	('ASPH', 'Astrophysics A'),
	('ATTH', 'Athletic Therapy A'),
	('BCEM', 'Biochemistry B'),
	('BIOL', 'Biology B'),
	('BMEN', 'Biomedical Engineering B'),
	('BOTA', 'Botany'),
	('BTMA', 'Business Technology Management'),
	('BSEN', 'Business and Environment B'),
	('CNST', 'Canadian Studies'),
	('CMMB', 'Cellular, Molecular and Microbial Biology C'),
	('CEST', 'Central and East European Studies C'),
	('ENCH', 'Chemical Engineering E'),
	('CHEM', 'Chemistry C'),
	('CHIN', 'Chinese C'),
	('ENCI', 'Civil Engineering E'),
	('COOP', 'Co-operative Education C'),
	('CMCL', 'Communication and Culture'),
	('COMS', 'Communication and Media Studies'),
	('MDCH', 'Community Health Sciences'),
	('CORE', 'Community Rehabilitation C'),
	('COLT', 'Comparative Literature C'),
	('CMDA', 'Computational Media Design'),
	('ENCM', 'Computer Engineering E'),
	('CPSC', 'Computer Science'),
	('DNCE', 'Dance D'),
	('DCED', 'Dance Education D'),
	('DEST', 'Development Studies D'),
	('DRAM', 'Drama DR'),
	('EASC', 'Earth Science E'),
	('EALS', 'East Asian Language Studies E'),
	('EAST', 'East Asian Studies E'),
	('ECOL', 'Ecology E'),
	('ECON', 'Economics E'),
	('EDUC', 'Education'),
	('EDPS', 'Educational Psychology'),
	('EDER', 'Educational Research E'),
	('ENEL', 'Electrical Engineering E'),
	('ENER', 'Energy Engineering'),
	('ENMG', 'Energy Management E'),
	('ENEE', 'Energy and Environment, Engineering E'),
	('EESS', 'Energy and Environmental Systems E'),
	('ENGG', 'Engineering E'),
	('ENGL', 'English E'),
	('ENTI', 'Entrepreneurship and Innovation E'),
	('EVDA', 'Environmental Design Architecture E'),
	('EVDS', 'Environmental Design E'),
	('EVDL', 'Environmental Design Landscape'),
	('EVDP', 'Environmental Design Planning'),
	('ENEN', 'Environmental Engineering E'),
	('ENSC', 'Environmental Science E'),
	('FILM', 'Film F'),
	('FNCE', 'Finance F'),
	('FINA', 'Fine Arts F'),
	('FREN', 'French F'),
	('GEOG', 'Geography G'),
	('GLGY', 'Geology'),
	('ENGO', 'Geomatics Engineering'),
	('GOPH', 'Geophysics'),
	('GERM', 'German'),
	('GREK', 'Greek'),
	('GRST', 'Greek and Roman Studies'),
	('HSOC', 'Health and Society'),
	('HTST', 'History'),
	('HUMN', 'Humanities'),
	('INDL', 'Indigenous Languages'),
	('INDG', 'Indigenous Studies'),
	('INNO', 'Innovation'),
	('IFPE', 'International Foundations Program Engineering'),
	('IFPX', 'International Foundations Program I'),
	('INTR', 'International Relations'),
	('INTE', 'Internship'),
	('IPHE', 'Interprofessional Health Education'),
	('ISST', 'Israel Studies'),
	('ITAL', 'Italian'),
	('JPNS', 'Japanese'),
	('KNES', 'Kinesiology'),
	('LANG', 'Language'),
	('LATI', 'Latin'),
	('LAST', 'Latin American Studies'),
	('LAW', 'Law'),
	('LWSO', 'Law and Society'),
	('LING', 'Linguistics'),
	('MGST', 'Management Studies'),
	('ENMF', 'Manufacturing Engineering'),
	('MRSC', 'Marine Science'),
	('MKTG', 'Marketing'),
	('MATH', 'Mathematics'),
	('ENME', 'Mechanical Engineering'),
	('MDGE', 'Medical Graduate Education'),
	('MDPH', 'Medical Physics'),
	('MDSC', 'Medical Science'),
	('MDCN', 'Medicine'),
	('MHST', 'Museum and Heritage Studies'),
	('MUSI', 'Music'),
	('MUED', 'Music Education'),
	('MUPF', 'Music Performance'),
	('NANS', 'Nanoscience'),
	('NEUR', 'Neuroscience'),
	('NURS', 'Nursing'),
	('OPMA', 'Operations Management'),
	('OBHR', 'Organizational Behaviour and Human Resources'),
	('ENPE', 'Petroleum Engineering'),
	('PLMA', 'Petroleum Land Management'),
	('PHIL', 'Philosophy'),
	('PHED', 'Physical Education'),
	('PHYS', 'Physics'),
	('PLBI', 'Plant Biology'),
	('POLI', 'Political Science'),
	('PSYC', 'Psychology'),
	('PPOL', 'Public Policy'),
	('PMAT', 'Pure Mathematics'),
	('REAL', 'Real Estate Studies'),
	('RELS', 'Religious Studies'),
	('RMIN', 'Risk Management and Insurance'),
	('ROST', 'Romance Studies'),
	('RUSS', 'Russian'),
	('SCPA', 'School of Creative and Performing Arts'),
	('SCIE', 'Science'),
	('STAS', 'Science, Technology and Society'),
	('SLAV', 'Slavic'),
	('SOWK', 'Social Work'),
	('SOCI', 'Sociology'),
	('SENG', 'Software Engineering'),
	('ENSF', 'Software Engineering for Engineers'),
	('SAST', 'South Asian Studies'),
	('SPPH', 'Space Physics'),
	('SPAN', 'Spanish'),
	('STAT', 'Statistics'),
	('STST', 'Strategic Studies'),
	('SGMA', 'Strategy and Global Management'),
	('SCMA', 'Supply Chain Management'),
	('SEDV', 'Sustainable Energy Development'),
	('TAP', 'Term Abroad Program'),
	('TOUR', 'Tourism Management'),
	('TRAN', 'Transportation Studies'),
	('UNIV', 'University'),
	('UNEX', 'University Exchange U'),
	('UBST', 'Urban Studies'),
	('VETM', 'Veterinary Medicine'),
	('WMST', 'Women\'s Studies'),
	('ZOOL', 'Zoology');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;


-- Dumping structure for table test.enroll_course
CREATE TABLE IF NOT EXISTS `enroll_course` (
  `UCID` int(8) DEFAULT NULL,
  `Cid` int(10) DEFAULT NULL,
  `Grade` char(2) COLLATE utf8_bin DEFAULT NULL,
  KEY `FK_enroll_course_student` (`UCID`),
  KEY `FK_enroll_course_course` (`Cid`),
  CONSTRAINT `FK_enroll_course_course` FOREIGN KEY (`Cid`) REFERENCES `course` (`Cid`),
  CONSTRAINT `FK_enroll_course_student` FOREIGN KEY (`UCID`) REFERENCES `student` (`UCID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table test.enroll_course: ~0 rows (approximately)
/*!40000 ALTER TABLE `enroll_course` DISABLE KEYS */;
/*!40000 ALTER TABLE `enroll_course` ENABLE KEYS */;


-- Dumping structure for table test.enroll_deg
CREATE TABLE IF NOT EXISTS `enroll_deg` (
  `UCID` int(8) DEFAULT NULL,
  `Deg_ID` int(8) DEFAULT NULL,
  KEY `FK_enroll_deg_student` (`UCID`),
  KEY `FK_enroll_deg_degree` (`Deg_ID`),
  CONSTRAINT `FK_enroll_deg_degree` FOREIGN KEY (`Deg_ID`) REFERENCES `degree` (`Deg_ID`),
  CONSTRAINT `FK_enroll_deg_student` FOREIGN KEY (`UCID`) REFERENCES `student` (`UCID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table test.enroll_deg: ~0 rows (approximately)
/*!40000 ALTER TABLE `enroll_deg` DISABLE KEYS */;
/*!40000 ALTER TABLE `enroll_deg` ENABLE KEYS */;


-- Dumping structure for table test.instructor
CREATE TABLE IF NOT EXISTS `instructor` (
  `Eid` int(8) NOT NULL,
  `Fname` varchar(500) COLLATE utf8_bin NOT NULL,
  `Lname` varchar(500) COLLATE utf8_bin NOT NULL,
  `Mname` char(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`Eid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table test.instructor: ~26 rows (approximately)
/*!40000 ALTER TABLE `instructor` DISABLE KEYS */;
INSERT INTO `instructor` (`Eid`, `Fname`, `Lname`, `Mname`) VALUES
	(13786805, 'Philipp', 'Woelfel', ''),
	(17040261, 'Kashfia', 'Sailunaz', ''),
	(22360678, 'Abolfazl', 'Samani', ''),
	(23790894, 'Mahshid', 'Marbouti', ''),
	(27320955, 'Majid', 'Dehkordi', 'Ghaderi'),
	(27507628, 'Lee', 'Ringham', 'Aaron'),
	(30087272, 'Emmanuel', 'Onu', 'Ikenna'),
	(33151223, 'Mehrdad', 'Giv', 'Jafari'),
	(47852584, 'Ali', 'Sehati', ''),
	(51379864, 'Fatema', 'Zohra', 'Tuz'),
	(53571491, 'James', 'Tam', 'Roger'),
	(55028424, 'Asma', 'Khalid', ''),
	(60039975, 'Kamyar', 'Allahverdi Pour', 'Haji'),
	(60300262, 'Pavol', 'Federl', ''),
	(61480420, 'Aryaz', 'Eghbali', ''),
	(61995382, 'Kathleen', 'Ang', 'Danielle'),
	(68483983, 'Cyriac', 'James', ''),
	(79204929, 'Ruiting', 'Zhou', ''),
	(80362891, 'Reyhaneh', 'Safavi-Naeini', 'Alsadat'),
	(81906451, 'Jeremy', 'Hart', 'Adam'),
	(83544179, 'Serhan', 'Polat', ''),
	(89402101, 'Sonny', 'Chan', ''),
	(90491341, 'Nwanneka', 'Onyejekwe', 'Okeoghene'),
	(95509472, 'Tam', 'Thanh', ''),
	(95546009, 'Masoumeh', 'Shafieinejad', ''),
	(98485364, 'Fahim', 'Khan', 'Hasan');
/*!40000 ALTER TABLE `instructor` ENABLE KEYS */;


-- Dumping structure for table test.lab
CREATE TABLE IF NOT EXISTS `lab` (
  `Sid` int(10) DEFAULT NULL,
  `Eid` int(8) DEFAULT NULL,
  KEY `FK_lab_section` (`Sid`),
  KEY `FK_lab_instructor` (`Eid`),
  CONSTRAINT `FK_lab_instructor` FOREIGN KEY (`Eid`) REFERENCES `instructor` (`Eid`),
  CONSTRAINT `FK_lab_section` FOREIGN KEY (`Sid`) REFERENCES `section` (`Sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table test.lab: ~0 rows (approximately)
/*!40000 ALTER TABLE `lab` DISABLE KEYS */;
/*!40000 ALTER TABLE `lab` ENABLE KEYS */;


-- Dumping structure for table test.lecture
CREATE TABLE IF NOT EXISTS `lecture` (
  `Sid` int(10) DEFAULT NULL,
  `Eid` int(8) DEFAULT NULL,
  KEY `FK_lecture_section` (`Sid`),
  KEY `FK_lecture_instructor` (`Eid`),
  CONSTRAINT `FK_lecture_instructor` FOREIGN KEY (`Eid`) REFERENCES `instructor` (`Eid`),
  CONSTRAINT `FK_lecture_section` FOREIGN KEY (`Sid`) REFERENCES `section` (`Sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table test.lecture: ~8 rows (approximately)
/*!40000 ALTER TABLE `lecture` DISABLE KEYS */;
INSERT INTO `lecture` (`Sid`, `Eid`) VALUES
	(1, 53571491),
	(8, 60300262),
	(9, 53571491),
	(10, 60300262),
	(23, 13786805),
	(28, 89402101),
	(34, 27320955),
	(41, 80362891);
/*!40000 ALTER TABLE `lecture` ENABLE KEYS */;


-- Dumping structure for table test.major
CREATE TABLE IF NOT EXISTS `major` (
  `Deg_ID` int(10) DEFAULT NULL,
  `Cid` int(10) DEFAULT NULL,
  KEY `FK_major_degree` (`Deg_ID`),
  CONSTRAINT `FK_major_degree` FOREIGN KEY (`Deg_ID`) REFERENCES `degree` (`Deg_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table test.major: ~0 rows (approximately)
/*!40000 ALTER TABLE `major` DISABLE KEYS */;
/*!40000 ALTER TABLE `major` ENABLE KEYS */;


-- Dumping structure for table test.minor
CREATE TABLE IF NOT EXISTS `minor` (
  `Deg_ID` int(10) DEFAULT NULL,
  `Cid` int(10) DEFAULT NULL,
  KEY `FK_minor_degree` (`Deg_ID`),
  CONSTRAINT `FK_minor_degree` FOREIGN KEY (`Deg_ID`) REFERENCES `degree` (`Deg_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table test.minor: ~0 rows (approximately)
/*!40000 ALTER TABLE `minor` DISABLE KEYS */;
/*!40000 ALTER TABLE `minor` ENABLE KEYS */;


-- Dumping structure for table test.registrar
CREATE TABLE IF NOT EXISTS `registrar` (
  `UID` int(10) NOT NULL AUTO_INCREMENT,
  `Last_Login` datetime NOT NULL,
  KEY `FK_registrar_user` (`UID`),
  CONSTRAINT `FK_registrar_user` FOREIGN KEY (`UID`) REFERENCES `user` (`UID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table test.registrar: ~0 rows (approximately)
/*!40000 ALTER TABLE `registrar` DISABLE KEYS */;
INSERT INTO `registrar` (`UID`, `Last_Login`) VALUES
	(1, '2017-03-25 15:22:27');
/*!40000 ALTER TABLE `registrar` ENABLE KEYS */;


-- Dumping structure for table test.restriction
CREATE TABLE IF NOT EXISTS `restriction` (
  `Cid` int(10) DEFAULT NULL,
  `Type` char(8) COLLATE utf8_bin DEFAULT NULL,
  `Cid_Restrict` int(10) DEFAULT NULL,
  KEY `FK_restriction_course` (`Cid`),
  KEY `FK_restriction_course_2` (`Cid_Restrict`),
  CONSTRAINT `FK_restriction_course` FOREIGN KEY (`Cid`) REFERENCES `course` (`Cid`),
  CONSTRAINT `FK_restriction_course_2` FOREIGN KEY (`Cid_Restrict`) REFERENCES `course` (`Cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table test.restriction: ~0 rows (approximately)
/*!40000 ALTER TABLE `restriction` DISABLE KEYS */;
/*!40000 ALTER TABLE `restriction` ENABLE KEYS */;


-- Dumping structure for table test.section
CREATE TABLE IF NOT EXISTS `section` (
  `Sid` int(10) NOT NULL AUTO_INCREMENT,
  `Cid` int(10) NOT NULL,
  `Room` char(10) COLLATE utf8_bin NOT NULL,
  `Day` char(11) COLLATE utf8_bin NOT NULL,
  `Time` char(40) COLLATE utf8_bin NOT NULL,
  `Semester` char(10) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`Sid`),
  KEY `FK_section_course` (`Cid`),
  CONSTRAINT `FK_section_course` FOREIGN KEY (`Cid`) REFERENCES `course` (`Cid`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table test.section: ~43 rows (approximately)
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
INSERT INTO `section` (`Sid`, `Cid`, `Room`, `Day`, `Time`, `Semester`) VALUES
	(1, 4, 'EEEL 161', 'TuTh', '12:30PM-1:45PM', 'Fall2016'),
	(2, 4, 'MS 237', 'MoWe', '10:00AM-10:50AM', 'Fall2016'),
	(3, 4, 'MS 237', 'MoWe', '11:00AM-11:50AM', 'Fall2016'),
	(4, 4, 'MS 237', 'MoWe', '12:00PM-12:50PM', 'Fall2016'),
	(5, 4, 'MS 237', 'MoWe', '1:00PM-1:50PM', 'Fall2016'),
	(6, 4, 'MS 237', 'TuTh', '11:00AM-11:50AM', 'Fall2016'),
	(7, 4, 'MS 237', 'TuTh', '2:00PM-2:50PM', 'Fall2016'),
	(8, 7, 'SA 104', 'TuTh', '9:30AM-10:45AM', 'Fall2016'),
	(9, 7, 'SA 104', 'TuTh', '3:30PM-4:45PM', 'Fall2016'),
	(10, 7, 'SA 104', 'TuTh', '2:00PM-3:15PM', 'Fall2016'),
	(11, 7, 'MS 160', 'MoWe', '10:00AM-10:50AM', 'Fall2016'),
	(12, 7, 'MS 160', 'MoWe', '5:00PM-5:50PM', 'Fall2016'),
	(13, 7, 'MS 160', 'TuTh', '12:00PM-12:50PM', 'Fall2016'),
	(14, 7, 'MS 176', 'TuTh', '4:00PM-4:50PM', 'Fall2016'),
	(15, 7, 'MS 160', 'TuTh', '2:00PM-2:50PM', 'Fall2016'),
	(16, 7, 'MS 160', 'MoWe', '12:00PM-12:50PM', 'Fall2016'),
	(17, 7, 'MS 176', 'MoWe', '4:00PM-4:50PM', 'Fall2016'),
	(18, 7, 'MS 160', 'TuTh', '11:00AM-11:50AM', 'Fall2016'),
	(19, 7, 'MS 176', 'MoWe', '9:00AM-9:50AM', 'Fall2016'),
	(20, 7, 'MS 176', 'MoWe', '1:00PM-1:50PM', 'Fall2016'),
	(21, 7, 'MS 176', 'TuTh', '10:00AM-10:50AM', 'Fall2016'),
	(22, 7, 'MS 160', 'MoWe', '4:00PM-4:50PM', 'Fall2016'),
	(23, 20, 'SA 106', 'TuTh', '9:30AM-10:45AM', 'Fall2016'),
	(24, 20, 'ST 055', 'MoWe', '3:00PM-3:50PM', 'Fall2016'),
	(25, 20, 'ST 055', 'MoWe', '11:00AM-11:50AM', 'Fall2016'),
	(26, 20, 'ST 055', 'TuTh', '2:00PM-2:50PM', 'Fall2016'),
	(27, 20, 'ST 055', 'MoWe', '5:00PM-5:50PM', 'Fall2016'),
	(28, 25, 'ICT 114', 'MoWeFr', '11:00AM-11:50AM', 'Fall2016'),
	(29, 25, 'MS 239', 'MoWe', '12:00PM-12:50PM', 'Fall2016'),
	(30, 25, 'MS 239', 'TuTh', '11:00AM-11:50AM', 'Fall2016'),
	(31, 25, 'MS 239', 'MoWe', '2:00PM-2:50PM', 'Fall2016'),
	(32, 25, 'MS 239', 'MoWe', '1:00PM-1:50PM', 'Fall2016'),
	(33, 25, 'MS 239', 'TuTh', '2:00PM-2:50PM', 'Fall2016'),
	(34, 23, 'EEEL 161', 'MoWeFr', '10:00AM-10:50AM', 'Fall2016'),
	(35, 23, 'MS 156', 'TuTh', '2:00PM-2:50PM', 'Fall2016'),
	(36, 23, 'MS 156', 'TuTh', '11:00AM-11:50AM', 'Fall2016'),
	(37, 23, 'MS 156', 'MoWe', '9:00AM-9:50AM', 'Fall2016'),
	(38, 23, 'MS 156', 'TuTh', '3:00PM-3:50PM', 'Fall2016'),
	(39, 23, 'MS 119', 'MoWe', '11:00AM-11:50AM', 'Fall2016'),
	(40, 23, 'MS 156', 'MoWe', '5:00PM-5:50PM', 'Fall2016'),
	(41, 46, 'MS 527', 'TuTh', '3:30PM-4:45PM', 'Fall2016'),
	(42, 46, 'MS 527', 'TuTh', '5:00PM-5:50PM', 'Fall2016'),
	(43, 46, 'ST 063', 'TuTh', '11:00AM-11:50AM', 'Fall2016');
/*!40000 ALTER TABLE `section` ENABLE KEYS */;


-- Dumping structure for table test.student
CREATE TABLE IF NOT EXISTS `student` (
  `UCID` int(8) NOT NULL AUTO_INCREMENT,
  `UID` int(10) NOT NULL,
  `Fname` varchar(500) COLLATE utf8_bin NOT NULL,
  `Lname` varchar(500) COLLATE utf8_bin NOT NULL,
  `Mname` char(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`UCID`),
  KEY `FK_student_user` (`UID`),
  CONSTRAINT `FK_student_user` FOREIGN KEY (`UID`) REFERENCES `user` (`UID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table test.student: ~0 rows (approximately)
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
/*!40000 ALTER TABLE `student` ENABLE KEYS */;


-- Dumping structure for table test.tutorial
CREATE TABLE IF NOT EXISTS `tutorial` (
  `Sid` int(10) DEFAULT NULL,
  `Eid` int(8) DEFAULT NULL,
  KEY `FK_tutorial_section` (`Sid`),
  KEY `FK_tutorial_instructor` (`Eid`),
  CONSTRAINT `FK_tutorial_instructor` FOREIGN KEY (`Eid`) REFERENCES `instructor` (`Eid`),
  CONSTRAINT `FK_tutorial_section` FOREIGN KEY (`Sid`) REFERENCES `section` (`Sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table test.tutorial: ~35 rows (approximately)
/*!40000 ALTER TABLE `tutorial` DISABLE KEYS */;
INSERT INTO `tutorial` (`Sid`, `Eid`) VALUES
	(2, 83544179),
	(3, 83544179),
	(4, 90491341),
	(5, 90491341),
	(6, 95509472),
	(7, 95509472),
	(11, 55028424),
	(12, 51379864),
	(13, 61995382),
	(14, 98485364),
	(15, 98485364),
	(16, 55028424),
	(17, 23790894),
	(18, 61995382),
	(19, 17040261),
	(20, 17040261),
	(21, 30087272),
	(22, 51379864),
	(24, 61480420),
	(25, 33151223),
	(26, 79204929),
	(27, 33151223),
	(29, 27507628),
	(30, 81906451),
	(31, 60039975),
	(32, 27507628),
	(33, 81906451),
	(35, 68483983),
	(36, 68483983),
	(37, 22360678),
	(38, 47852584),
	(39, 22360678),
	(40, 47852584),
	(42, 95546009),
	(43, 95546009);
/*!40000 ALTER TABLE `tutorial` ENABLE KEYS */;


-- Dumping structure for table test.user
CREATE TABLE IF NOT EXISTS `user` (
  `UID` int(10) NOT NULL AUTO_INCREMENT,
  `Username` char(255) COLLATE utf8_bin NOT NULL,
  `Password` char(128) COLLATE utf8_bin NOT NULL COMMENT 'Length: http://stackoverflow.com/questions/247304/what-data-type-to-use-for-hashed-password-field-and-what-length',
  PRIMARY KEY (`UID`),
  UNIQUE KEY `Username` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table test.user: ~1 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`UID`, `Username`, `Password`) VALUES
	(1, 'root', 'root');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
