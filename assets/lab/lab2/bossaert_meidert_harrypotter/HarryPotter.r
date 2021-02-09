################################################################################
##                          HarryPotter.r                                      #
## Harry Potter and RSiena                                                     #
##                                                                             #
## Data prepared by Goele Bossaert and Nadine Meidert.                         #
## Script prepared by Tom Snijders.                                            #
## Date: May 27, 2013                                                          #
## See Goele Bossaert and Nadine Meidert (2013).                               #
## 'We are only as strong as we are united, as weak as we are divided'.        #
## A dynamic analysis of the peer support networks in the Harry Potter books.  #
## Open Journal of Applied Sciences, in press.                                 #
## https://lirias.kuleuven.be/bitstream/123456789/389499/1/Bossaert+%26+Meidert+2013.pdf #
##                                                                             #
################################################################################

# Data available from the Siena website, 
# http://www.stats.ox.ac.uk/~snijders/siena/siena_datasets.htm

# Read data
book1 <- as.matrix(read.table("hpbook1.txt"))
book2 <- as.matrix(read.table("hpbook2.txt"))
book3 <- as.matrix(read.table("hpbook3.txt"))
book4 <- as.matrix(read.table("hpbook4.txt"))
book5 <- as.matrix(read.table("hpbook5.txt"))
book6 <- as.matrix(read.table("hpbook6.txt"))
hp.attributes <- as.matrix(read.table("hpattributes.txt", header=TRUE))

# Define basic data and model.
library(RSienaTest)
support <- sienaDependent(array(c(book1, book2, book3, book4, book5, book6),
                               dim=c(64, 64, 6)))
# Attributes:
schoolyear <- coCovar(hp.attributes[,2])
gender     <- coCovar(hp.attributes[,3])
house      <- coCovar(hp.attributes[,4])

# Composition change:
cc <- read.table("compositionchange.dat")
# This file really is for books 1 to 7, but we have no book 7 available here:
cc[cc==7] <- 6
write.table(cc,"compositionchange1to6.dat", row.names = FALSE,
            col.names = FALSE)
inAndOut <- sienaCompositionChangeFromFile("compositionchange1to6.dat")

Hogwarts  <- sienaDataCreate(support, schoolyear, gender, house, inAndOut)
Hogwarts
Rowling <- getEffects(Hogwarts)
print01Report(Hogwarts, Rowling, "Hogwarts")
# The report shows a large heterogeneity in degrees between waves.

# Model specification:
Rowling <- includeEffects(Rowling, transTies, transRecTrip)
Rowling <- includeEffects(Rowling, egoX, altX, simX, interaction1="gender")
Rowling <- includeEffects(Rowling, simX, interaction1="schoolyear")
Rowling <- includeEffects(Rowling, sameX, interaction1="house")

EstAlgorithm <- sienaAlgorithmCreate(projname="Hogwarts", cond=FALSE)
supportResults1 <- siena07(EstAlgorithm, data=Hogwarts, effects=Rowling, verbose=TRUE)

tt1 <- sienaTimeTest(supportResults1)
summary(tt1)

# The heterogeneity is excessive. Further analyze only from book 2 to book 4.
# Who are the actors (characters) in books 2-3-4?
use <- (cc[,1] <= 2) & (cc[,2] >= 4)
sum(use)

# Define data restricted to books 2-4.
schoolyear.24 <- coCovar(hp.attributes[use,2])
gender.24     <- coCovar(hp.attributes[use,3])
house.24      <- coCovar(hp.attributes[use,4])
# Make available a variable to represent time heterogeneity.
times <- cbind(rep(1,46), rep(2, 46), rep(3, 46))
time.24 <- varCovar(times)

support.24 <- sienaDependent(array(c(book2[use,use], book3[use,use], book4[use,use]),
                               dim=c(46, 46, 3)))
# And for the composition change:
cc.24 <- cc[use,]-1
cc.24[cc.24 < 1] <- 1
cc.24[cc.24 > 3] <- 3
range(cc.24)
# No composition change for books 2 to 4.

Hogwarts.24  <- sienaDataCreate(support.24, schoolyear.24, gender.24, house.24, time.24)
Hogwarts.24
Rowling.24 <- getEffects(Hogwarts.24)
print01Report(Hogwarts.24, Rowling.24, "Hogwarts.24")

# Model specification, and a progressive series of model fits.
Rowling.24 <- includeEffects(Rowling.24, transTies)
Rowling.24 <- includeEffects(Rowling.24, egoX, altX, simX, interaction1="gender.24")
Rowling.24 <- includeEffects(Rowling.24, simX, interaction1="schoolyear.24")
Rowling.24 <- includeEffects(Rowling.24, sameX, interaction1="house.24")
Rowling.24 <- includeEffects(Rowling.24, egoX, interaction1="time.24")

EstAlgorithm <- sienaAlgorithmCreate(projname="Hogwarts24")
supportResults1.24 <- siena07(EstAlgorithm, data=Hogwarts.24, effects=Rowling.24)
supportResults1.24
# In my case, convergence was not perfect: try again.
supportResults2.24 <- siena07(EstAlgorithm, data=Hogwarts.24, effects=Rowling.24,
						prevAns=supportResults1.24)
supportResults2.24

Rowling.24 <- includeEffects(Rowling.24, transTrip, cycle3)
(supportResults3.24 <- siena07(EstAlgorithm, data=Hogwarts.24, effects=Rowling.24,
						prevAns=supportResults2.24))

Rowling.24 <- includeEffects(Rowling.24, transRecTrip, include=FALSE)
Rowling.24 <- includeEffects(Rowling.24, sameX, interaction1="house.24", include=FALSE)
supportResults4.24 <- siena07(EstAlgorithm, data=Hogwarts.24, effects=Rowling.24,
						prevAns=supportResults3.24)
tt4.24 <- sienaTimeTest(supportResults4.24)
summary(tt4.24)

Rowling.24 <- includeInteraction(Rowling.24, simX, egoX,
						interaction1=c("schoolyear.24", "time.24"))
Rowling.24 <- includeInteraction(Rowling.24, simX, egoX,
						interaction1=c("gender.24", "time.24"))
supportResults5.24 <- siena07(EstAlgorithm, data=Hogwarts.24, effects=Rowling.24,
						prevAns=supportResults4.24)
tt5.24 <- sienaTimeTest(supportResults5.24)
summary(tt5.24)

Rowling.24 <- includeEffects(Rowling.24, egoX, altX, interaction1="gender.24",
								include=FALSE)
Rowling.24 <- includeEffects(Rowling.24, simX, interaction1="gender.24")
(supportResults6.24 <- siena07(EstAlgorithm, data=Hogwarts.24, effects=Rowling.24,
						prevAns=supportResults5.24))
tt6.24 <- sienaTimeTest(supportResults6.24)
summary(tt6.24)
# OK

# And now some goodness-of-fit testing.
# This requires RSiena(Test) version 1.1-231 or higher.
supportResults0.24 <- siena07(EstAlgorithm, data=Hogwarts.24, effects=Rowling.24,
                      returnDeps=TRUE)

(gof0.24id <- sienaGOF(supportResults0.24, verbose=TRUE, levls=(1:15),
					varName="support.24", IndegreeDistribution))
plot(gof0.24id)
# The outlying Harry Potter (indegrees 18, 15, 10) is not represented very well.

(gof0.24od <- sienaGOF(supportResults0.24, verbose=TRUE, varName="support.24",
				levls=(1:10), OutdegreeDistribution))
plot(gof0.24od)
# good.

library(sna)
# Take the GeodesicDistribution and the TriadCensus from the help page
# sienaGOF-auxiliary in RSiena(Test) version 1.1-231 or higher.

(gof0.24gd <- sienaGOF(supportResults0.24, verbose=TRUE,
					varName="support.24", GeodesicDistribution))
plot(gof0.24gd)

(gof0.24tc <- sienaGOF(supportResults0.24, verbose=TRUE,
					varName="support.24", TriadCensus))
plot(gof0.24tc, scale=TRUE, center=TRUE)

# Further possibilities: test if Harry Potter is different from the rest,
# by making a dummy variable for actor 25 = HJP and testing e.g. the altX effect.
# See above for the somewhat poor goodness of fit for the indegree distribution.