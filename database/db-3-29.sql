-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 30, 2017 at 12:14 AM
-- Server version: 5.6.35
-- PHP Version: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `Cid` int(10) NOT NULL,
  `Acronym` char(4) COLLATE utf8_bin DEFAULT NULL,
  `Number` int(5) DEFAULT NULL,
  `Name` char(255) COLLATE utf8_bin DEFAULT NULL,
  `Description` varchar(2000) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`Cid`, `Acronym`, `Number`, `Name`, `Description`) VALUES
(1, 'CPSC', 101, 'Introduction to Unix', 'An introduction to the Unix operating system, including the text editor \"emacs,\" its programming modes and macros; shell usage (including \"sh\" and \"tcsh\"); and some advanced Unix commands.'),
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
(52, 'CPSC', 565, 'Emergent Computing', 'An insight into a new mindset for programming as an emergent and evolutionary process of \"breeding,\" rather than constructing. Programs can evolve to perform specific tasks in a bottom-up fashion rather than being manually coded. Topics will include: decentralized agent-based programming, massive parallelism and interaction, evolution, swarm intelligence.'),
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
(163, 'PHYS', 673, 'Quantum and Non-linear Optics', 'Theory of dispersion. Fast and slow light. Basics of nonlinear optics. Nonlinear optical crystals, phase matching. Coherence theory. Preparation, manipulation and measurement of quantum optical states and single-photon qubits. Elements of atomic physics, optical Bloch equation, rotating-wave approximation. Two-and three-level systems. Cavity quantum electrodynamics.');
INSERT INTO `course` (`Cid`, `Acronym`, `Number`, `Name`, `Description`) VALUES
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
(183, 'JPNS', 461, 'Japanese-Chinese Cultural Relations', 'Discussion of cultural relations and influences between Japan and China. Topics may include cultural identities and cross-influences, literary and artistic traditions, and writing systems.'),
(184, 'CPSC', 50201, 'Research Project in Computer Science', 'Research Project in Computer Science'),
(185, 'CPSC', 50202, 'Research Project in Theoretical Computer Science', 'Research Project in Theoretical Computer Science'),
(186, 'CPSC', 50203, 'Research Project in Computer Graphics', 'Research Project in Computer Graphics'),
(187, 'CPSC', 50204, 'Research Project in Information Security', 'Research Project in Information Security'),
(188, 'CPSC', 50205, 'Research Project in Scientific Computation', 'Research Project in Scientific Computation'),
(189, 'CPSC', 50206, 'Research Project in Software Engineering', 'Research Project in Software Engineering'),
(190, 'CPSC', 50207, 'Research Project in Human Computer Interaction', 'Research Project in Human Computer Interaction'),
(191, 'CPSC', 50301, 'Project in Computer Science', 'Project in Computer Science'),
(192, 'CPSC', 50302, 'Project in Theoretical Computer Science', 'Project in Theoretical Computer Science'),
(193, 'CPSC', 50303, 'Project in Computer Graphics', 'Project in Computer Graphics'),
(194, 'CPSC', 50304, 'Project in Information Security', 'Project in Information Security'),
(195, 'CPSC', 50305, 'Project in Scientific Computation', 'Project in Scientific Computation'),
(196, 'CPSC', 50306, 'Project in Software Engineering', 'Project in Software Engineering'),
(197, 'CPSC', 50307, 'Project in Human Computer Interaction', 'Project in Human Computer Interaction'),
(198, 'SENG', 301, 'Software Analysis and Design', 'Introduction to developing large-scale, quality software, from analysis of requirements, through design, implementation, and testing. Introduction to design for non-functional properties of software. Emphasis on individual skills.'),
(199, 'SENG', 521, 'Software Reliability and Software Quality', 'The principles, processes, and applications of software reliability and software quality assurance.'),
(200, 'STAT', 213, 'Introduction to Statistics I', 'Collection and presentation of data, introduction to probability, including Bayes\' law, expectations and distributions. Properties of the normal curve. Introduction to estimation and hypothesis testing.'),
(201, 'STAT', 321, 'Introduction to Probability', 'A calculus-based introduction to probability theory and applications. Elements of probabilistic modelling, Basic probability computation techniques, Discrete and continuous random variables and distributions, Functions of random variables, Expectation and variance, Multivariate random variables, Conditional distributions, Covariance, Conditional expectation, Central Limit Theorem, Applications to real-world modelling.'),
(202, 'PMAT', 418, 'Introduction to Cryptography', 'The basics of cryptography, with emphasis on attaining well-defined and practical notions of security. Symmetric and public-key cryptosystems; one-way and trapdoor functions; mechanisms for data integrity; digital signatures; key management; applications to the design of cryptographic systems. Assessment will primarily focus on mathematical theory and proof-oriented homework problems; additional application programming exercises will be available for extra credit.'),
(203, 'MATH', 249, 'Introductory Calculus', 'Algebraic operations. Functions and graphs. Limits, derivatives, and integrals of exponential, logarithmic and trigonometric functions. Fundamental theorem of calculus. Improper integrals. Applications.'),
(204, 'MATH', 265, 'University Calculus I', 'Limits, derivatives, and integrals; the calculus of exponential, logarithmic, trigonometric and inverse trigonometric functions. Applications including curve sketching, optimization, exponential growth and decay, Taylor polynomials. Fundamental theorem of calculus. Improper integrals. Introduction to partial differentiation.'),
(205, 'MATH', 275, 'Calculus for Engineers and Scientists', 'Calculus of functions of one real variable; derivative and Riemann integral; Mean Value Theorem; the Fundamental Theorem of Calculus; techniques of integration; Applications; Improper integrals; Power series, Taylor series.'),
(206, 'MATH', 211, 'Linear Methods I', 'Systems of equations and matrices, vectors, matrix representations and determinants. Complex numbers, polar form, eigenvalues, eigenvectors. Applications.'),
(207, 'MATH', 213, 'Honours Linear Algebra I', 'Systems of equations and matrices, vector spaces, subspaces, bases and dimension, linear transformations, determinants, eigenvalues and eigenvectors.'),
(208, 'MATH', 271, 'Discrete Mathematics', 'Proof techniques. Sets and relations. Induction. Counting and probability. Graphs and trees.'),
(209, 'MATH', 273, 'Honours Mathematics: Numbers and Proofs', 'Introduction to proofs. Functions, sets and relations. The integers: Euclidean division algorithm and prime factorization; induction and recursion; integers mod n. Real numbers: sequences of real numbers; completeness of the real numbers; open and closed sets. Complex numbers.'),
(210, 'PHIL', 279, 'Logic I', 'Sentential and first-order logic from both deductive and semantic points of view. Some elementary metatheorems.'),
(211, 'PHIL', 377, 'Elementary Formal Logic', 'Sentential and first-order logic, with identity and descriptions, from both deductive and semantic points of view. Completeness, compactness, decidability for sentential logic.'),
(212, 'PHIL', 249, 'Morality, Virtue and Society', 'Provides an introduction to philosophy through the discussion of morality, virtue and the role of morality in society.'),
(213, 'PHIL', 314, 'Information Technology Ethics', 'A critical and analytical examination of ethical and legal problems arising in and about information technology. Issues to be considered might include hacking, online privacy, intellectual property rights, artificial intelligence, globalization and regulation issues, cheating in online games, and others.'),
(214, 'PHIL', 329, 'Business Ethics', 'A critical and analytical examination of some central moral problems that arise in and for business. Emphasis throughout the course will be placed not only on the details of the particular problems studied but also on the conceptual and other tools needed to understand and resolve or solve such problems. Topics to be discussed will include the moral responsibilities and rights of corporations and their officers, codes of business ethics, and conflicts of responsibilities and rights.');

-- --------------------------------------------------------

--
-- Table structure for table `degree`
--

CREATE TABLE `degree` (
  `Deg_ID` int(10) NOT NULL,
  `Type` char(5) COLLATE utf8_bin NOT NULL,
  `Name` char(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `degree`
--

INSERT INTO `degree` (`Deg_ID`, `Type`, `Name`) VALUES
(1, 'Major', 'BSC in Computer Science, Concentration in Information Security');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `Acronym` char(4) COLLATE utf8_bin NOT NULL,
  `Name` char(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `department`
--

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

-- --------------------------------------------------------

--
-- Table structure for table `enroll_course`
--

CREATE TABLE `enroll_course` (
  `UCID` int(8) DEFAULT NULL,
  `Cid` int(10) DEFAULT NULL,
  `Grade` char(2) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `enroll_deg`
--

CREATE TABLE `enroll_deg` (
  `UCID` int(8) DEFAULT NULL,
  `Deg_ID` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `enroll_deg`
--

INSERT INTO `enroll_deg` (`UCID`, `Deg_ID`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `Eid` int(8) NOT NULL,
  `Fname` varchar(500) COLLATE utf8_bin NOT NULL,
  `Lname` varchar(500) COLLATE utf8_bin NOT NULL,
  `Mname` char(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`Eid`, `Fname`, `Lname`, `Mname`) VALUES
(1, 'TBA', 'TBA', '-'),
(10216679, 'May', 'Mahmoud', 'A.Sayed'),
(10241884, 'Alper', 'Aksac', ''),
(11681094, 'Matthew', 'Adams', ''),
(12431243, 'Wei', 'Hong', ''),
(12433959, 'Nancy', 'Ceron', 'Hernandez'),
(12640608, 'Khosro', 'Salmani', ''),
(12853591, 'Robert', 'Walker', 'James'),
(13786805, 'Philipp', 'Woelfel', ''),
(13874278, 'Fahmida', 'Yeasmin', ''),
(14027446, 'Jalal', 'Kawash', 'Yusef'),
(14927675, 'Jian', 'Yang', ''),
(15639005, 'John', 'Baker', 'Arthur'),
(16140520, 'Sahil', 'Sharma', ''),
(16206198, 'Wenyan', 'Zhong', ''),
(17001491, 'Zahra', 'Abad', 'ShakeriHossein'),
(17040261, 'Kashfia', 'Sailunaz', ''),
(17134373, 'Justin', 'Caouette', ''),
(17167245, 'Iaryna', 'Grushevska', ''),
(17569179, 'Nancy', 'Chibry', 'Roberta'),
(17591623, 'Keivan', 'Monfared', 'Hassani'),
(18797188, 'Mohsen', 'Ansari', ''),
(19868585, 'Evan', 'MacNeil', 'Michael'),
(20204801, 'Peter', 'Le-hoang', ''),
(22360678, 'Abolfazl', 'Samani', ''),
(22886548, 'Shiying', 'Kong', ''),
(23175828, 'Prashant', 'Kumar', ''),
(23240111, 'Kyle', 'Ostrander', 'Mitchell'),
(23790894, 'Mahshid', 'Marbouti', ''),
(25598587, 'Ali', 'Kazmi', 'Akhtar'),
(26710958, 'Tayler', 'Scory', 'Dawn'),
(26843432, 'Hyunjae', 'Moon', ''),
(27320955, 'Majid', 'Dehkordi', 'Ghaderi'),
(27423920, 'Xuewen', 'Lu', ''),
(27445073, 'Qing', 'Chen', ''),
(27463682, 'Bin', 'Xu', ''),
(27507628, 'Lee', 'Ringham', 'Aaron'),
(28091334, 'Rong', 'Jiang', ''),
(28732945, 'Yue', 'Xu', ''),
(29263193, 'Lakshya', 'Tandon', ''),
(30023855, 'Jeremy', 'Gillespie', 'James'),
(30087272, 'Emmanuel', 'Onu', 'Ikenna'),
(30766411, 'Andrew', 'Schoepfer', 'Paul'),
(32200092, 'Jonathan', 'Gallagher', 'Dean'),
(32299756, 'Rachel', 'Hardeman', 'Lisbeth'),
(33117454, 'Robert', 'Armstrong', 'James'),
(33151223, 'Mehrdad', 'Giv', 'Jafari'),
(33992317, 'Jingjing', 'Wu', ''),
(34107128, 'Vida', 'Jakovljevic', ''),
(35073074, 'Ryan', 'Hamilton', 'John'),
(35858287, 'Michael', 'Oliwa', ''),
(36974991, 'Mea', 'Wang', ''),
(37092790, 'Thi', 'Dinh', 'Ngoc'),
(37525065, 'Vanessa', 'Pizante', 'Ann'),
(38302594, 'Ethan', 'White', 'Patrick'),
(38638877, 'Yunting', 'Fu', ''),
(40120292, 'Gabriela', 'Jurca', 'Alexandra'),
(40347153, 'Bokai', 'Yao', ''),
(40681195, 'Aniruddha', 'Chattoraj', ''),
(40809118, 'Reginald', 'Lybbert', 'David'),
(42922726, 'Karen', 'Seyffarth', ''),
(43362894, 'David', 'Wiredu', ''),
(43474656, 'Md.', 'Rabbani', 'Reza'),
(43741204, 'Marina', 'Chugunova', 'Alexandrovna'),
(45274867, 'Mark', 'Bauer', 'L'),
(46687675, 'Leonard', 'Manzara', 'C'),
(47211009, 'Charmaine', 'Navis', ''),
(47627785, 'Kam-Fai', 'Tam', ''),
(47852584, 'Ali', 'Sehati', ''),
(48266764, 'Ayman-Mohammad', 'Horoub', 'Abedalqader'),
(48708823, 'Ahmed', 'Marouf', 'Al'),
(49045215, 'Yuyu', 'Chen', ''),
(50261745, 'Behrouz', 'Far', 'H'),
(50269272, 'Ilia', 'Ilmer', ''),
(50486268, 'Leanne', 'Haasen', 'Carolyn'),
(50518581, 'Chao', 'Qiu', ''),
(50627132, 'Kaida', 'Cai', ''),
(51379864, 'Fatema', 'Zohra', 'Tuz'),
(51405227, 'Zixiang', 'Guan', ''),
(51629419, 'Eric', 'Provencher', ''),
(53369785, 'Renate', 'Scheidler', ''),
(53571491, 'James', 'Tam', 'Roger'),
(53801519, 'MD', 'Mahsin', ''),
(53806363, 'Samiul', 'Azam', ''),
(54683299, 'Md', 'Rahman', 'Wasiur'),
(55028424, 'Asma', 'Khalid', ''),
(56973396, 'Olasunkanmi', 'Kehinde', 'James'),
(57097659, 'Mohammad', 'Jubair', 'Imrul'),
(57180516, 'Syed', 'Rizvi', 'ZainRaza'),
(57423070, 'Cordell', 'Bloor', 'George'),
(58136810, 'Andrew', 'Fiori', ''),
(59236077, 'Elizabeth', 'Ofori', ''),
(59555101, 'Teppei', 'Hayashi', ''),
(60039975, 'Kamyar', 'Allahverdi', 'Haji'),
(60300262, 'Pavol', 'Federl', ''),
(61480420, 'Aryaz', 'Eghbali', ''),
(61781003, 'Nelson', 'FungWong', 'Yat'),
(61995382, 'Kathleen', 'Ang', 'Danielle'),
(62184445, 'Sebastian', 'Lindner', 'Anton'),
(63633542, 'Muhammad', 'Israr-Ul-Haq', ''),
(63736871, 'Derek', 'Beatch', 'Lou'),
(64022067, 'Claudia', 'Mahler', 'Marie'),
(65271425, 'Ebrahim', 'Ghaderpour', ''),
(66511015, 'Alexander', 'DeLeon', 'R.'),
(66799010, 'Joshua', 'Novak', 'Simon'),
(66880610, 'Philip', 'Fong', 'WaiLeung'),
(67031115, 'Aiden', 'Huffman', 'James'),
(67145270, 'Timothy', 'Ohanekwu', 'Emenike'),
(68117988, 'Qihe', 'Liang', ''),
(68483983, 'Cyriac', 'James', ''),
(69093486, 'Edwin', 'Chan', ''),
(69254133, 'Jixian', 'Li', ''),
(71383780, 'Konstantinos', 'Xylogiannopoulos', ''),
(75221011, 'Reid', 'Buchanan', ''),
(75933453, 'Gilad', 'Gour', ''),
(76333323, 'Jean-Simon', 'Lemay', 'Pacaud'),
(76735761, 'Alexander', 'Brudnyi', ''),
(78351808, 'JuanCarlos', 'Carranza', 'Fuentes'),
(78481196, 'Priyaa', 'Srinivasan', 'Varshinee'),
(78620722, 'Kevin', 'Ta', ''),
(79204929, 'Ruiting', 'Zhou', ''),
(79605281, 'TBA', '-', 'TBA'),
(80362891, 'Reyhaneh', 'Safavi-Naeini', 'Alsadat'),
(80614800, 'Levi', 'Mason', 'James'),
(81217347, 'William', 'Nicholson', '(Keith)'),
(81293991, 'Benjamin', 'MacAdam', 'Alban'),
(81309294, 'Chad', 'Nester', 'Mitchell'),
(81500100, 'Fatemeh', 'Shirzad', ''),
(81638463, 'Yi', 'Zhang', ''),
(81906451, 'Jeremy', 'Hart', 'Adam'),
(82080630, 'Jorg', 'Denzinger', ''),
(82404737, 'John', 'MacIntosh', 'James'),
(82566632, 'Gaurav', 'Tripathi', ''),
(82585847, 'Syeda', 'Ali', 'Fareeha'),
(83544179, 'Serhan', 'Polat', ''),
(87413898, 'Salim', 'Afra', 'Ahmad'),
(88691645, 'Venceslava', 'Stastna', ''),
(89402101, 'Sonny', 'Chan', ''),
(90491341, 'Nwanneka', 'Onyejekwe', 'Okeoghene'),
(90840478, 'Mingchen', 'Ren', ''),
(91268619, 'John', 'Aycock', 'Daniel'),
(91336561, 'Scott', 'Robison', 'Andrew'),
(91435580, 'Yoshiki', 'Kobasigawa', ''),
(91736344, 'Mehdi', 'Ahmadi', ''),
(91840199, 'Ishtiyaque', 'Haji', 'Hussein'),
(91877691, 'Nolan', 'Shaw', 'Peter'),
(93005825, 'Michael', 'Cavers', 'S.'),
(94368720, 'James-Robin', 'Cockett', 'Bernard'),
(94737353, 'Xi', 'Liu', ''),
(95241730, 'Maryam', 'Majedi', ''),
(95293477, 'Asif', 'Yousuf', 'Muhammad'),
(95509472, 'Tam', 'Doan', 'Thanh'),
(95546009, 'Masoumeh', 'Shafieinejad', ''),
(95844232, 'Su', 'Leem', 'Min'),
(95978678, 'Yilan', 'Luo', ''),
(96180775, 'Yousry', 'Elsabrouty', ''),
(96213083, 'Abdullah', 'Sarhan', ''),
(96836218, 'Sydney', 'Pratte', 'Anne'),
(97233466, 'Ayse', 'Sezer', 'Deniz'),
(97549138, 'Parthasarathi', 'Das', ''),
(97664099, 'James', 'Stallard', ''),
(98485364, 'Fahim', 'Khan', 'Hasan'),
(98651819, 'Catalin', 'Dohotaru', ''),
(99592036, 'Randy', 'Yee', 'Keit-Meng'),
(99639383, 'Kelsey', 'Wagner', 'Marie'),
(99698405, 'William', 'Johnson', 'Thomas'),
(99980916, 'Hao', 'Men', '');

-- --------------------------------------------------------

--
-- Table structure for table `lab`
--

CREATE TABLE `lab` (
  `Sid` int(10) DEFAULT NULL,
  `Eid` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `lab`
--

INSERT INTO `lab` (`Sid`, `Eid`) VALUES
(118, 1),
(120, 1),
(125, 96836218),
(126, 10216679),
(127, 10216679),
(128, 29263193),
(129, 29263193),
(130, 96836218),
(132, 50261745),
(153, 22886548),
(154, 38638877),
(155, 90840478),
(156, 28732945),
(157, 47211009),
(158, 38638877),
(159, 28732945),
(160, 69254133),
(161, 69254133),
(162, 80614800),
(163, 38638877),
(164, 80614800),
(165, 13874278),
(166, 51405227),
(167, 63736871),
(168, 54683299),
(169, 64022067),
(170, 47211009),
(171, 95978678),
(172, 47211009),
(173, 49045215),
(174, 54683299),
(175, 49045215),
(176, 54683299),
(177, 50627132),
(178, 14927675),
(179, 63736871),
(180, 80614800),
(181, 50627132),
(182, 54683299),
(183, 51405227),
(184, 90840478),
(185, 95978678),
(186, 28732945),
(187, 95978678),
(188, 28732945),
(203, 56973396),
(204, 67031115),
(205, 68117988),
(206, 34107128),
(207, 68117988),
(208, 26843432),
(209, 51629419),
(210, 27463682),
(211, 23240111),
(212, 23240111),
(213, 20204801),
(214, 43362894),
(215, 82585847),
(216, 26843432),
(217, 48266764),
(218, 48266764),
(219, 91877691),
(220, 91736344),
(221, 17167245),
(222, 17167245),
(239, 32299756),
(240, 38302594),
(241, 43741204),
(242, 40809118),
(243, 59236077),
(244, 40809118),
(245, 91877691),
(246, 17569179),
(247, 56973396),
(248, 48266764),
(249, 58136810),
(250, 11681094),
(251, 11681094),
(252, 43741204),
(253, 58136810),
(254, 43741204),
(255, 11681094),
(256, 26843432),
(257, 50269272),
(258, 93005825),
(259, 50269272),
(260, 40809118),
(261, 20204801),
(262, 17167245),
(263, 82585847),
(264, 82585847),
(277, 59236077),
(278, 81638463),
(279, 26843432),
(280, NULL),
(281, 47627785),
(282, NULL),
(283, 59236077),
(284, 26843432),
(285, 47627785),
(286, 65271425),
(287, 59236077),
(288, 81638463),
(298, 67031115),
(299, 99639383),
(300, 19868585),
(301, 81217347),
(302, 17591623),
(303, 76333323),
(304, 19868585),
(305, 37525065),
(306, 51629419),
(307, 68117988),
(308, 63633542),
(309, 76333323),
(310, 32299756),
(311, 37525065),
(312, 67031115),
(313, 37525065),
(314, 50269272),
(315, 50269272),
(316, 50486268),
(317, 81217347),
(318, 32299756),
(319, 32299756),
(320, 68117988),
(321, 81217347),
(322, 81906451),
(323, 66799010),
(324, 66799010),
(325, 99639383),
(340, 95844232),
(343, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lecture`
--

CREATE TABLE `lecture` (
  `Sid` int(10) DEFAULT NULL,
  `Eid` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `lecture`
--

INSERT INTO `lecture` (`Sid`, `Eid`) VALUES
(1, 53571491),
(8, 60300262),
(9, 53571491),
(10, 60300262),
(23, 13786805),
(28, 89402101),
(34, 27320955),
(41, 80362891),
(44, 36974991),
(49, 61781003),
(50, 61781003),
(63, 98651819),
(70, 46687675),
(71, 46687675),
(80, 14027446),
(85, 32200092),
(91, 14027446),
(98, 71383780),
(105, 66880610),
(109, 60300262),
(113, 53369785),
(117, 82080630),
(119, 82080630),
(121, 91268619),
(122, 94368720),
(124, 12853591),
(131, 50261745),
(133, 91336561),
(134, 66511015),
(135, 64022067),
(136, 53571491),
(137, 50518581),
(138, 27423920),
(139, 33992317),
(189, 17569179),
(190, 91336561),
(197, 53369785),
(198, 45274867),
(199, 27463682),
(200, 35073074),
(201, 88691645),
(202, 91736344),
(233, 93005825),
(234, 17569179),
(235, 58136810),
(236, 58136810),
(237, 66511015),
(238, 97233466),
(273, 96180775),
(274, 47627785),
(275, 47627785),
(276, 65271425),
(290, 81217347),
(291, 17591623),
(292, 93005825),
(293, 75933453),
(294, 75933453),
(295, 42922726),
(296, 81217347),
(297, 37092790),
(337, 37092790),
(341, 42922726),
(344, 47852584),
(345, 91268619),
(352, 91268619),
(353, 91840199),
(354, NULL),
(355, NULL),
(365, 75221011),
(370, 91435580);

-- --------------------------------------------------------

--
-- Table structure for table `major`
--

CREATE TABLE `major` (
  `Deg_ID` int(10) DEFAULT NULL,
  `Cid` int(10) DEFAULT NULL,
  `GroupBy` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `major`
--

INSERT INTO `major` (`Deg_ID`, `Cid`, `GroupBy`) VALUES
(1, 7, 1),
(1, 8, 1),
(1, 5, 2),
(1, 6, 2),
(1, 10, 3),
(1, 15, 4),
(1, 20, 5),
(1, 24, 6),
(1, 26, 7),
(1, 16, 8),
(1, 13, 9),
(1, 198, 10),
(1, 12, 11),
(1, 23, 12),
(1, 42, 13),
(1, 43, 14),
(1, 21, 15),
(1, 202, 15),
(1, 187, 16),
(1, 194, 16),
(1, 44, 16),
(1, 45, 16),
(1, 46, 16),
(1, 199, 16),
(1, 200, 17),
(1, 201, 17),
(1, 203, 18),
(1, 204, 18),
(1, 205, 18),
(1, 206, 19),
(1, 207, 19),
(1, 208, 20),
(1, 209, 20),
(1, 210, 21),
(1, 211, 21),
(1, 212, 22),
(1, 213, 22),
(1, 214, 22);

-- --------------------------------------------------------

--
-- Table structure for table `minor`
--

CREATE TABLE `minor` (
  `Deg_ID` int(10) DEFAULT NULL,
  `Cid` int(10) DEFAULT NULL,
  `GroupBy` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `registrar`
--

CREATE TABLE `registrar` (
  `UID` int(10) NOT NULL,
  `Last_Login` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `registrar`
--

INSERT INTO `registrar` (`UID`, `Last_Login`) VALUES
(1, '2017-03-25 15:22:27');

-- --------------------------------------------------------

--
-- Table structure for table `restriction`
--

CREATE TABLE `restriction` (
  `Cid` int(10) DEFAULT NULL,
  `Type` char(8) COLLATE utf8_bin DEFAULT NULL,
  `Cid_Restrict` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `Sid` int(10) NOT NULL,
  `Cid` int(10) NOT NULL,
  `Room` char(10) COLLATE utf8_bin NOT NULL,
  `Day` char(11) COLLATE utf8_bin NOT NULL,
  `Time` char(40) COLLATE utf8_bin NOT NULL,
  `Semester` char(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `section`
--

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
(43, 46, 'ST 063', 'TuTh', '11:00AM-11:50AM', 'Fall2016'),
(44, 8, 'ENG 230', 'MoWeFr', '10:00AM-10:50AM', 'Fall2016'),
(45, 8, 'MS 176', 'MoWe', '3:00PM-3:50PM', 'Fall2016'),
(46, 8, 'MS 160', 'TuTh', '9:00AM-9:50AM', 'Fall2016'),
(47, 8, 'MS 160', 'MoWe', '1:00PM-1:50PM', 'Fall2016'),
(48, 8, 'MS 176', 'TuTh', '6:00PM-6:50PM', 'Fall2016'),
(49, 5, 'EEEL 161', 'MoWeFr', '3:00PM-3:50PM', 'Fall2016'),
(50, 5, 'EEEL 161', 'MoWeFr', '1:00PM-1:50PM', 'Fall2016'),
(51, 5, 'MS 160', 'TuTh', '1:00PM-1:50PM', 'Fall2016'),
(52, 5, 'MS 160', 'MoWe', '2:00PM-2:50PM', 'Fall2016'),
(53, 5, 'MS 176', 'MoWe', '10:00AM-10:50AM', 'Fall2016'),
(54, 5, 'MS 176', 'TuTh', '11:00AM-11:50AM', 'Fall2016'),
(55, 5, 'MS 176', 'MoWe', '2:00PM-2:50PM', 'Fall2016'),
(56, 5, 'MS 160', 'TuTh', '10:00AM-10:50AM', 'Fall2016'),
(57, 5, 'MS 160', 'TuTh', '3:00PM-3:50PM', 'Fall2016'),
(58, 5, 'MS 176', 'MoWe', '11:00AM-11:50AM', 'Fall2016'),
(59, 5, 'MS 160', 'MoWe', '11:00AM-11:50AM', 'Fall2016'),
(60, 5, 'MS 176', 'MoWe', '12:00PM-12:50PM', 'Fall2016'),
(61, 5, 'MS 176', 'TuTh', '9:00AM-9:50AM', 'Fall2016'),
(62, 5, 'MS 160', 'TuTh', '4:00PM-4:50PM', 'Fall2016'),
(63, 10, 'EEEL 161', 'MoWeFr', '11:00AM-11:50AM', 'Fall2016'),
(64, 10, 'SA 125', 'Tu', '10:00AM-10:50AM', 'Fall2016'),
(65, 10, 'SA 125', 'Mo', '5:00PM-5:50PM', 'Fall2016'),
(66, 10, 'SA 125', 'We', '12:00PM-12:50PM', 'Fall2016'),
(67, 10, 'SA 125', 'We', '5:00PM-5:50PM', 'Fall2016'),
(68, 10, 'SA 125', 'Mo', '3:00PM-3:50PM', 'Fall2016'),
(69, 10, 'SA 125', 'We', '3:00PM-3:50PM', 'Fall2016'),
(70, 15, 'SA 106', 'MoWeFr', '2:00PM-2:50PM', 'Fall2016'),
(71, 15, 'AD 140', 'MoWeFr', '10:00AM-10:50AM', 'Fall2016'),
(72, 15, 'MS 156', 'TuTh', '9:00AM-9:50AM', 'Fall2016'),
(73, 15, 'MS 160', 'MoWe', '3:00PM-3:50PM', 'Fall2016'),
(74, 15, 'MS 119', 'MoWe', '4:00PM-4:50PM', 'Fall2016'),
(75, 15, 'MS 176', 'TuTh', '5:00PM-5:50PM', 'Fall2016'),
(76, 15, 'MS 119', 'TuTh', '9:00AM-9:50AM', 'Fall2016'),
(77, 15, 'MS 176', 'MoWe', '5:00PM-5:50PM', 'Fall2016'),
(78, 15, 'MS 119', 'TuTh', '4:00PM-4:50PM', 'Fall2016'),
(79, 15, 'MS 119', 'TuTh', '10:00AM-10:50AM', 'Fall2016'),
(80, 16, 'ES 443', 'MoWe', '3:30PM-4:45PM', 'Fall2016'),
(81, 16, 'MS 236', 'MoWe', '1:00PM-1:50PM', 'Fall2016'),
(82, 16, 'MS 236', 'TuTh', '11:00AM-11:50AM', 'Fall2016'),
(83, 16, 'MS 236', 'TuTh', '12:00PM-12:50PM', 'Fall2016'),
(84, 16, 'MS 236', 'MoWe', '10:00AM-10:50AM', 'Fall2016'),
(85, 24, 'ENE 241', 'MoWeFr', '1:00PM-1:50PM', 'Fall2016'),
(86, 24, 'MS 156', 'MoWe', '11:00AM-11:50AM', 'Fall2016'),
(87, 24, 'MS 156', 'TuTh', '1:00PM-1:50PM', 'Fall2016'),
(88, 24, 'MS 156', 'TuTh', '4:00PM-4:50PM', 'Fall2016'),
(89, 24, 'ICT 517', 'MoWe', '9:00AM-9:50AM', 'Fall2016'),
(90, 24, 'MS 239', 'MoWe', '3:00PM-3:50PM', 'Fall2016'),
(91, 26, 'ES 162', 'MoWe', '2:00PM-3:15PM', 'Fall2016'),
(92, 26, 'MS 160', 'WeFr', '8:00AM-8:50AM', 'Fall2016'),
(93, 26, 'MS 160', 'TuTh', '8:00AM-8:50AM', 'Fall2016'),
(94, 26, 'MS 119', 'TuTh', '5:00PM-5:50PM', 'Fall2016'),
(95, 26, 'MS 119', 'TuTh', '11:00AM-11:50AM', 'Fall2016'),
(96, 26, 'MS 239', 'MoWe', '4:00PM-4:50PM', 'Fall2016'),
(97, 26, 'MS 239', 'TuTh', '4:00PM-4:50PM', 'Fall2016'),
(98, 13, 'EEEL 161', 'TuTh', '9:30AM-10:45AM', 'Fall2016'),
(99, 13, 'MS 160', 'MoWe', '9:00AM-9:50AM', 'Fall2016'),
(100, 13, 'MS 119', 'MoWe', '12:00PM-12:50PM', 'Fall2016'),
(101, 13, 'MS 160', 'TuTh', '5:00PM-5:50PM', 'Fall2016'),
(102, 13, 'MS 119', 'MoWe', '3:00PM-3:50PM', 'Fall2016'),
(103, 13, 'MS 119', 'TuTh', '3:00PM-3:50PM', 'Fall2016'),
(104, 13, 'MS 156', 'MoWe', '12:00PM-12:50PM', 'Fall2016'),
(105, 42, 'ICT 114', 'TuTh', '12:30PM-1:45PM', 'Fall2016'),
(106, 42, 'ICT 517', 'MoWe', '2:00PM-2:50PM', 'Fall2016'),
(107, 42, 'MS 239', 'MoWe', '11:00AM-11:50AM', 'Fall2016'),
(108, 42, 'MS 239', 'TuTh', '3:00PM-3:50PM', 'Fall2016'),
(109, 43, 'SB 144', 'TuTh', '2:00PM-3:15PM', 'Winter2016'),
(110, 43, 'MS 239', 'MoWe', '1:00PM-1:50PM', 'Winter2016'),
(111, 43, 'MS 239', 'TuTh', '12:00PM-12:50PM', 'Winter2016'),
(112, 43, 'MS 239', 'TuTh', '6:00PM-6:50PM', 'Winter2016'),
(113, 21, 'SA 104', 'MoWeFr', '3:00PM-3:50PM', 'Fall2016'),
(114, 21, 'ST 057', 'MoWe', '5:00PM-5:50PM', 'Fall2016'),
(115, 21, 'ST 055', 'TuTh', '5:00PM-5:50PM', 'Fall2016'),
(116, 21, 'ST 055', 'TuTh', '3:00PM-3:50PM', 'Fall2016'),
(117, 187, 'ICT 618B', 'We', '8:00AM-8:50AM', 'Fall2016'),
(118, 187, 'noroom', 'TBA', 'TBA', 'Fall2016'),
(119, 194, 'ICT 618B', 'Tu', '8:00AM-8:50AM', 'Fall2016'),
(120, 194, 'noroom', 'TBA', 'TBA', 'Fall2016'),
(121, 44, 'SS 209', 'TuTh', '9:30AM-10:45AM', 'Fall2017'),
(122, 40, 'ST 063', 'TuTh', '3:30PM-4:45PM', 'Fall2016'),
(123, 40, 'ST 055', 'MoWe', '12:00PM-12:50PM', 'Fall2016'),
(124, 198, 'ICT 121', 'TuTh', '9:30AM-10:45AM', 'Fall2016'),
(125, 198, 'MS 119', 'TuTh', '1:00PM-1:50PM', 'Fall2016'),
(126, 198, 'MS 119', 'TuTh', '2:00PM-2:50PM', 'Fall2016'),
(127, 198, 'MS 119', 'MoWe', '9:00AM-9:50AM', 'Fall2016'),
(128, 198, 'MS 119', 'MoWe', '2:00PM-2:50PM', 'Fall2016'),
(129, 198, 'MS 119', 'MoWe', '1:00PM-1:50PM', 'Fall2016'),
(130, 198, 'MS 119', 'TuTh', '12:00PM-12:50PM', 'Fall2016'),
(131, 199, 'MS 217', 'MoWeFr', '10:00AM-10:50AM', 'Fall2016'),
(132, 199, 'ICT 319', 'Mo', '3:00PM-4:50PM', 'Fall2016'),
(133, 200, 'MFH 162', 'MoWeFr', '9:00AM-9:50AM', 'Fall2016'),
(134, 200, 'ST 141', 'MoWeFr', '8:00AM-8:50AM', 'Fall2016'),
(135, 200, 'ST 145', 'MoWeFr', '12:00PM-12:50PM', 'Fall2016'),
(136, 200, 'MFH 164', 'TuTh', '9:30AM-10:45AM', 'Fall2016'),
(137, 200, 'ST 145', 'MoWeFr', '10:00AM-10:50AM', 'Fall2016'),
(138, 200, 'ICT 121', 'TuTh', '12:30PM-1:45PM', 'Fall2016'),
(139, 200, 'ST 145', 'MoWeFr', '2:00PM-2:50PM', 'Fall2016'),
(140, 200, 'noroom', 'TBA', 'TBA', 'Fall2016'),
(141, 200, 'noroom', 'TBA', 'TBA', 'Fall2016'),
(142, 200, 'noroom', 'TBA', 'TBA', 'Fall2016'),
(143, 200, 'noroom', 'TBA', 'TBA', 'Fall2016'),
(144, 200, 'noroom', 'TBA', 'TBA', 'Fall2016'),
(145, 200, 'noroom', 'TBA', 'TBA', 'Fall2016'),
(146, 200, 'noroom', 'TBA', 'TBA', 'Fall2016'),
(147, 200, 'noroom', 'TBA', 'TBA', 'Fall2016'),
(148, 200, 'noroom', 'TBA', 'TBA', 'Fall2016'),
(149, 200, 'noroom', 'TBA', 'TBA', 'Fall2016'),
(150, 200, 'noroom', 'TBA', 'TBA', 'Fall2016'),
(151, 200, 'noroom', 'TBA', 'TBA', 'Fall2016'),
(152, 200, 'noroom', 'TBA', 'TBA', 'Fall2016'),
(153, 200, 'MS 515', 'Tu', '9:00AM-9:50AM', 'Fall2016'),
(154, 200, 'MS 521', 'Tu', '9:00AM-9:50AM', 'Fall2016'),
(155, 200, 'MS 515', 'Tu', '10:00AM-10:50AM', 'Fall2016'),
(156, 200, 'MS 521', 'Tu', '10:00AM-10:50AM', 'Fall2016'),
(157, 200, 'MS 317', 'Tu', '11:00AM-11:50AM', 'Fall2016'),
(158, 200, 'MS 521', 'Tu', '11:00AM-11:50AM', 'Fall2016'),
(159, 200, 'MS 515', 'Tu', '12:00PM-12:50PM', 'Fall2016'),
(160, 200, 'MS 521', 'Tu', '12:00PM-12:50PM', 'Fall2016'),
(161, 200, 'MS 515', 'Tu', '1:00PM-1:50PM', 'Fall2016'),
(162, 200, 'MS 521', 'Tu', '1:00PM-1:50PM', 'Fall2016'),
(163, 200, 'MS 515', 'Tu', '2:00PM-2:50PM', 'Fall2016'),
(164, 200, 'MS 521', 'Tu', '2:00PM-2:50PM', 'Fall2016'),
(165, 200, 'MS 515', 'Mo', '1:00PM-1:50PM', 'Fall2016'),
(166, 200, 'MS 521', 'Mo', '1:00PM-1:50PM', 'Fall2016'),
(167, 200, 'MS 515', 'Mo', '2:00PM-2:50PM', 'Fall2016'),
(168, 200, 'MS 521', 'Mo', '2:00PM-2:50PM', 'Fall2016'),
(169, 200, 'MS 515', 'We', '3:00PM-3:50PM', 'Fall2016'),
(170, 200, 'MS 521', 'We', '3:00PM-3:50PM', 'Fall2016'),
(171, 200, 'MS 515', 'We', '4:00PM-4:50PM', 'Fall2016'),
(172, 200, 'MS 521', 'We', '4:00PM-4:50PM', 'Fall2016'),
(173, 200, 'MS 515', 'We', '11:00AM-11:50AM', 'Fall2016'),
(174, 200, 'MS 521', 'We', '11:00AM-11:50AM', 'Fall2016'),
(175, 200, 'MS 515', 'We', '12:00PM-12:50PM', 'Fall2016'),
(176, 200, 'MS 521', 'We', '12:00PM-12:50PM', 'Fall2016'),
(177, 200, 'MS 515', 'Fr', '2:00PM-2:50PM', 'Fall2016'),
(178, 200, 'MS 521', 'Fr', '2:00PM-2:50PM', 'Fall2016'),
(179, 200, 'MS 515', 'Fr', '3:00PM-3:50PM', 'Fall2016'),
(180, 200, 'MS 521', 'Fr', '3:00PM-3:50PM', 'Fall2016'),
(181, 200, 'MS 515', 'Fr', '12:00PM-12:50PM', 'Fall2016'),
(182, 200, 'MS 521', 'Fr', '12:00PM-12:50PM', 'Fall2016'),
(183, 200, 'MS 515', 'Fr', '1:00PM-1:50PM', 'Fall2016'),
(184, 200, 'MS 521', 'Fr', '1:00PM-1:50PM', 'Fall2016'),
(185, 200, 'MS 515', 'Th', '1:00PM-1:50PM', 'Fall2016'),
(186, 200, 'MS 521', 'Th', '1:00PM-1:50PM', 'Fall2016'),
(187, 200, 'MS 515', 'Th', '2:00PM-2:50PM', 'Fall2016'),
(188, 200, 'MS 521', 'Th', '2:00PM-2:50PM', 'Fall2016'),
(189, 201, 'ENA 103', 'MoWeFr', '10:00AM-10:50AM', 'Fall2016'),
(190, 201, 'MS 527', 'TuTh', '2:00PM-3:15PM', 'Fall2016'),
(191, 201, 'MS 317', 'Tu', '10:00AM-10:50AM', 'Fall2016'),
(192, 201, 'MS 571', 'Tu', '10:00AM-10:50AM', 'Fall2016'),
(193, 201, 'MS 515', 'Tu', '11:00AM-11:50AM', 'Fall2016'),
(194, 201, 'MS 571', 'Tu', '11:00AM-11:50AM', 'Fall2016'),
(195, 201, 'MS 317', 'Th', '11:00AM-11:50AM', 'Fall2016'),
(196, 201, 'MS 571', 'Th', '11:00AM-11:50AM', 'Fall2016'),
(197, 202, 'SA 104', 'MoWeFr', '3:00PM-3:50PM', 'Fall2016'),
(198, 203, 'ST 140', 'MoTuWeFr', '8:00AM-8:50AM', 'Fall2016'),
(199, 203, 'ICT 102', 'MoWeThFr', '4:00PM-4:50PM', 'Fall2016'),
(200, 203, 'ENG 60', 'MoWeThFr', '1:00PM-1:50PM', 'Fall2016'),
(201, 203, 'ENE 241', 'TuWeThFr', '2:00PM-2:50PM', 'Fall2016'),
(202, 203, 'ICT 122', 'MoTuWeFr', '1:00PM-1:50PM', 'Fall2016'),
(203, 203, 'ST 128', 'Tu', '9:00AM-9:50AM', 'Fall2016'),
(204, 203, 'MS 527', 'We', '12:00PM-12:50PM', 'Fall2016'),
(205, 203, 'SA 124A', 'Th', '12:00PM-12:50PM', 'Fall2016'),
(206, 203, 'ST 130', 'Fr', '11:00AM-11:50AM', 'Fall2016'),
(207, 203, 'TRB 101', 'Mo', '3:00PM-3:50PM', 'Fall2016'),
(208, 203, 'SA 124A', 'Tu', '12:00PM-12:50PM', 'Fall2016'),
(209, 203, 'ST 126', 'Tu', '2:00PM-2:50PM', 'Fall2016'),
(210, 203, 'SA 124A', 'We', '2:00PM-2:50PM', 'Fall2016'),
(211, 203, 'ST 126', 'Th', '2:00PM-2:50PM', 'Fall2016'),
(212, 203, 'ST 126', 'Th', '3:00PM-3:50PM', 'Fall2016'),
(213, 203, 'SA 124A', 'Fr', '9:00AM-9:50AM', 'Fall2016'),
(214, 203, 'TRB 101', 'Fr', '12:00PM-12:50PM', 'Fall2016'),
(215, 203, 'MS 371', 'We', '10:00AM-10:50AM', 'Fall2016'),
(216, 203, 'MS 371', 'We', '11:00AM-11:50AM', 'Fall2016'),
(217, 203, 'MS 371', 'Th', '10:00AM-10:50AM', 'Fall2016'),
(218, 203, 'MS 371', 'Th', '11:00AM-11:50AM', 'Fall2016'),
(219, 203, 'MS 371', 'Mo', '12:00PM-12:50PM', 'Fall2016'),
(220, 203, 'MS 371', 'Mo', '11:00AM-11:50AM', 'Fall2016'),
(221, 203, 'MS 371', 'Tu', '10:00AM-10:50AM', 'Fall2016'),
(222, 203, 'MS 371', 'Tu', '11:00AM-11:50AM', 'Fall2016'),
(223, 203, 'noroom', 'TBA', 'TBA', 'Fall2016'),
(224, 203, 'noroom', 'TBA', 'TBA', 'Fall2016'),
(225, 203, 'noroom', 'TBA', 'TBA', 'Fall2016'),
(226, 203, 'noroom', 'TBA', 'TBA', 'Fall2016'),
(227, 203, 'noroom', 'TBA', 'TBA', 'Fall2016'),
(228, 203, 'noroom', 'TBA', 'TBA', 'Fall2016'),
(229, 203, 'noroom', 'TBA', 'TBA', 'Fall2016'),
(230, 203, 'noroom', 'TBA', 'TBA', 'Fall2016'),
(231, 203, 'noroom', 'TBA', 'TBA', 'Fall2016'),
(232, 203, 'noroom', 'TBA', 'TBA', 'Fall2016'),
(233, 204, 'ST 140', 'MoWeFr', '3:00PM-3:50PM', 'Fall2016'),
(234, 204, 'ICT 102', 'MoWeFr', '10:00AM-10:50AM', 'Fall2016'),
(235, 204, 'ST 141', 'MoWeFr', '9:00AM-9:50AM', 'Fall2016'),
(236, 204, 'ES 162', 'MoWeFr', '11:00AM-11:50AM', 'Fall2016'),
(237, 204, 'MFH 164', 'TuTh', '11:00AM-12:15PM', 'Fall2016'),
(238, 204, 'MFH 164', 'TuTh', '12:30PM-1:45PM', 'Fall2016'),
(239, 204, 'SA 124A', 'Mo', '11:00AM-11:50AM', 'Fall2016'),
(240, 204, 'MS 527', 'Mo', '12:00PM-12:50PM', 'Fall2016'),
(241, 204, 'SA 124A', 'Mo', '4:00PM-4:50PM', 'Fall2016'),
(242, 204, 'SA 124A', 'Tu', '11:00AM-11:50AM', 'Fall2016'),
(243, 204, 'SA 124A', 'Tu', '1:00PM-1:50PM', 'Fall2016'),
(244, 204, 'SA 124A', 'We', '4:00PM-4:50PM', 'Fall2016'),
(245, 204, 'ST 126', 'Th', '9:00AM-9:50AM', 'Fall2016'),
(246, 204, 'ST 126', 'Th', '10:00AM-10:50AM', 'Fall2016'),
(247, 204, 'SA 124A', 'We', '9:00AM-9:50AM', 'Fall2016'),
(248, 204, 'SB 144', 'We', '11:00AM-11:50AM', 'Fall2016'),
(249, 204, 'MS 365', 'Th', '11:00AM-11:50AM', 'Fall2016'),
(250, 204, 'MS 365', 'Th', '12:00PM-12:50PM', 'Fall2016'),
(251, 204, 'MS 365', 'Fr', '8:00AM-8:50AM', 'Fall2016'),
(252, 204, 'MS 371', 'Fr', '8:00AM-8:50AM', 'Fall2016'),
(253, 204, 'MS 365', 'We', '2:00PM-2:50PM', 'Fall2016'),
(254, 204, 'MS 365', 'We', '3:00PM-3:50PM', 'Fall2016'),
(255, 204, 'MS 365', 'Th', '1:00PM-1:50PM', 'Fall2016'),
(256, 204, 'MS 365', 'Th', '2:00PM-2:50PM', 'Fall2016'),
(257, 204, 'MS 365', 'We', '12:00PM-12:50PM', 'Fall2016'),
(258, 204, 'MS 365', 'We', '1:00PM-1:50PM', 'Fall2016'),
(259, 204, 'MS 365', 'Fr', '10:00AM-10:50AM', 'Fall2016'),
(260, 204, 'MS 365', 'Fr', '11:00AM-11:50AM', 'Fall2016'),
(261, 204, 'MS 365', 'Mo', '9:00AM-9:50AM', 'Fall2016'),
(262, 204, 'MS 365', 'Mo', '10:00AM-10:50AM', 'Fall2016'),
(263, 204, 'MS 365', 'Mo', '2:00PM-2:50PM', 'Fall2016'),
(264, 204, 'MS 365', 'Mo', '3:00PM-3:50PM', 'Fall2016'),
(265, 204, 'noroom', 'TBA', 'TBA', 'Fall2016'),
(266, 204, 'noroom', 'TBA', 'TBA', 'Fall2016'),
(267, 204, 'noroom', 'TBA', 'TBA', 'Fall2016'),
(268, 204, 'noroom', 'TBA', 'TBA', 'Fall2016'),
(269, 204, 'noroom', 'TBA', 'TBA', 'Fall2016'),
(270, 204, 'noroom', 'TBA', 'TBA', 'Fall2016'),
(271, 204, 'noroom', 'TBA', 'TBA', 'Fall2016'),
(272, 204, 'noroom', 'TBA', 'TBA', 'Fall2016'),
(273, 205, 'SB 103', 'MoWeFr', '4:00PM-4:50PM', 'Fall2016'),
(274, 205, 'ENC 70', 'TuTh', '2:00PM-3:15PM', 'Fall2016'),
(275, 205, 'ENC 70', 'TuTh', '3:30PM-4:45PM', 'Fall2016'),
(276, 205, 'ENC 70', 'MoWeFr', '10:00AM-10:50AM', 'Fall2016'),
(277, 205, 'ICT 116', 'Tu', '3:30PM-4:45PM', 'Fall2016'),
(278, 205, 'ST 139', 'Tu', '3:30PM-4:45PM', 'Fall2016'),
(279, 205, 'ENG 230', 'Th', '3:30PM-4:45PM', 'Fall2016'),
(280, 205, 'ST 139', 'Th', '3:30PM-4:45PM', 'Fall2016'),
(281, 205, 'ST 131', 'Mo', '1:30PM-2:45PM', 'Fall2016'),
(282, 205, 'ST 139', 'Mo', '1:30PM-2:45PM', 'Fall2016'),
(283, 205, 'ES 443', 'We', '1:30PM-2:45PM', 'Fall2016'),
(284, 205, 'SB 142', 'We', '1:30PM-2:45PM', 'Fall2016'),
(285, 205, 'ICT 116', 'Th', '12:30PM-1:45PM', 'Fall2016'),
(286, 205, 'ST 139', 'Th', '12:30PM-1:45PM', 'Fall2016'),
(287, 205, 'ICT 116', 'Th', '2:00PM-3:15PM', 'Fall2016'),
(288, 205, 'ENG 224', 'Th', '2:00PM-3:15PM', 'Fall2016'),
(289, 205, 'noroom', 'TBA', 'TBA', 'Fall2016'),
(290, 206, 'ENC 70', 'MoWeFr', '3:00PM-3:50PM', 'Fall2016'),
(291, 206, 'ENC 70', 'TuTh', '9:30AM-10:45AM', 'Fall2016'),
(292, 206, 'ENG 60', 'TuTh', '2:00PM-3:15PM', 'Fall2016'),
(293, 206, 'ST 148', 'MoWeFr', '9:00AM-9:50AM', 'Fall2016'),
(294, 206, 'ST 148', 'MoWeFr', '9:00AM-9:50AM', 'Fall2016'),
(295, 206, 'ST 143', 'MoWeFr', '10:00AM-10:50AM', 'Fall2016'),
(296, 206, 'ENA 101', 'MoWeFr', '11:00AM-11:50AM', 'Fall2016'),
(297, 206, 'ST 143', 'TuTh', '11:00AM-12:15PM', 'Fall2016'),
(298, 206, 'SA 245', 'We', '11:00AM-11:50AM', 'Fall2016'),
(299, 206, 'SA 015', 'We', '11:00AM-11:50AM', 'Fall2016'),
(300, 206, 'ST 130', 'We', '1:00PM-1:50PM', 'Fall2016'),
(301, 206, 'ST 128', 'We', '1:00PM-1:50PM', 'Fall2016'),
(302, 206, 'SA 017', 'We', '1:00PM-1:50PM', 'Fall2016'),
(303, 206, 'ES 920', 'Mo', '11:00AM-11:50AM', 'Fall2016'),
(304, 206, 'TRB 101', 'Mo', '11:00AM-11:50AM', 'Fall2016'),
(305, 206, 'ST 130', 'Mo', '12:00PM-12:50PM', 'Fall2016'),
(306, 206, 'SA 015', 'Mo', '12:00PM-12:50PM', 'Fall2016'),
(307, 206, 'ES 920', 'We', '8:00AM-8:50AM', 'Fall2016'),
(308, 206, 'TRB 101', 'We', '8:00AM-8:50AM', 'Fall2016'),
(309, 206, 'ST 130', 'We', '12:00PM-12:50PM', 'Fall2016'),
(310, 206, 'SA 017', 'We', '12:00PM-12:50PM', 'Fall2016'),
(311, 206, 'ES 920', 'We', '11:00AM-11:50AM', 'Fall2016'),
(312, 206, 'ST 128', 'We', '11:00AM-11:50AM', 'Fall2016'),
(313, 206, 'SA 124A', 'Fr', '11:00AM-11:50AM', 'Fall2016'),
(314, 206, 'SA 124A', 'Fr', '11:00AM-11:50AM', 'Fall2016'),
(315, 206, 'SA 124A', 'We', '3:00PM-3:50PM', 'Fall2016'),
(316, 206, 'ST 130', 'We', '1:00PM-1:50PM', 'Fall2016'),
(317, 206, 'SA 235', 'Fr', '12:00PM-12:50PM', 'Fall2016'),
(318, 206, 'MS 427', 'Tu', '4:00PM-4:50PM', 'Fall2016'),
(319, 206, 'MS 431', 'We', '1:00PM-1:50PM', 'Fall2016'),
(320, 206, 'MS 431', 'We', '3:00PM-3:50PM', 'Fall2016'),
(321, 206, 'EEEL 345', 'Th', '4:00PM-4:50PM', 'Fall2016'),
(322, 206, 'EEEL 349', 'Th', '4:00PM-4:50PM', 'Fall2016'),
(323, 206, 'MS 427', 'Mo', '10:00AM-10:50AM', 'Fall2016'),
(324, 206, 'MS 427', 'Mo', '2:00PM-2:50PM', 'Fall2016'),
(325, 206, 'MS 431', 'Mo', '4:00PM-4:50PM', 'Fall2016'),
(326, 206, 'noroom', 'TBA', 'TBA', 'Fall2016'),
(327, 206, 'noroom', 'TBA', 'TBA', 'Fall2016'),
(328, 206, 'noroom', 'TBA', 'TBA', 'Fall2016'),
(329, 206, 'noroom', 'TBA', 'TBA', 'Fall2016'),
(330, 206, 'noroom', 'TBA', 'TBA', 'Fall2016'),
(331, 206, 'noroom', 'TBA', 'TBA', 'Fall2016'),
(332, 206, 'noroom', 'TBA', 'TBA', 'Fall2016'),
(333, 206, 'noroom', 'TBA', 'TBA', 'Fall2016'),
(334, 206, 'noroom', 'TBA', 'TBA', 'Fall2016'),
(335, 206, 'noroom', 'TBA', 'TBA', 'Fall2016'),
(336, 206, 'noroom', 'TBA', 'TBA', 'Fall2016'),
(337, 208, 'MFH 160', 'MoWeFr', '11:00AM-11:50AM', 'Fall2016'),
(338, 208, 'ST 132', 'Fr', '12:00PM-12:50PM', 'Fall2016'),
(339, 208, 'ST 139', 'Th', '2:00PM-2:50PM', 'Fall2016'),
(340, 208, 'ES 162', 'Fr', '3:00PM-3:50PM', 'Fall2016'),
(341, 209, 'MS 527', 'MoWeFr', '9:00AM-9:50AM', 'Fall2016'),
(342, 209, 'SB 146', 'Tu', '9:00AM-9:50AM', 'Fall2016'),
(343, 209, 'MS 527', 'Fr', '1:00PM-1:50PM', 'Fall2016'),
(344, 210, 'KNB 126', 'MoWeFr', '1:00PM-1:50PM', 'Fall2016'),
(345, 210, 'AD 142', 'TuTh', '11:00AM-12:15PM', 'Fall2016'),
(346, 210, 'CHE 106', 'Mo', '2:00PM-2:50PM', 'Fall2016'),
(347, 210, 'MS 211', 'Mo', '3:00PM-3:50PM', 'Fall2016'),
(348, 210, 'CHE 102', 'Tu', '11:00AM-11:50AM', 'Fall2016'),
(349, 210, 'CHE 102', 'Tu', '1:00PM-1:50PM', 'Fall2016'),
(350, 210, 'SA 109', 'We', '10:00AM-10:50AM', 'Fall2016'),
(351, 210, 'EDC 280', 'We', '11:00AM-11:50AM', 'Fall2016'),
(352, 212, 'ENE 239', 'MoWeFr', '9:00AM-9:50AM', 'Fall2016'),
(353, 212, 'EEEL 210', 'MoWeFr', '2:00PM-2:50PM', 'Fall2016'),
(354, 212, 'RDC,', 'TuThFr', '11:00AM-11:50AM', 'Fall2016'),
(355, 212, 'RDC,', 'MoTuTh', '10:00AM-10:50AM', 'Fall2016'),
(356, 212, 'EDC 172', 'Mo', '10:00AM-10:50AM', 'Fall2016'),
(357, 212, 'EDC 172', 'Mo', '11:00AM-11:50AM', 'Fall2016'),
(358, 212, 'EDC 276', 'Mo', '2:00PM-2:50PM', 'Fall2016'),
(359, 212, 'EDC 172', 'Tu', '10:00AM-10:50AM', 'Fall2016'),
(360, 212, 'EDC 172', 'Tu', '11:00AM-11:50AM', 'Fall2016'),
(361, 212, 'EDC 154', 'Tu', '1:00PM-1:50PM', 'Fall2016'),
(362, 212, 'ST 055', 'We', '9:00AM-9:50AM', 'Fall2016'),
(363, 212, 'CHE 202', 'We', '9:00AM-9:50AM', 'Fall2016'),
(364, 212, 'RDC, grou', 'We', '10:00AM-10:50AM', 'Fall2016'),
(365, 213, 'SA 104', 'MoWeFr', '11:00AM-11:50AM', 'Fall2016'),
(366, 213, 'CHE 202', 'We', '1:00PM-1:50PM', 'Fall2016'),
(367, 213, 'CHE 202', 'We', '2:00PM-2:50PM', 'Fall2016'),
(368, 213, 'EDC 172', 'Th', '10:00AM-10:50AM', 'Fall2016'),
(369, 213, 'EDC 172', 'Th', '11:00AM-11:50AM', 'Fall2016'),
(370, 214, 'SA 247', 'MoWeFr', '12:00PM-12:50PM', 'Fall2016');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `UCID` int(8) NOT NULL,
  `UID` int(10) NOT NULL,
  `Fname` varchar(500) COLLATE utf8_bin NOT NULL,
  `Lname` varchar(500) COLLATE utf8_bin NOT NULL,
  `Mname` char(50) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`UCID`, `UID`, `Fname`, `Lname`, `Mname`) VALUES
(1, 2, 'Computer', 'Student', 'Science');

-- --------------------------------------------------------

--
-- Table structure for table `tutorial`
--

CREATE TABLE `tutorial` (
  `Sid` int(10) DEFAULT NULL,
  `Eid` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tutorial`
--

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
(43, 95546009),
(45, 40120292),
(46, 95241730),
(47, 81500100),
(48, 67145270),
(51, 10241884),
(52, 97549138),
(53, 54683299),
(54, 82566632),
(55, 57097659),
(56, 82566632),
(57, 40681195),
(58, 54683299),
(59, 53806363),
(60, 53806363),
(61, 18797188),
(62, 40681195),
(64, 95293477),
(65, 28091334),
(66, 28091334),
(67, 17001491),
(68, 95293477),
(69, 17001491),
(72, 57423070),
(73, 57423070),
(74, 69093486),
(75, 48708823),
(76, 78620722),
(77, 69093486),
(78, 48708823),
(79, 78620722),
(81, 96213083),
(82, 87413898),
(83, 87413898),
(84, 96213083),
(86, 81309294),
(87, 81293991),
(88, 81293991),
(89, 27445073),
(90, 81309294),
(92, 78481196),
(93, 12640608),
(94, 16140520),
(95, 12640608),
(96, 78481196),
(97, 16140520),
(99, 78351808),
(100, 78351808),
(101, 99980916),
(102, 43474656),
(103, 99980916),
(104, 43474656),
(106, 57180516),
(107, 57180516),
(108, 94737353),
(110, 94737353),
(111, 78351808),
(112, 78351808),
(114, 99592036),
(115, 62184445),
(116, 62184445),
(123, 23175828),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(152, 1),
(191, 16206198),
(192, 26710958),
(193, 16206198),
(194, 12431243),
(195, 26710958),
(196, 12431243),
(223, 1),
(224, 1),
(225, 1),
(226, 1),
(227, 1),
(228, 1),
(229, 1),
(230, 1),
(231, 1),
(232, 1),
(265, 1),
(266, 1),
(267, 1),
(268, 1),
(269, 1),
(270, 1),
(271, 1),
(272, 1),
(289, 1),
(326, 1),
(327, 1),
(328, 1),
(329, 1),
(330, 1),
(331, 1),
(332, 1),
(333, 1),
(334, 1),
(335, 1),
(336, 1),
(338, 95844232),
(339, 95844232),
(342, NULL),
(346, 59555101),
(347, 59555101),
(348, 59555101),
(349, 58136810),
(350, 58136810),
(351, 58136810),
(356, 17134373),
(357, 17134373),
(358, 17134373),
(359, 17134373),
(360, 40347153),
(361, 40347153),
(362, 40347153),
(363, 40347153),
(364, NULL),
(366, 12853591),
(367, 12853591),
(368, 12853591),
(369, 12853591);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UID` int(10) NOT NULL,
  `Username` char(255) COLLATE utf8_bin NOT NULL,
  `Password` char(128) COLLATE utf8_bin NOT NULL COMMENT 'Length: http://stackoverflow.com/questions/247304/what-data-type-to-use-for-hashed-password-field-and-what-length'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UID`, `Username`, `Password`) VALUES
(1, 'root', 'root'),
(2, 'compstudent', 'computer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`Cid`),
  ADD KEY `FK_course_department` (`Acronym`);

--
-- Indexes for table `degree`
--
ALTER TABLE `degree`
  ADD PRIMARY KEY (`Deg_ID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`Acronym`),
  ADD UNIQUE KEY `Name` (`Name`);

--
-- Indexes for table `enroll_course`
--
ALTER TABLE `enroll_course`
  ADD KEY `FK_enroll_course_student` (`UCID`),
  ADD KEY `FK_enroll_course_course` (`Cid`);

--
-- Indexes for table `enroll_deg`
--
ALTER TABLE `enroll_deg`
  ADD KEY `FK_enroll_deg_student` (`UCID`),
  ADD KEY `FK_enroll_deg_degree` (`Deg_ID`);

--
-- Indexes for table `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`Eid`);

--
-- Indexes for table `lab`
--
ALTER TABLE `lab`
  ADD KEY `FK_lab_instructor` (`Eid`),
  ADD KEY `FK_lab_section` (`Sid`);

--
-- Indexes for table `lecture`
--
ALTER TABLE `lecture`
  ADD KEY `FK_lecture_instructor` (`Eid`),
  ADD KEY `FK_lecture_section` (`Sid`);

--
-- Indexes for table `major`
--
ALTER TABLE `major`
  ADD KEY `FK_major_degree` (`Deg_ID`);

--
-- Indexes for table `minor`
--
ALTER TABLE `minor`
  ADD KEY `FK_minor_degree` (`Deg_ID`);

--
-- Indexes for table `registrar`
--
ALTER TABLE `registrar`
  ADD KEY `FK_registrar_user` (`UID`);

--
-- Indexes for table `restriction`
--
ALTER TABLE `restriction`
  ADD KEY `FK_restriction_course` (`Cid`),
  ADD KEY `FK_restriction_course_2` (`Cid_Restrict`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`Sid`),
  ADD KEY `FK_section_course` (`Cid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`UCID`),
  ADD KEY `FK_student_user` (`UID`);

--
-- Indexes for table `tutorial`
--
ALTER TABLE `tutorial`
  ADD KEY `FK_tutorial_instructor` (`Eid`),
  ADD KEY `FK_tutorial_section` (`Sid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `Cid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;
--
-- AUTO_INCREMENT for table `degree`
--
ALTER TABLE `degree`
  MODIFY `Deg_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `registrar`
--
ALTER TABLE `registrar`
  MODIFY `UID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `Sid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=371;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `UCID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `FK_course_department` FOREIGN KEY (`Acronym`) REFERENCES `department` (`Acronym`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `enroll_course`
--
ALTER TABLE `enroll_course`
  ADD CONSTRAINT `FK_enroll_course_course` FOREIGN KEY (`Cid`) REFERENCES `course` (`Cid`),
  ADD CONSTRAINT `FK_enroll_course_student` FOREIGN KEY (`UCID`) REFERENCES `student` (`UCID`);

--
-- Constraints for table `enroll_deg`
--
ALTER TABLE `enroll_deg`
  ADD CONSTRAINT `FK_enroll_deg_degree` FOREIGN KEY (`Deg_ID`) REFERENCES `degree` (`Deg_ID`),
  ADD CONSTRAINT `FK_enroll_deg_student` FOREIGN KEY (`UCID`) REFERENCES `student` (`UCID`);

--
-- Constraints for table `lab`
--
ALTER TABLE `lab`
  ADD CONSTRAINT `FK_lab_instructor` FOREIGN KEY (`Eid`) REFERENCES `instructor` (`Eid`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_lab_section` FOREIGN KEY (`Sid`) REFERENCES `section` (`Sid`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `lecture`
--
ALTER TABLE `lecture`
  ADD CONSTRAINT `FK_lecture_instructor` FOREIGN KEY (`Eid`) REFERENCES `instructor` (`Eid`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_lecture_section` FOREIGN KEY (`Sid`) REFERENCES `section` (`Sid`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `major`
--
ALTER TABLE `major`
  ADD CONSTRAINT `FK_major_degree` FOREIGN KEY (`Deg_ID`) REFERENCES `degree` (`Deg_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `minor`
--
ALTER TABLE `minor`
  ADD CONSTRAINT `FK_minor_degree` FOREIGN KEY (`Deg_ID`) REFERENCES `degree` (`Deg_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `registrar`
--
ALTER TABLE `registrar`
  ADD CONSTRAINT `FK_registrar_user` FOREIGN KEY (`UID`) REFERENCES `user` (`UID`);

--
-- Constraints for table `restriction`
--
ALTER TABLE `restriction`
  ADD CONSTRAINT `FK_restriction_course` FOREIGN KEY (`Cid`) REFERENCES `course` (`Cid`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_restriction_course_2` FOREIGN KEY (`Cid_Restrict`) REFERENCES `course` (`Cid`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `section`
--
ALTER TABLE `section`
  ADD CONSTRAINT `FK_section_course` FOREIGN KEY (`Cid`) REFERENCES `course` (`Cid`) ON UPDATE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `FK_student_user` FOREIGN KEY (`UID`) REFERENCES `user` (`UID`);

--
-- Constraints for table `tutorial`
--
ALTER TABLE `tutorial`
  ADD CONSTRAINT `FK_tutorial_instructor` FOREIGN KEY (`Eid`) REFERENCES `instructor` (`Eid`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tutorial_section` FOREIGN KEY (`Sid`) REFERENCES `section` (`Sid`) ON DELETE SET NULL ON UPDATE CASCADE;
