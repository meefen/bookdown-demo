---
title: "CI 8XXX - Applied Social Network Analysis in Education"
header-includes:
  - \usepackage{draftwatermark}
output:
  pdf_document:
    keep_tex: yes
---

<!--
pandoc -N --template=mytemplate.tex --variable mainfont="Palatino" --variable sansfont="Helvetica" --variable monofont="Menlo" --variable fontsize=11pt --variable version=2.0 syllabus.md -o syllabus.pdf
-->

**Spring 2019  *  Primarily Online  *  3 credits**

### Instructor Information

**Bodong Chen, Assistant Professor**  
E-mail: chenbd@umn.edu  
Phone/Voicemail: (612) 626-2050 / (773) 850-1032  
Office: LTML, 210 Learning & Environmental Science Bldg., St. Paul  
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

Graduate students who feel driven to investigate educational phenomena and to shape the future of education should take this course. No matter whether you are studying effective teaching in classrooms, educational games, parent education, or creativity in organizations, SNA could potentially inform your scholarly inquiry and practice. If you are pursuing a research degree (e.g., PhD, MA), discuss with your adviser whether this course would compliment your research training.

Students who do not believe in sociocultural learning, or do not want to learn through social participation (e.g., group discussions) should **think twice** before taking this course. To learn SNA, we will "live" by experiencing the social aspects of learning and the power of networks in the human society.

In order to gain official course credit in this class, you must be a registered UMN graduate student. However, anyone is welcome to review course materials hosted on the course's [public website](https://bookdown.org/chen/snaEd/).

### Course Requirements

#### Course participation and reading assignments

This is a "primarily online" class. A []**course website**](#) will be the "go-to" place for course materials. Most course readings will be made accessible through the site.

The class may meet periodically depending on needs emerging from the class (see Course Schedule below). Example needs include elaboration of key concepts, software demos, software Q&A, student presentations, etc.

Each week, students are expected to: 1) read assigned materials; and 2) collaboratively "annotate" them and discuss ideas using `Hypothes.is` and `Slack`. Students are also encouraged to keep brief reflection journals (or e-portfolios) connecting class discussions with individual research interests. Discussions could be initiated by the instructor (e.g., responding to key reflective questions from readings) or, more ideally, everyone participating in the class (e.g., Q&A, posting some genius research ideas, sharing interesting use of SNA). Since this is a 3-credit course, please expect a 9-hour weekly workload.

#### Textbook

- Carolan, B. V. (2014). *[Social network analysis and education: Theory, methods and applications](http://methods.sagepub.com.ezp1.lib.umn.edu/book/social-network-analysis-and-education)*. Thousand Oaks, CA: SAGE Publications.  (*Note: Free access arranged through the UMN Library. Follow the link above.*)

Optional:

- Scott, J. (2013). *Social network analysis* (3rd ed.). Thousand Oaks, CA: SAGE Publications.

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

- **Class Participation - online, f2f** (2 points * 13): Active participation is an important part of this class. Specific requirements on class activities will be posted for each week. Only 13 weeks because the final week is dedicated to project presentations.
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

| Classes | Topics                                     | Assignments & activities  |
|---------|--------------------------------------------|---------------------------|
| 1       | Introduction                               | Flipgrid self-intro       |
| 2       | Basic Social Network Concepts              |                           |
| 3       | Education Theories                         | Student-led exploration   |
| 4       | Applications and Examples I                | Project checkpoint 1      |
| 5       | Collect and Manage Network Data            |                           |
| 6       | Sociograms and Density                     | Data collection hands-on  |
| 7       | Centrality and Centralization              |                           |
| 8       | Components and Cliques                     | Project checkpoint 2      |
|         | SPRING BREAK -- NO CLASS                   |                           |
| 9       | Ego-centric Networks                       |                           |
| 10      | Applications and Examples II               |                           |
| 11      | Statistical Analysis with Network Data     |                           |
| 12      | Network Dynamics and Temporality           | Network analysis hands-on |
| 13      | Planning SNA Research and Projects         |                           |
| 14      | Novel Approaches and Analytics             |                           |
| 15      | Project Presentations                      | Project Presentations     |

Detailed readings and agenda items will be provided on the course website.

## Weekly Details

#### Class 1: Introduction

Summary: This class introduces the expectations for this social networks course. We will walk through what you need to do to attain the objectives of the course. We will also get everyone oriented in this online class.

Readings:

- Syllabus
- Carolan, ch. 1
- Borgatti, S. P., Mehra, A., Brass, D. J., & Labianca, G. (2009). Network analysis in the social sciences. Science, 323(5916), 892–895. http://doi.org/10.1126/science.1165821


#### Class 2: Basic Concepts

Summary: We dive into the core of the course this week by considering the essential elements of social network analysis, nodes and ties.

Readings:

- Carolan, ch. 2-3
- (Optional) Grunspan, D. Z., Wiggins, B. L., & Goodreau, S. M. (2014). Understanding Classrooms through Social Network Analysis: A Primer for Social Network Analysis in Education Research. Cell Biology Education, 13(2), 167–178. http://doi.org/10.1187/cbe.13-08-0162


#### Class 3: Applications and Examples I

Summary: We will skim some case studies reported in the literature. Students are encouraged to take notes on unfamiliar terms and post to the forum. We will also explore everyone's interest areas in terms of applying SNA in education.

Readings:

- Carolan, ch 10 (skim and highlight concepts you know and don't know)
- Claim 1 from below or bring one from your research area
  - Daly, A. J., & Finnigan, K. S. (2011). The Ebb and Flow of Social Network Ties Between District Leaders Under High-Stakes Accountability. American Educational Research Journal, 48(1), 39–79.
  - Baker-Doyle, K. (2010). Beyond the Labor Market Paradigm: A Social Network Perspective on Teacher Recruitment and Retention. Education Policy Analysis Archives, 18, 26.
  - Heck, R. h., Price, C. l., & Thomas, S. l. (2004). Tracks as Emergent Structures: A Network Analysis of Student Differentiation in a High School. American Journal of Education , 110(4), 321–353.
  - Hill, M. (2002). Network Assessments and Diagrams: A Flexible Friend for Social Work Practice and Education. Journal of Social Work , 2(2), 233–254.
  - Christley, R. M. (2005). Infection in Social Networks: Using Network Analysis to Identify High-Risk Individuals. American Journal of Epidemiology, 162(10), 1024–1031. http://doi.org/10.1093/aje/kwi308
  - Christakis, N. A., & Fowler, J. H. (2007). The spread of obesity in a large social network over 32 years. The New England Journal of Medicine, 357(4), 370–379.
  - Dawson, S., Tan, J. P. L., & McWilliam, E. (2011). Measuring creative potential: Using social network analysis to monitor a learners’ creative capacity. Australasian Journal of Educational Technology, 27(6), 924–942.
  - Honeycutt, T. (2009). Making Connections: Using Social Network Analysis for Program Evaluation. Mathematica Policy Research, (1), 1–4.
  - Rienties, B., Héliot, Y., & Jindal-Snape, D. (2013). Understanding social learning relations of international students in a large classroom using social network analysis. Higher Education, 66(4), 489–504. http://doi.org/10.1007/s10734-013-9617-9
  - Martinez, A., Dimitriadis, Y., Rubia, B., Gómez, E., & de la Fuente, P. (2003). Combining qualitative evaluation and social network analysis for the study of classroom social interactions. Computers & Education, 41(4), 353–368.
  - Roberson, Q. M., & Colquitt, J. A. (2005). Shared and Configural Justice: A Social Network Model of Justice in Teams. Academy of Management Review. Academy of Management, 30(3), 595–607.
  - Tindall, D. B., & Wellman, B. (2001). Canada as Social Structure: Social Network Analysis and Canadian Sociology. Canadian Journal of Sociology = Cahiers Canadiens de Sociologie, 26(3), 265–308.
  - Woolley, A. W., Chabris, C. F., Pentland, A., Hashmi, N., & Malone, T. W. (2010). Evidence for a Collective Intelligence Factor in the Performance of Human Groups. Science, 330(6004), 686–688. http://doi.org/10.1126/science.1193147
  - Moody, J. (2001). Race, school integration, and friendship segregation in America 1. American journal of Sociology, 107(3), 679-716.

#### Class 4: Collect and Manage Network Data

Summary: In this week we get practical, diving into different types of network data and techniques we could use to collect them. The instructor will introduce what network data may look like, and then demonstrate several handy ways of collecting network data in digital environments (e.g., Twitter, Facebook groups, and LMSs). We will introduce `Gephi`, a user-friendly tool for SNA, and learn to import data into it.

Readings:

- Carolan, ch. 4

#### Class 5: Sociograms and Density

Summary: We are getting practical this week, using Gephi to visualize social networks of your choice and reviewing basic principles of network visualization. We will also explore network-level concepts and measures, including size, density, centralization, and diameter.

Readings:

- Carolan, ch. 5
- Schreurs, B., de Laat, M., Teplovs, C., & Voogd, S. (2014). Social Learning Analytics applied in a MOOC-environment. eLearning Papers, 36(January), 45–48.

#### Class 6: Centrality and Centralization

Summary: We will get familiar with these characteristics and the interpretations of them in various educational contexts.

Readings:

- None

#### Class 7: Components and Cliques

Summary: This week focus on the analysis of components, communities and cliques in social networks.

Readings:

- Carolan, ch. 6 (selected sections)

#### Class 8: Ego-centric Networks

Summary: We dive into ego-networks, a particular way to construct and interpret social networks. We will discuss educational scenarios where ego-centric networks are appropriate.

Readings:

- Carolan, ch. 7
- Dawson, S. (2010). “Seeing” the learning community: An exploration of the development of a resource for monitoring online student networking. British Journal of Educational Technology, 41(5), 736–752. http://doi.org/10.1111/j.1467-8535.2009.00970.x

#### Class 9: Applications and Examples II

Summary: This week will explore more examples of choice by students. We will adopt a deeper analytical framework when reviewing and critiquing introduced examples.

Readings

- Carolan, ch. 11
- Others TBD

#### Class 10: Statistical Analysis with Network Data

Summary: This week will explore basic statistical analysis of SNA data at different levels. Hands-on activities will be encouraged.

Readings:

- Carolan, ch. 8-9 (selected sections)

#### Class 11: Network Dynamics and Temporality

Summary: We turn our attention to a usually neglected aspect of social networks--their evolution over time. This week will review several distinctive techniques to capture and analyze the temporal dimension of social networks.

Readings:

- Jiang, F., Wang, J., Hindle, A., & Nascimento, M. A. (2013). Mining the Temporal Evolution of the Android Bug Reporting Community via Sliding Windows. CoRR, abs/1310.7.
- Fowler, J. H., & Christakis, N. a. (2008). Dynamic spread of happiness in a large social network: longitudinal analysis over 20 years in the Framingham Heart Study. BMJ, 337(dec04 2), a2338–a2338. http://doi.org/10.1136/bmj.a2338
- Zappa, P., & Lomi, A. (2015). The analysis of multilevel networks in organizations: Models and empirical tests. Organizational Research Methods, 18(3), 542–569. http://doi.org/10.1177/1094428115579225

#### Class 12: Crafting SNA Research, Ethics

Summary: We explore ethical issues with social network analysis in education. This exploration will include 1) traditional discussion of research ethics; 2) ethics in the context of "big", digital data; and 3) ethical use of SNA results in educational contexts.

Readings:

- Carolan, ch. 12, pp. 261-277
- Kadushin, C. (2005). Who benefits from network analysis: Ethics of social network research. Social Networks, 27(2), 139–153. http://doi.org/10.1016/j.socnet.2005.01.005
- Borgatti, S. P., & Molina, J. L. (2003). Ethical and Strategic Issues in Organizational Social Network Analysis. Journal of Applied Behavioral Science, 39(3), 337–349. http://doi.org/10.1177/0021886303258111
- Zwitter, A. (2014). Big Data ethics. Big Data & Society, 1(2), 1–6. http://doi.org/10.1177/2053951714559253

#### Class 13: Novel Approaches and Analytics

Summary: This week explore some "unusual" use of SNA and, in some cases, combination of SNA with other techniques.

Readings:

- Ryu, S., & Lombardi, D. (2015). Coding Classroom Interactions for Collective and Individual Engagement. Educational Psychologist, 50(1), 70–83. http://doi.org/10.1080/00461520.2014.1001891
- Oshima, J., Oshima, R., & Matsuzawa, Y. (2012). Knowledge Building Discourse Explorer: A social network analysis application for knowledge building discourse. Educational Technology Research and Development, 60(5), 903–921. article. http://doi.org/10.1007/s11423-012-9265-2
- Andrade, A. (2015). Using Situated-Action Networks to visualize complex learning. In O. Lindwall, P. Hakkinen, T. Koschmann, P. Tchounikine, & S. Ludvigsen (Eds.), Exploring the Material Conditions of Learning: The Computer Supported Collaborative Learning (CSCL) Conference 2015, Volume 1 (pp. 372–379). Gothenburg, Sweden: International Society of the Learning Sciences.
- Rapid Ethnographic Analysis
- SNAPP
- Epistemic Network Analysis


#### Class 14: Project Presentations

Summary: We celebrate a semester of learning and discovery by presenting our work. Food and beverages will be provided :).

Readings: None

## University Policies

See [this file](Syllabi-Attachment-Current-Graduate.pdf).
