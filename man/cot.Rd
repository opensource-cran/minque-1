\name{cot}
\alias{cot}
\docType{data}
\title{
   Twenty four cotton genotypes with four agronomic traits
}
\description{
  Twentype four cotton genotypes were evaluated under two locations at the Mississippi State University Research Farm. 
}
\usage{data(cot)}
\format{
  A data frame with 288 observations on the following 7 variables.
  \describe{
    \item{\code{LOC}}{location}
    \item{\code{Geno}}{genotypes}
    \item{\code{REP}}{field blocks}
    \item{\code{BN}}{Boll number}
    \item{\code{BS}}{Boll size}
    \item{\code{LP}}{Lint percentage}
    \item{\code{LY}}{Lint yield}
  }
}
\details{
  No other details are needed
}
\source{
  Not available
}
\references{
  To be added
}
\examples{
##Sample R codes used to analyze the data set: cot
 library(minque)
 data(cot)
 names(cot)
 cot$Geno=factor(cot$Geno)
 cot$Loc=factor(cot$LOC)
 cot$Rep=factor(cot$REP)

 res=lmm(LY~1|Geno*Loc+Loc:Rep,data=cot)
 res[[1]]$Var
 res[[1]]$FixedEffect
 res[[1]]$RandomEffect

 res=lmm.jack(LY~1|Geno*Loc+Loc:Rep,data=cot,JacNum=10,JacRep=1,ALPHA=0.05)
 res[[1]]$Var
 res[[1]]$PVar
 res[[1]]$FixedEffect
 res[[1]]$RandomEffect

 

 ##End
}
\keyword{datasets}
\keyword{ cotton }
\keyword{ lint yield }
\keyword{ lint percentage}
\keyword{ boll number }
\keyword{ lint size }
\keyword{ linear mixed model }
\keyword{ minque }
\keyword{ resampling }
\keyword{ jackknife }

