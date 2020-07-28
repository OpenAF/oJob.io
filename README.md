# oJob.io

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

  * CSV   - \_\_format=csv for csv like format.
  * YAML  - \_\_format=yaml for output in yaml.
  * JSON  - \_\_format=json for output in json.
  * MAP   - \_\_format=map for output in a map tabular human-readable form.
  * TABLE - \_\_format=table for output in a table human-readable form.
  * PM    - \_\_format=pm for output into a global variable __pm._list. 

### For map/object results
 
  * YAML  - \_\_format=yaml for output in yaml.
  * JSON  - \_\_format=json for output in json.
  * MAP   - \_\_format=map for output in a map tabular human-readable form.
  * PM    - \_\_format=pm for output into a global variable __pm._map. 

### For string results

  * HUMAN - \_\_format=human for output in the raw human-readable representation.
  * PM    - \_\_format=pm for output into a global variable __pm.result.

 
