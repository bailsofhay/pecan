% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/downscale_ShortWave_to_hrly.R
\name{downscale_ShortWave_to_hrly}
\alias{downscale_ShortWave_to_hrly}
\title{Downscale shortwave to hourly}
\usage{
downscale_ShortWave_to_hrly(debiased, time0, time_end, lat, lon,
  output_tz = "UTC")
}
\arguments{
\item{debiased, }{data frame of variables}

\item{time0, }{first timestep}

\item{time_end, }{last time step}

\item{lat, }{lat of site}

\item{lon, }{long of site}

\item{output_tz, }{output timezone}
}
\value{
A dataframe of downscaled state variables
}
\description{
Downscale shortwave to hourly
}
\author{
Laura Puckett
}
