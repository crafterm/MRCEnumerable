## MRCEnumerable

### Description

MRCEnumerable is an category implementation of several useful methods from the Ruby Enumerable module, such
as collect, inject, select, detect, reject, etc, using Objective-C blocks, with a familiar syntax.

### Examples

An example of use of each extension method is available in the Tests directory, in the file named after
the extension method itself.

### In Progress

This project was initially started at Railscamp 8 in Perth, with further methods added over time, and currently extends NSArray, NSDictionary, and NSSet.
Feel free to get in contact if you have any suggestions or bug reports, etc. Pull requests with appropriate tests are most welcome.

### Installation

MRCEnumerable is available via cocoapods, or can be installed as a vendored git submodule as a project or workspace companion. Please ensure you have -ObjC included in your linker flags for the categories to be loaded, an example project is included.

### License

This project is released under the MIT license.

Marcus Crafter - crafterm@redartisan.com