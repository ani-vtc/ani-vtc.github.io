% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/file67e8578c5ddc.R
\name{pick_polygon_filter_type}
\alias{pick_polygon_filter_type}
\title{\subsection{Dynamic Filtering (Shiny)}{

Method to use the most optimal filter (speed / gaps tradeoff) for different zoom levels. Simply use an if statement taking the zoom as input, selecting a different filter_type.
}}
\usage{
pick_polygon_filter_type(
  zoom_level,
  high_cutoff,
  mid_cutoff,
  low_cutoff,
  off_cutoff
)
}
\arguments{
\item{zoom_level}{Numeric. Current map zoom level}

\item{high_cutoff}{Numeric. Zoom threshold for greedy filter (typically 14)}

\item{mid_cutoff}{Numeric. Zoom threshold for central filter (typically 10)}

\item{low_cutoff}{Numeric. Zoom threshold for shy filter (typically 7)}

\item{off_cutoff}{Numeric. Minimum zoom threshold to show polygons (typically 0)}
}
\value{
Character. Filter type to use ("greedy", "central", "shy", or "hide")
}
\description{
Determines appropriate polygon filter strategy based on map zoom level
}
\details{
Select Polygon Filter Type Based on Zoom Level
}
\examples{
pick_polygon_filter_type(15, 14, 10, 7, 0)
}
