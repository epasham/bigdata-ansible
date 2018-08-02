# Usage

## Deploy Elasticsearch

    # ... in the mpalyes directory
    $ sh make_es_binary.sh
    $ sh rsync_es.sh
    $ sh change_jvm_option.sh

## Deploy Kibana
    
    # ... in the mpalyes directory
    $ sh make_kibana_binary.sh
    $ sh rsync_kibana.sh
    
## Rolling Restart/Upgrade

    # ... in the mpalyes directory
    $ sh rolling_restart.sh