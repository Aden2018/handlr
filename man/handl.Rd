% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/handl.R
\name{handl}
\alias{handl}
\title{handl object}
\description{
handl object
}
\details{
A \code{handl} object is what's returned from the reader functions,
and what is passed to the writer functions. The \code{handl} object is a list,
but using the \code{print.handl} method makes it look something like:\preformatted{<handl>
  from: codemeta
  many: TRUE
  count: 2
  first 10
    id/doi: https://doi.org/10.5063\%2ff1m61h5x
    id/doi: https://doi.org/10.5063\%2ff1m61h5x
}

You can always \code{unclass()} the object to get the list itself.

The \code{handl} object follows \url{https://github.com/datacite/bolognese}, which
uses the Crosscite format as its internal representation. Note that we
don't currently supporting writing to or reading from Crosscite.

Details on each entry are stored in the named attributes:
\itemize{
\item from: the data type the citations come from
\item many: is there more than 1 citation?
\item count: number of citations
\item finally, some details of the first 10 are printed
}

If you have a \code{handl} object with 1 citation, it is a named list that
you can access with normal key indexing. If the result is length > 1,
the data is an unnamed list of named lists; the top level
list is unnamed, with each list within it being named.

Each named list should have the following components:
\itemize{
\item key: (string) a key for the citation, e.g., in a bibtex file
\item id: (string) an id for the work being referenced, often a DOI
\item type: (string) type of work
\item bibtex_type: (string) bibtex type
\item citeproc_type: (string) citeproc type
\item ris_type: (string) ris type
\item resource_type_general
\item additional_type: (string) additional type
\item doi: (string) DOI
\item b_url: (string) additional URL
\item title: (string) the title of the work
\item author: (list) authors, with each author a named list of
\itemize{
\item type: type, typically "Person"
\item name: full name
\item givenName: given (first) name
\item familyName: family (last) name
}
\item publisher: (string) the publisher name
\item is_part_of: (list) what the work is published in, or part of, a
named list with:
\itemize{
\item type: (string) the type of work
\item title: (string) title of the work, often a journal or edited book
\item issn: (string) the ISSN
}
\item date_published: (string)
\item volume: (string) the volume, if applicable
\item first_page: (string) the first page
\item last_page: (string) the last page
\item description: (string) description of the work, often an abstract
\item license: (string) license of the work, a named list
\item state: (string) the state of the list
}
}
