#
# GROUPS39:  
#
# This file contains package meta data. For additional information on
# the meaning and correct usage of these fields, please consult the
# manual of the "Example" package as well as the comments in its
# PackageInfo.g file.
#
SetPackageInfo( rec(

PackageName := "GRPS39",
Subtitle := "Library of the groups of order 19683",
Version := "0.1",
Date := "31/07/2022", # dd/mm/yyyy format
License := "Artistic-2.0",

Persons := [
  rec(
    FirstNames := "David",
    LastName := "Burrell",
    WWWHome := "https://davidburrell.github.io/",
    Email := "davidburrell@ufl.edu",
    IsAuthor := true,
    IsMaintainer := true,
    #PostalAddress := TODO,
    #Place := TODO,
    Institution := "University of Florida",
  ),
],

#SourceRepository := rec( Type := "TODO", URL := "URL" ),
#IssueTrackerURL := "TODO",
# PackageWWWHome := "https://TODO/",
# PackageInfoURL := Concatenation( ~.PackageWWWHome, "PackageInfo.g" ),
# README_URL     := Concatenation( ~.PackageWWWHome, "README.md" ),
# ArchiveURL     := Concatenation( ~.PackageWWWHome,
                                 # "/", ~.PackageName, "-", ~.Version ),

GithubUser := "davidburrell",
GithubRepository := ~.PackageName,
GithubWWW := Concatenation("https://github.com/", ~.GithubUser, "/", ~.GithubRepository),

PackageWWWHome := Concatenation("https://", ~.GithubUser, ".github.io/", ~.GithubRepository, "/"),
README_URL     := Concatenation( ~.PackageWWWHome, "README.md" ),
PackageInfoURL := Concatenation( ~.PackageWWWHome, "PackageInfo.g" ),
# The following assumes you are using the Github releases system. If not, adjust
# it accordingly.
ArchiveURL     := Concatenation(~.GithubWWW,
                    "/archive/refs/tags/v.", ~.Version),
ArchiveFormats := ".tar.gz .zip",
# ArchiveFormats := ".tar.gz",

##  Status information. Currently the following cases are recognized:
##    "accepted"      for successfully refereed packages
##    "submitted"     for packages submitted for the refereeing
##    "deposited"     for packages for which the GAP developers agreed
##                    to distribute them with the core GAP system
##    "dev"           for development versions of packages
##    "other"         for all other packages
##
Status := "dev",

AbstractHTML   :=  "",

PackageDoc := rec(
  BookName  := "GROUPS39",
  ArchiveURLSubset := ["doc"],
  HTMLStart := "doc/chap0.html",
  PDFFile   := "doc/manual.pdf",
  SixFile   := "doc/manual.six",
  LongTitle := " ",
),

Dependencies := rec(
  GAP := ">= 4.11",
  NeededOtherPackages := [["sglppow","2.1"]],
  SuggestedOtherPackages := [ ],
  ExternalConditions := [ ],
),

AvailabilityTest := ReturnTrue,

TestFile := "tst/testall.g",

#Keywords := [ "TODO" ],

));


