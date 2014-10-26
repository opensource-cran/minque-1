\name{maize}
\alias{maize}
\docType{data}
\title{
Maize variety trial 
}
\description{
Maize variety trial with two years and multi-locations in China.
}
\usage{data(maize)}
\format{
  A data frame with 260 observations (rows) on the following 4 variables (columns).
  \describe{
    \item{\code{Cultivar}}{ cultivar names}
    \item{\code{Year}}{testing year}
    \item{\code{Location}}{testing locations}
    \item{\code{Yld}}{maize yield}
  }
}
\details{
No other details available
}
\source{
Fan X.M., Kang M.S., Chen H.M., Zhang Y.D., Tan J., Xu C.X. (2007) Yield stability of maize hybrids evaluated in multi-environment trials in Yunnan, China. Agronomy Journal.99:220-228
}
\references{
Fan X.M., Kang M.S., Chen H.M., Zhang Y.D., Tan J., Xu C.X. (2007) Yield stability of maize hybrids evaluated in multi-environment trials in Yunnan, China. Agronomy Journal.99:220-228
}
\examples{
 
 library(minque)
 data(maize)
 #names(maize)

 res=lmm(Yld~1|Cultivar*Year+Cultivar*Location+Year*Location,data=maize)
 res[[1]]$Var
 res[[1]]$FixedEffect
 res[[1]]$RandomEffect

 res=lmm.jack(Yld~1|Cultivar*Year+Cultivar*Location+Year*Location,
    data=maize,JacNum=10,JacRep=1,ALPHA=0.05)
 res[[1]]$Var
 res[[1]]$PVar
 res[[1]]$FixedEffect
 res[[1]]$RandomEffect
 
 ##End

}
\keyword{datasets}
\keyword{maize}
\keyword{MINQUE}


