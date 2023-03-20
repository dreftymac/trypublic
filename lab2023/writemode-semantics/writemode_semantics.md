# writemode_semantics

<!---
##@ <beg-file_info>
##@ document_metadata:
##@   - caption: "writemode_semantics"
##@     dmid: "uu079acidonyx1678319220xvf"
##@     vim:  tw=180
##@     date: created="2023-03-08T15:47:00"
##@     last: lastmod="2023-03-08T15:52:01"
##@     tags:       tags
##@     people:
##@         - pple: people
##@     author:     created="author"
##@     lastupdate: "lastupdate"
##@     namespace:
##@         - nams: namespace
##@     desc: |
##@         ## Overview
##@         * writemode_semantics
##@     seealso: |
##@         ## See also
##@         * capt="writemode_semantics" ;; href="wwhref" ;; tags="wwtags" ;; id="dmid://uu079acidonyx1678319220xva"
##@         * capt="snippets_old003aa" ;; href="c:/sm/docs/mytrybits/m/trymyclip/myclip.snippets_old003aa/all.yaml?find=uu907classflespv" ;; tags="__wwtags__" ;; id="dmid://uu151fledplug1678319599"
##@     seeinstead: |
##@         * seeinstead
##@ <end-file_info>
--->

## Overview
* writemode_semantics

### Item: writemode overview
<!--- id="dmid://uu222lenddish1678319452xhmd" --->

* create    ;; touch   ;; create if_not already_exists, ignore if already_exists
* replace   ;; replace ;; create if_not already_exists, overwrite if already_exists
* append    ;; append  ;; create if_not already_exists, append if already_exists


### Item: writemode table
<!--- id="dmid://uu820cozypond1678319460xhmd" --->

* writemode table formatted as JSON

```

[
 {
   "op_cap": "create",
   "op_fac": "touch",
   "op_text": "create if_not already_exists, ignore if already_exists"
 },
 {
   "op_cap": "replace",
   "op_fac": "replace",
   "op_text": "create if_not already_exists, overwrite if already_exists"
 },
 {
   "op_cap": "append",
   "op_fac": "append",
   "op_text": "create if_not already_exists, append if already_exists"
 }
]

```

