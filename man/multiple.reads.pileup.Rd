% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/08_variant.call.VarScan2.R
\name{multiple.reads.pileup}
\alias{multiple.reads.pileup}
\title{multiple.reads.pileup}
\usage{
multiple.reads.pileup(ref.fa, normal.bam, tumor.bam, sample.name, output.dir, mapQ=1, run.cmd=TRUE, mc.cores=1)
}
\arguments{
\item{ref.fa}{Reference fasta file path}

\item{normal.bam}{Path to normal sample recalibration bam files}

\item{tumor.bam}{Path to tumor sample recalibration bam files as tumor-normal pair}

\item{sample.name}{A character vector for the sample names}

\item{output.dir}{Output directory}

\item{run.cmd}{Whether to execute the command line (default=TRUE)}

\item{mc.cores}{The number of cores to use. Must be at least one(default=1), and parallelization requires at least two cores.}

\item{mapQ}{A parameter value for mapQ in varscan2. Skip alignments with mapQ smaller than mapQ value (default:1)}
}
\description{
A wrapper function to run samtools (mpileup)
}
\details{
Generate VCF, BCF or pileup for one or multiple BAM files. Alignment records are grouped by sample (SM) identifiers in @RG header 
         lines. If sample identifiers are absent, each input file is regarded as one sample.
}
\seealso{
\url {http://www.htslib.org/doc/samtools.html}
}
