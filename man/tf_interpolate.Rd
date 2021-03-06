% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/interpolate.R
\name{tf_interpolate}
\alias{tf_interpolate}
\alias{tf_interpolate.tfb}
\alias{tf_interpolate.tfd}
\title{Re-evaluate \code{tf}-objects on new evaluation grid.}
\usage{
tf_interpolate(object, arg, ...)

\method{tf_interpolate}{tfb}(object, arg, ...)

\method{tf_interpolate}{tfd}(object, arg, ...)
}
\arguments{
\item{object}{an object inheriting from \code{tf}}

\item{arg}{a vector of argument values on which to evaluate the functions in
\code{object}}

\item{...}{additional arguments handed over to \code{tfd} or \code{tfb}, for the
construction of the returned object}
}
\value{
a \code{tfd} or \code{tfb} object on the new grid given by \code{arg}
}
\description{
Change the internal representation of a \code{tf}-object so that it
uses a different grid of evaluation points (\code{arg}). Useful for
\itemize{
\item thinning out dense grids to make data smaller
\item filling out sparse grids to make derivatives/integrals and locating extrema or zero crossings more
accurate (.. if the interpolation works well)
\item making irregular functional data into more regular data.
}

This is really just syntactic sugar for \verb{tf<d|b>(object, arg = arg)}.
To reliably get irregular data onto a regular, common grid,
you'll be better off doing FPCA-based imputation or other model-based
approaches.
}
\examples{
# thinning out a very densely observed tfd
(dense <- tf_rgp(10, arg = seq(0, 1, l = 1001)))
(less_dense <- tf_interpolate(dense, arg = seq(0, 1, l = 101)))

# filling out sparse data (use a suitable evaluator -function!)
sparse <- tf_rgp(10, arg = seq(0, 5, l = 21))
plot(sparse)
tfd(sparse, evaluator= tf_approx_spline) \%>\%   #change eval. for better interpolation
  tf_interpolate(arg = seq(0, 5, l = 201)) \%>\%
  lines(col = 2)

set.seed(1860)
(sparse_irregular <- tf_rgp(5) \%>\%  tf_sparsify(.5) \%>\% tf_jiggle())
tf_interpolate(sparse_irregular, arg = seq(0, 1, l = 51))

}
