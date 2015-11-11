# Start elasticsearch on localhost to prevent outside services from connecting until initialization is done
elasticsearch -d -Des.network.host=localhost

until bash create_index.sh > /dev/null 2>&1 ; do sleep 1 ; done

kill $(ps aux | grep java | grep -v grep | awk '{print $2}')

# Restart elasticsearch on 0.0.0.0 to allow external connections
exec elasticsearch -Des.network.host=localhost
