## Examples

### Simple example

This is the simplest example where the values from _data.yaml_ can be used on _template.hbs_ to produce the intended output.

__data.yaml__

````yaml
firstName: James
lastName : Bond
````

__template.hbs__

````handlebars
My name is {{lastName}}, {{firstName}} {{lastName}}.
````

__Executing:__

````bash
$ ojob ojob.io/template/apply data=data.yaml template=template.hbs

My name is Bond, James Bond.
````

### Array example

Providing arrays in _data.yaml_ allows the generation of several lines with specific conditions if necessary.

__data.yaml__

````yaml
tables:
- schemaName: SCHEMA_A
  tableName : TABLE_A
  update    : true
  key       : ABC
  value     : 123

- schemaName: SCHEMA_B
  tableName : TABLE_B
  delete    : true
  key       : DEF

- schemaName: SCHEMA_C
  tableName : TABLE_C
  update    : true
  key       : XYZ
  value     : 456
````

__template.hbs__

````handlebars
{{#each tables}}
{{#if update}}
UPDATE "{{schemaName}}"."{{tableName}}" SET VALUE = '{{value}}' WHERE KEY = '{{key}}';
{{else if delete}}
DELETE FROM "{{schemaName}}"."{{tableName}}" WHERE KEY = '{{key}}';
{{/if}}
{{/each}}
````

__Executing:__

````bash
$ ojob ojob.io/template/apply data=data.yaml template=template.hbs

UPDATE "SCHEMA_A"."TABLE_A" SET VALUE = '123' WHERE KEY = 'ABC';
DELETE FROM "SCHEMA_B"."TABLE_B" WHERE KEY = 'DEF';
UPDATE "SCHEMA_C"."TABLE_C" SET VALUE = '456' WHERE KEY = 'XYZ';
````

### Providing the template on the data file

__data.yaml__

````yaml
_template: template.hbs

firstName: James
lastName : Bond
````

__template.hbs__

````handlebars
My name is {{lastName}}, {{firstName}} {{lastName}}.
````

__Executing:__

````bash
$ ojob ojob.io/template/apply data=data.yaml

My name is Bond, James Bond.
````

### Providing a template and file per entry

For situations where it's easier to simply provide the template and file output per entry.

__data.yaml__

````yaml
- _template: windows.hbs
  _file    : hi.bat
  commands : &ECHOS |
    echo Hi
    echo ... world!

- _template: unix.hbs
  _file    : hi.sh
  commands : *ECHOS

- _template: windows.hbs
  _file    : bye.bat
  commands : &BYES |
    echo Bye
    echo world...

- _template: unix.hbs
  _file    : bye.sh
  commands : *BYES
````

__windows.hbs__

````handlebars
@echo off
{{{commands}}}
````

__unix.hbs__

````handlebars
#!/bin/sh
{{{commands}}}
````

__Executing:__

````bash
$ ojob ojob.io/template/apply data=data.yaml

Writing result to 'bye.sh'...
Writing result to 'hi.bat'...
Writing result to 'hi.sh'...
Writing result to 'bye.bat'...
````

### Advanced example with helpers

Since all the owFormat helpers are available they can be use in templates:

__data.yaml__

````yaml
_template: &TEMPLATE |
  Original number  : {{number}}
  Number in base 36: {{owFormat_toBase36 number}}

data:
- number   : 123456789
- number   : 987654321
- number   : 111111111
````

__Executing:__

````bash
$ ojob ojob.io/template/apply data=data.yaml

Original number  : 987654321
Number in base 36: gc0uy9

Original number  : 111111111
Number in base 36: 1u5hvr

Original number  : 123456789
Number in base 36: 21i3v9
````