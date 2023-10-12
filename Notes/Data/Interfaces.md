# Interfaces


## Solutions
#### An Interface with rule inputs cannot be saved as a site page
1. Replace the rule inputs with local variables
2. If you use this interface in other spots as well, wrap it into a new interface that creates the required local variables and passes it to the rule inputs. Then use the new interface in the site.