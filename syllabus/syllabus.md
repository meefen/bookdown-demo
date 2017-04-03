# Syllabus - CI 5330 - Social Network Analysis in Education

**DRAFT - SUBJECT TO CHANGE**

**Spring 2017 * Sections 001 (Primarily Online), 3 credits**

- Primarily online
- F2F meetings to be customized based on student needs in the class 


### Instructor Information

**Bodong Chen, Assistant Professor**  
E-mail: chenbd@umn.edu  
Phone/Voicemail: (773) 850-1032  
Office: LTML, 210 Lrng & Environmental Sci, St. Paul  
Office Hours: By Appointment

### Course Description

Sociocultural perspectives treat learning---in schools, organizations, informal settings---as a fundamentally social process that takes place in specific social, cultural contexts. This view of learning necessitates methods that go beyond individual measurement to consider sociocultural processes of learning.

Social network analysis (SNA), a set of perspectives and techniques originated from early anthropology research, is concerned with social *affiliations* and *interactions* in social structures. SNA has garnered significant interests from educational researchers since decades ago, thanks to its usefulness for investigating phenomena that are fundamentally social. As software for SNA is becoming more accessible, and as learning is increasingly supported by digital environments (which automatically capture social interaction data), SNA has also become more feasible for educational researchers and practitioners.

This course provides an introduction to SNA, with a strong emphasis on its application in various educational settings and less focus on related mathematics. This course is organized into four major components/themes:

1. Foundations of social network perspectives
2. Techniques for collecting social network data
3. Techniques for analyzing and visualizing social networks
4. Practical guidelines on conducting SNA research in educational contexts, with considerations to theory use, ethics, and reproducibility

Throughout the course, students will have ample opportunities to 'play' with SNA to advance their own research agendas (e.g., social support of "low-performing" students, cyber-bulling on Instagram, teacher-parent interactions, collaboration in knowledge organizations, parent education through online platforms, the interaction between sports-event visitors with local residents, etc.). The hope for this course is to offer a brief introduction to the broad terrain of SNA, so that students from a wide range of educational research areas would be able to start applying SNA in their own research and/or practice.

### Course Learning Outcomes

A student who successfully completes this course will:

**Outcome 1. Demonstrate an understanding of the theory of social networks** by:

- Understanding the history of social network analysis
- Engaging in critical thinking regarding the applicability or inapplicability of social network theory to various educational contexts

**Outcome 2. Develop a command of the vocabulary and characterization of social network analysis** by:

- Using network terminology to identify nodes, edges, and affiliations in *graphical* form through sociograms and in *mathematical* form through matrices
- Appropriately distinguishing between a complete network, network samples, ego networks, one-mode networks, and two-mode networks
- Calculating measures of connection at the level of the actor, the position/role, the tie, the dyad, the triad, the group, and the whole network
- Utilizing the `Gephi` and/or `R` software packages for SNA to assemble, organize, and transform network data

**Outcome 3. Demonstrate competence in applying social network analysis in educational research** by:

- Gathering social network data from online and offline sources
- Utilizing network analysis software to characterize social network structure in list, matrix, and graph forms
- Analyzing the impact of network structure on patterns through basic network statistics
- Crafting empirical studies based on SNA to answer research questions in education
- Becoming aware of ethics issues in SNA in educational settings

Since SNA has proven to be useful for investigating various aspects of education, these learning outcomes fit with CEHD's mission of using "multiculturalism and multidisciplinary scholarship to advance teaching and learning and to enhance the psychological, physical, and social development of children, youth, and adults across the lifespan in families, organizations, and communities."[^1]

[^1]: See http://www.cehd.umn.edu/kin/about/mission.html

### Who Should/Shouldn't Take This Course?

**No prerequisite is required.** Prior knowledge in sociocultural learning theories, linear algebra, and statistics is recommended but not absolutely required.

Graduate students who feel driven to investigate educational phenomena and to shape the future of education should take this course. No matter whether you are studying effective teaching in classrooms, educational games, parent education, or creativity in organizations, SNA could potentially inform your scholarly inquiry and practice. If you are persuing a research degree (e.g., PhD, MA), discuss with your adviser whether this course could count as a research methodology course. 

Students who do not believe in sociocultural learning, or do not want to learn through social participation (e.g., group discussions) should **think twice** before taking this course. To learn SNA, we will "live" by experiencing the social aspects of learning and the power of networks in the human society.

In order to gain official course credit in this class, you must be a registered UMN graduate student. However, anyone is welcome to review course materials hosted on the course's [public website](https://bookdown.org/chen/snaEd/).

### Course Requirements

#### Course participation and reading assignments

This is a "primarily online" class. [The **course website**](https://bookdown.org/chen/snaEd/) is the "go-to" place for course materials. Most course readings will be made accessible through the site.

The class would meet periodically depending on needs emerging from the class (see Course Schedule below). Example needs include elaboration of key concepts, software demos, software Q&A, student presentations, etc.

Each week, students are expected to: 1) read assigned materials; and 2) collaboratively "annotate" them and discuss ideas using `Hypothes.is` and `Slack`. Students are also encouraged to keep brief reflection journals (or e-portfolios) connecting class discussions with individual research interests. Discussions could be initiated by the instructor (e.g., responding to key reflective questions from readings) or, more ideally, everyone participating in the class (e.g., Q&A, posting some genius research ideas, sharing interesting use of SNA). Since this is a 3-credit course, please expect a 9-hour weekly workload.

#### Textbook

- Carolan, B. V. (2014). *[Social network analysis and education: Theory, methods and applications](http://methods.sagepub.com.ezp1.lib.umn.edu/book/social-network-analysis-and-education)*. Thousand Oaks, CA: SAGE Publications.  (*Note: Free access arranged through the UMN Library. Follow the link above.*)

Optional:

- Scott, J. (2013). *Social network analysis* (3rd ed.). Thousand Oaks, CA: SAGE Publications.
- Scott, J., & Carrington, P. J. (2011). [The SAGE Handbook of Social Network Analysis](http://methods.sagepub.com.ezp2.lib.umn.edu/book/the-sage-handbook-of-social-network-analysis). SAGE Publications.

#### Technical requirements

**Internet use**. All participants are expected to have access to the Internet in order to participate in this course. If you need technical support, consider visiting UMN OIT's [tech help walk-in locations](http://it.umn.edu/help/walk-in) on campus.

**Software**. To succeed in this class, you will need to use [Hypothes.is](https://hypothes.is), [Slack](www.slack.com), [Gephi](https://gephi.org/), [R](https://www.r-project.org/), and typical word processing software like Google Docs. Note that Gephi depends on Java, so your computer should support Java as well.  For [R](https://www.r-project.org/), the `sna` and `igraph` packages need to be installed, in addition to the standard R base installation. [RStudio](https://www.rstudio.com/) is the recommended software environment. You are not expected to pick up every tool at once. Detailed guidelines will be provided on the course website to introduce each of them. 

#### Deadlines & late assignments

All graded work in class must be completed by the due dates listed below in the Course Schedule section of this syllabus.

If you find a specific deadline not working for you or you need more time for an assignment, you can establish your own new deadline **if you contact me in advance prior to the initial deadline**, provided that the new deadline would not disrupt your peers' work. However, **if I receive no prior communication from you and you submit an assignment late, the assignment will be penalized at the rate of 10% per day** that it is submitted past the due date/time. 

### Assignments and Grades

Below is an overview of class assignments. All assignments are subject to change. Details will be explained during specific class sessions.

### Grading

| **Components**                   | **Points** |
|----------------------------------|------------|
| Class participation              | 26         |
| Project checkpoint 1             |  5         |
| Data collection hands-on         | 10         |
| Project checkpoint 2             |  5         |
| Network analysis hands-on        | 10         |
| Project final artifact           | 30         |
| Project final presentation       | 10         |
| Reflection essay or e-portfolio  | 10         |
| *TOTAL*                          | 106        |

<!--

- **Class Participation - f2f** (10%): Students are expected to come to class prepared to discuss required readings. Class participation grade is based not only on being present but also contributing to class discussion.
-->

- **Class Participation - online, f2f** (2 points * 13): Active participation is an important part of this class. Specific requirements on class activities will be posted for each week. Only 13 weeks because the final week is dedidated to project presentations.
- **Course Project**: The central goal of this course is to help students apply SNA to their own research. To this end, each student will develop and continually refine a project idea throughout the course. A number of assignments are designed to help them move towards this goal:
	- *Project checkpoint 1* (5 points): Each student will share an initial project idea and receive feedback from the instructor and peers. Initial post is worth 4 points, and meaningful feedback on one peer is worth 1 point.
	- *Data collection hands-on* (10 points): Students will apply data collection techniques introduced in class to a real-world research scenario of their choice.
	- *Project checkpoint 2* (5 points): Students will share their refined project ideas, with a concrete data collection plan fleshed out.
	- *Network analysis hands-on* (10 points): Students will practice SNA using either an open dataset provided by the instructor or a dataset of their own. Research questions will be provided to guide the analysis to cover key aspects of SNA.
	- *Project final artifact* (30 points): Each student will produce a project final artifact that represents preliminary results of their initial project ideas. The specific format of this artifact, which could be a research paper, an e-portfolio, or an interactive tool, is to be negotiated in advance with the instructor. Due by 5/8/2017.
	- *Project final presentation* (10 points): Students will deliver a project final presentation by the end of the class to showcase their projects. The presentation will be assessed by both peers and the instructor, in light of a rubric.
- **Reflection essay or e-portfolio** (10 points): This assignment is designed to help students reflect on the journey of taking this course and examine possibilities of applying SNA in their ongoing and future research. Due by 5/8/2017.

*Note*: Detailed guidelines and/or rubrics will be provided for major assignments. There will be no final exam for the class. 


### Attendance Policy

Even though this is a primarily online class, your attendance is imperative.

- Notify the instructor prior to any absence from F2F components, and any delayed attendance in online components.
- In the event you are absent, you will be required to complete an alternative assignment. (See also Mandatory Attendance at First Class Session: http://www.policy.umn.edu/Policies/Education/Education/MANDATORYFIRSTCLASS.html)
- Students are excused pursuant the U of M “legitimate absence policy”.
- You are responsible for all class meetings (e.g. assignments, content) whether present or not.
- Absences may affect your final course grade.


### Class Schedule (tentative)

*Class Schedule is subject to change.  Please use the course website for any changes and the most up-to-date schedule.*

#### Schedule Overview

| Classes | Topics                                     | Due dates | Assignments & activities  |
|---------|--------------------------------------------|-----------|---------------------------|
| 1       | Introduction                               | 1/23      | Flipgrid self-intro       |
| 2       | Basic Concepts                             | 1/30      | Project checkpoint 1      |
| 3       | Applications and Examples I                | 2/6       |                           |
| 4       | Collect and Manage Network Data            | 2/13      |                           |
| 5       | Sociograms and Density                     | 2/20      | Data collection hands-on  |
| 6       | Centrality and Centralization              | 2/27      |                           |
| 7       | Components and Cliques                     | 3/6       | Project checkpoint 2      |
|         | SPRING BREAK -- NO CLASS                   |           |                           |
| 8       | Ego-centric Networks                       | 3/20      |                           |
| 9       | Applications and Examples II               | 3/27      |                           |
| 10      | Statistical Analysis with Network Data     | 4/3       |                           |
| 11*     | Network Dynamics and Temporality           | 4/10      | Network analysis hands-on |
| 12      | Novel Approaches and Analytics             | 4/17      |                           |
| 13      | Crafting SNA Research, Ethics              | 4/24      |                           |
| 14*     | Project Presentations                      | 5/1       | Project Presentations     |

Weeks with a '__*__' will take place face-to-face.  
Detailed readings and agenda items will be provided on the course website.

## University Policies

See [this file](Syllabi-Attachment-Current-Graduate.pdf).

