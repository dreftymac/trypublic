## -------------------------------------------------------------------
## begin_

##@ <xrbeg id="uu941fille1651710003aa" d="python.init">##
if(True):
  import json
  import pprint
  import requests
  pass
##@ <xrend>##uu941fille1651710003aa

##@ <xrbeg  id="uu525bustlint1685587772" dsc="processing"> ##@
if(True):
  vx3465duskiden            =   '1441415030604447745'
  dd7429linkinfo            =   dict()
  dd7429linkinfo['ttw_id']  =   vx3465duskiden
  dd7429linkinfo['ttw_url'] =   'https://api.twitter.com/2/tweets/{ttw_id}'.format(**dd7429linkinfo)
  pass
  mysecret_header           =   'Bearer AAAAAAAAAAAAAAAAAAAAAEfrcAEAAAAAjp5pAAAAAAAAAAAAAAAAAAAAAEfrcAEAAAAAjp5pAAAAAAAAAAAAAAAAAAAAAEfrcAEAAAAAjp5pAAAAAAAAAA'
  vxg0498headers            =   {'Authorization': mysecret_header}
  rgg                       =   requests.get(dd7429linkinfo['ttw_url'], headers=vxg0498headers,)
  vg20yaggoutt              =   json.loads(rgg.text)
  vxg5948brogoutt           =   vg20yaggoutt
  pass
  pprint.pprint(vg20yaggoutt)
  pass
##@ <xrend> ##@ uu525bustlint1685587772

