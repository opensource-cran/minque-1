\name{ncii}
\alias{ncii}
\docType{data}
\title{
  NC design II F1 data
}
\description{
  A genetic data set can be analyzed by ANOVA or MIQNUE approaches. 
}
\usage{data(ncii)}
\format{
  A data frame with 60 observations on the following 4 variables.
  \describe{
    \item{\code{Female}}{female parents}
    \item{\code{Male}}{male parents}
    \item{\code{Rep}}{replications}
    \item{\code{Yld}}{yield}
  }
}
\details{
  No other details available
}
\source{
 Not available
}
\references{
  To be added
}
\examples{
 library(minque)
 data(ncii)

 res=lmm(Yld~1|Female*Male+Rep,data=ncii)
 res[[1]]$Var
 res[[1]]$FixedEffect
 res[[1]]$RandomEffect

 res=lmm.jack(Yld~1|Female*Male+Rep,data=ncii,
    method=c("reml","minque"),JacNum=10,JacRep=1,ALPHA=0.05)
 res[[1]]$Var
 res[[1]]$PVar
 
 res[[1]]$FixedEffect
 res[[1]]$RandomEffect

}
\keyword{ datasets }
\keyword{ MINQUE }
\keyword{ REML }
\keyword{ variance components }
\keyword{ jackknife }
