\name{lmm.simu.jack}
\alias{lmm.simu.jack}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
An R function for linear mixed model simulation.
}
\description{
An R function for linear mixed model simulation with integration two linear mixed model approaches (REML and MINQUE) and a jackknife technique.
}
\usage{
lmm.simu.jack(formula, method = NULL, JacNum = NULL, JacRep = NULL, ALPHA = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{formula}{
A linear mixed model formula.
}
  \item{method}{
The default linear mixed model approach is MINQUE. Users can choose both or one of two linear mixed model approaches, REML and MINQUE.
}
 \item{JacNum}{
The groups of jackknife to be used. The default number is 10.
}
  \item{JacRep}{
The times of jackknife process being repeated. The default is 1
}
  \item{ALPHA}{
The nomial alpha value being used for statistical tests. The default value is 0.05
}
}
\value{
Return a list of matrices each including mean estimated variance components, standard error, and power
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
Miller, R. G. 1974. The jackknife - a review. Biometrika, 61:1- 15.

Rao, C.R. 1971. Estimation of variance and covariance components-MINQUE theory. J Multiva Ana 1:19

Rao, C. R. and Kleffe, J. 1980. Estimation of variance components. In Handbook of Statistics. Vol. l: 1-40. Krishnaiah, P. R. ed. New York. North-Holland.

Searle, S. R., Casella, G. and McCulloch, C. E. 1992. Variance Components. John Wiley & Sons, Inc. New York.

Wu J (2012) GenMod: An R package for various agricultural data analyses.  ASA, CSSA, and SSSA 2012 International Annual Meetings, Cincinnati, OH, p 127

Wu J., Bondalapati K., Glover K., Berzonsky W., Jenkins J.N., McCarty J.C. 2013. Genetic analysis without replications: model evaluation and application in spring wheat. Euphytica. 190:447-458 

Zhu J. 1989. Estimation of Genetic Variance Components in the General Mixed Model. Ph.D. Dissertation, NC State University, Raleigh, U.S.A

}
\author{
Jixiang Wu <qgtools@gmail.com>
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\examples{
  library(minque)
  data(ncii)
  
  lmm.inf=lmm.check(Yld~1|Female*Male+Rep,data=ncii)

  lmm.inf  ##there are five variance components
  v=c(20,20,20,20,20) ##there are five variance components
  b=as.vector(100)    ##there is only population mean as fixed effect
  Y=lmm.simudata(Yld~1|Female*Male+Rep,data=ncii,v=v,b=b,SimuNum=50)
  Female=factor(ncii$Female)
  Male=factor(ncii$Male)
  Rep=factor(ncii$Rep)
  res=lmm.simu.jack(Y~1|Female*Male+Rep)
  res[[1]]

  #End

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ simulation }
\keyword{ MINQUE }
\keyword{ linear mixed model}
\keyword{ variance components }
\keyword{ jackknife }
\keyword{ REML }
