% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/file67e8578c5ddc.R
\name{read_polygons}
\alias{read_polygons}
\title{\subsection{Polygons Imports}{

In many cases, simply using read_sf() will work, but this function ensures we avoid many of the common issues with many polygon downloads. It's useful for leaflet foremost, but standardizing the CRS and dimension count also avoids many basic geoprocessing errors which can be annoying to troubleshoot.
}}
\usage{
read_polygons(data_file)
}
\arguments{
\item{data_file}{Either a file path or dataframe containing WKT geometry}
}
\value{
Standardized sf object with EPSG:4326 CRS and no Z dimension
}
\description{
Read and Standardize Polygon Data
}
\details{
\itemize{
\item Read polygons with sf package (which automatically interprets file type), or interpret the WKT into geometry, depending on input. read_sf() will generally be used for processing outside geodata, and WKT will generally be used from queries to our database.
\item Remove 3rd z-dimension if present (often default exports create an empty or zero value for this column; leaflet can't use polygons with it, even when empty)
\item Ensure we're using "Web CRS"
}
}
