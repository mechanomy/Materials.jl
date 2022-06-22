# Materials.jl
This package provides structures and functions relating to standard material properties as a Julia package.
Some conventional materials are included, but data from copyrighted databases are excluded, even if these are publicly accessible via a website.

Design-wise, we hope to replace much of the present functionality with queries to [Wikidata](https://en.wikipedia.org/wiki/Wikipedia:Wikidata#Access_from_Wikipedia) via [Wikidata.jl](https://juliapackages.com/p/wikidata), exporting to them the tasks of breadth, approximate accuracy, and database maintenance.
The hoped-for design would fetch basic materials on install, adding to these as requested by the user, but not querying WikiData on every run.
Precedents and pull-requests welcome.

This module is very much work-in-progress, at present developed only according to our needs.

See also our [Mechanics.jl](https://github.com/mechanomy/Mechanics.jl) package.

## Install
`use Pkg; Pkg.add("git@github.com:mechanomy/Materials.jl.git")`

## Use
Most functions are not exported, to avoid cluttering your namespace.
Instead, access by:
* `Materials.Torque`

* `Materials.ss302.E`

See [test*.jl](test/) and for basic usage of various functions and structures.

## Disclaimer
As stated in the [license](license.md), no warranty, certification, suitability for use, or other claim to accuracy is made on the contents of this module.
It remains the duty of any user to ensure that any analysis they perform is correct.

## Copyright
Copyright (c) 2022 Mechanomy LLC



