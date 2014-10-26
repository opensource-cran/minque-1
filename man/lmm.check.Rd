\name{lmm.check}
\alias{lmm.check}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
An R function to obtain information from a linear mixed model
}
\description{
Sometimes users may need run some simulations for a given data structure  and/or a model. This function will give users the information used for simulation. 
}
\usage{
lmm.check(formula, data = list())
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{formula}{
   A linear mixed model formula
}
  \item{data}{
  A data frame used for modelling. It can be default
}
}

\value{
Return the information that will be used to preset values for simulation
%%  If it is a LIST, use
 \item{comp1 }{Number of variance components including one for random error}
 \item{comp2 }{Names for all variance components not including the one for random error}
 \item{comp3 }{Levels of effects for each fixed effect component } 
 \item{comp4 }{Names of all fixed effects}
%% ...
}

\author{
Jixiang Wu <qgtools@gmail.com>
}


%% ~Make other sections like Warning with \section{Warning }{....} ~

\examples{
  
  library(minque)
  data(ncii)
  ncii$Female=factor(ncii$Female)
  lmm.inf=lmm.check(Yld~Female|Female*Male+Rep,data=ncii)
  lmm.inf
  
  #End


}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ linear mixed model }
\keyword{ model check}


