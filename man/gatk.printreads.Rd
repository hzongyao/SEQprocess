% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/06_variant.call.recalibration.R
\name{gatk.printreads}
\alias{gatk.printreads}
\title{gatk.printreads}
\usage{
gatk.printreads(fn.realign.bam, output.dir, sample.name, ref.fa, fns.grp, unsafe=FALSE, run.cmd=TRUE, mc.cores=1)
}
\arguments{
\item{fns.bam}{Path to input BAM files}

\item{fns.grp}{GATK report file created by BaseRecalibrator}

\item{output.dir}{Output directory}

\item{sample.name}{A character vector for the sample names}

\item{ref.fa}{Reference fasta file}

\item{unsafe}{A parameter value for -U ALLOW_N_CIGAR_READS in GATK. This parameter must be TRUE in RNA-seq data.}

\item{run.cmd}{Whether to execute the command line (default=TRUE)}

\item{mc.cores}{The number of cores to use. Must be at least one(default=1), and parallelization requires at least two cores.}
}
\value{
GATK PrintReads returns a Base quality score recalibrated BAM files (eg. recal.bam)
}
\description{
A wrapper function to run GATK (PrintReads)
}
\details{
Writes a new file using reads from SAM format file (SAM/BAM/CRAM) that pass criteria. Improves the accuracy of variant 
         calling based on Base Quality Score Recalibration.
}
\references{
The Genome Analysis Toolkit: a MapReduce framework for analyzing next-generation DNA sequencing data.
}
\seealso{
\url{https://software.broadinstitute.org/gatk/}
}
