# readme
<!---
### <beg-file_info>
### document_metadata:
###   - caption: "caption"
###     dmid: "uu697xthornstanswiyx"
###     date: created="2021-10-14T10:46:23"
###     last: lastmod="2021-10-14T10:46:23"
###     tags:       jira,markdown,annoyance,workaround,annoyancebuster
###     people:
###         - __people__
###     author:     created="__author__"
###     filetype:   "__filetype__"
###     lastupdate: "__lastupdate__"
###     namespace:
###         - nams: markdown/annoyance
###         - nams: jira/annoyance
###     desc: |
###         ## Overview
###         * jira markdown chokes if the document starts with a comment
###     linktop:
###         -
###     seealso: |
###         ## See also
###         * __seealso__
###     seeinstead: |
###         * __seeinstead__
### <end-file_info>
--->

## Overview
<!--- id="dmid://uu641trass1634233x03xlink" --->

* JIRA markdown chokes if the document starts with a comment
* WORKAROUND: insert a header-level-one element at the very top of the document
    * change BEFORE into AFTER as shown below in the Example

## Example
<!--- id="dmid://uu354trats1634233x03xlink" --->

### Example BEFORE

```
<!---
this is my sample markdown document
--->

# Greeting
* Hello World!


```

### Example AFTER

```
# document.md
<!---
this is my sample markdown document
--->

## Greeting
* Hello World!


```


