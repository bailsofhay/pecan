% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/download.Geostreams.R
\name{download.Geostreams}
\alias{download.Geostreams}
\title{Download Geostreams data from Clowder API}
\usage{
download.Geostreams(outfolder, sitename, start_date, end_date,
  url = "https://terraref.ncsa.illinois.edu/clowder/api/geostreams",
  key = NULL, user = NULL, pass = NULL, ...)
}
\arguments{
\item{outfolder}{directory in which to save json result. Will be created if necessary}

\item{sitename}{character. Must match a Geostreams sensor_name}

\item{start_date, end_date}{datetime}

\item{url}{base url for Clowder host}

\item{key, user, pass}{authentication info for Clowder host.}

\item{...}{other arguments passed as query parameters}
}
\description{
Download Geostreams data from Clowder API
}
\details{
Depending on the setup of your Clowder host, authentication may be by
  username/password, by API key, or skipped entirely. \code{download.Geostreams}
  looks first in its call arguments for an API key, then a username and password,
  then if these are NULL it looks in the user's home directory for a file named
  `~/.pecan.clowder.xml`, and finally if no keys or passwords are found there it
  attempts to connect unauthenticated.

If using `~/.pecan.clowder.xml`, it must be a valid PEcAn-formatted XML settings
 file and must contain a \code{<clowder>} key that specifies hostname, user, and
 password for your Clowder server:

\preformatted{
  <?xml version="1.0"?>
  <pecan>
    <clowder>
      <hostname>terraref.ncsa.illinois.edu</hostname>
      <user>yourname</user>
      <password>superSecretPassw0rd</password>
    </clowder>
  </pecan>
}
}
\examples{
\dontrun{
 download.Geostreams(outfolder = "~/output/dbfiles/Clowder_EF",
                     sitename = "UIUC Energy Farm - CEN",
                     start_date = "2016-01-01", end_date="2016-12-31",
                     key="verysecret")
}
}
\author{
Harsh Agrawal, Chris Black
}
