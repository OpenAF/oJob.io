# oJob.io

![YAMLs](.github/yamls.svg)
![JSONs](.github/jsons.svg)
![SHs](.github/shs.svg)
![BATs](.github/bats.svg)

Service providing easy-to-access oJobs for daily routines.

## How to access

To access you just need to execute: 

````bash
ojob ojob.io
````

Then you can start writing a category or name and/or hit tab for auto-complete for the available jobs under that site.
If the corresponding ojob has parameters they will be asked. Aftewards it will provide you the full command-line to execute the same command without the interactive interface and proceed to execute the selected ojob with the provided arguments.

### Command-line examples

Hello world:
````bash
ojob ojob.io/hello/world
````

Host latency:
````bash
ojob ojob.io/net/latency host=ojob.io port=443
````

## How to control the output

For jobs following the standard output practice you can add an extra argument, "\_\_format", to force the output to be presented in a different way:

### For list/array results

  * CSV        - \_\_format=csv for csv like format.
  * YAML       - \_\_format=yaml for output in yaml.
  * JSON       - \_\_format=json for output in json.
  * CJSON      - \_\_format=cjson for colored output in json.
  * NDJSON     - \_\_format=ndjson for [ndjson](http://ndjson.org) output.
  * SLON       - \_\_format=slon for [slon](https://github.com/nmaguiar/slon) output.
  * CSLON      - \_\_format=cslon for colored [slon](https://github.com/nmaguiar/slon) output.
  * PRETTYJSON - \_\_format=pretty json for formatted json output.
  * MAP        - \_\_format=map for output in a map tabular human-readable form.
  * TABLE      - \_\_format=table for output in a table human-readable form.
  * CTABLE     - \_\_format=ctable for output in a table with row colors and word-wrap.
  * STABLE     - \_\_format=stable for output in a table with row dividers and word-wrap.
  * TREE       - \_\_format=tree for output in tree ascii format.
  * HTML       - \_\_format=html for output in HTML format.
  * PM         - \_\_format=pm for output into a global variable __pm._list. 

### For map/object results
 
  * YAML       - \_\_format=yaml for output in yaml.
  * JSON       - \_\_format=json for output in json.
  * CJSON      - \_\_format=cjson for colored output in json.
  * SLON       - \_\_format=slone for [slon](https://github.com/nmaguiar/slon) output.
  * CSLON      - \_\_format=cslon for colored [slon](https://github.com/nmaguiar/slon) output.
  * PRETTYJSON - \_\_format=pretty json for formatted json output.
  * MAP        - \_\_format=map for output in a map tabular human-readable form.
  * XML        - \_\_format=xml for output in XML format.
  * TREE       - \_\_format=tree for output in tree ascii format.
  * HTML       - \_\_format=html for output in HTML format.
  * PM         - \_\_format=pm for output into a global variable __pm._map. 

### For string results

  * TEXT  - \_\_format=Text for output in string text representation (if possible).
  * MD    - \_\_format=md for output with markdown parsing (if possible).
  * HUMAN - \_\_format=human for output in the raw human-readable representation.
  * PM    - \_\_format=pm for output into a global variable __pm.result.

 
