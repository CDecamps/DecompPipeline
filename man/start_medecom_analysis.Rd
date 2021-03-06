% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/start_analysis.R
\name{start_medecom_analysis}
\alias{start_medecom_analysis}
\title{start_medecom_analysis}
\usage{
start_medecom_analysis(meth.data = NULL, rnb.set = NULL,
  WORK_DIR = getwd(), cg_groups, Ks, LAMBDA_GRID, SAMPLE_SUBSET = NULL,
  K_FIXED = NULL, WRITE_FILES = TRUE, factorviz.outputs = F,
  opt.method = "MeDeCom.cppTAfact", startT = NULL, startA = NULL,
  trueT = NULL, trueA = NULL, analysis.name = "MeDeComRun",
  folds = 10, cores = 1, itermax = 1000, ninit = 100,
  CLUSTER_SUBMIT = FALSE, CLUSTER_RDIR = NA, CLUSTER_HOSTLIST = "*",
  CLUSTER_MEMLIMIT = "5G", CLEANUP = FALSE, analysis_info = NULL,
  LAMBDA_GRID_TYPE = "standard", ANALYSIS_TOKEN = "customAnalysis")
}
\arguments{
\item{meth.data}{A \code{matrix} or \code{data.frame} containing methylation information. If NULL, methylation information needs to be provided
through \code{rnb.set}}

\item{rnb.set}{An object of type \code{\link{RnBSet-class}} containing methylation and sample meta information.}

\item{WORK_DIR}{Working directory for the analysis.}

\item{cg_groups}{List of CpG indices used for the analysis. Can be computed by \code{\link{prepare_CG_subsets}}.}

\item{Ks}{Vector of integers used as components in MeDeCom.}

\item{LAMBDA_GRID}{Vector of doubles representing the regularization parameter in MeDeCom.}

\item{SAMPLE_SUBSET}{Vector of indices of samples to be included in the analysis. If \code{NULL}, all samples are included.}

\item{K_FIXED}{Columns in the T matrix that should be fixed. If \code{NULL}, no columns are fixed.}

\item{WRITE_FILES}{Flag indicating if intermediate results are to be stored.}

\item{factorviz.outputs}{Flag indicating, if outputs should be stored to be compatible with FactorViz for data exploration}

\item{opt.method}{Optimization method to be used. Either MeDeCom.quadPen or MeDeCom.cppTAfact (default).}

\item{startT}{Inital matrix for T.}

\item{startA}{Initial matrix for A.}

\item{trueT}{True value for the T matrix.}

\item{trueA}{True value for the A matrix.}

\item{analysis.name}{Name of the analysis.}

\item{folds}{Integer representing the number of folds used in the analysis.}

\item{cores}{Integer representing the number of cores to be used in the analysis.}

\item{itermax}{Maximum number of iterations}

\item{ninit}{Number if initialtions.}

\item{CLUSTER_SUBMIT}{Flag indicating, if the jobs are to be submitted to a scientific compute cluster (only SGE supported).}

\item{CLUSTER_RDIR}{Path to an executable version of R.}

\item{CLUSTER_HOSTLIST}{Regular expression, on which basis hosts are selected in the cluster environment.}

\item{CLUSTER_MEMLIMIT}{the \code{memlimit} resource value of the cluster submission.}

\item{CLEANUP}{Flag indicating if temprary files are to be deleted.}

\item{analysis_info}{Information to be saved about the analysis. Just stored as info.}

\item{LAMBDA_GRID_TYPE}{String represent the lambda grid that was chosen. Just stored as info.}

\item{ANALYSIS_TOKEN}{String specifying the type of analysis that was conducted. Just stored as info.}
}
\value{
An object of type \code{\link{MeDeComSet}} containing the results of the MeDeCom experiment.
}
\description{
Wrapper for runMeDeCom, for data preprocessed through the DecompPipeline
}
