### top.sls ###
base:        # Mandatory name of the base env, ignore it for now
  'web_minion':       # All minions targeted get the following sls files
    - webserver
  'piwik':
    - piwik
