\name{brate}
\alias{brate}
\docType{data}
\title{
Cotton boll retention rate data
}
\description{
 This data set contains boll retention of 10 cotton plants for 5 genotypes and 13 nodes. This data set can be analyzed in many ways: factorial factor design (genotype and position) or as split-plot design. For example, this data set can be analyzed by user-defined model as shown in the example.
}
\usage{data(brate)}
\format{
  A data frame with 338 observations on the following 5 variables.
  \describe{
    \item{\code{Year}}{year of 2009}
    \item{\code{Geno}}{genotypes from 1 to 5}
    \item{\code{Pos}}{plant nodes from 5 to 17}
    \item{\code{Rep}}{field blocks from 1 to 4}
    \item{\code{Brate}}{mean boll retention for the first position over 10 plants}
  }
}
\details{
No other details are needed
}
\source{
 No references or URLs available.
}
\references{
 No reference available
}
\examples{

 library(minque)

 data(brate)
 head(brate)
 brate$Geno=factor(brate$Geno)
 brate$Pos=factor(brate$Pos)
 brate$Rep=factor(brate$Rep)
 
 res=lmm(Brate~1|Geno*Pos+Rep,data=brate)
 res[[1]]$Var
 res[[1]]$FixedEffect
 res[[1]]$RandomEffect

 res=lmm.jack(Brate~1|Geno*Pos+Rep,data=brate,JacNum=10,JacRep=1,ALPHA=0.05)
 res[[1]]$Var
 res[[1]]$PVar
 res[[1]]$FixedEffect
 res[[1]]$RandomEffect
 ## end
}
\keyword{ datasets }
\keyword{ cotton }
\keyword{ boll retention }
\keyword{ linear mixed model }
\keyword{ MINQUE }
\keyword{ REML }
\keyword{ resampling }
\keyword{ jackknife }
