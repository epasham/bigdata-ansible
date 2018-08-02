# Prerequsite

According to Apache Atlas [pom.xml](https://github.com/apache/atlas/blob/master/pom.xml#L1806) you should use below environment.
 
- Java 8 (Update 151) or above is required.
- Maven 3.5.0 or above is required .

# Usage

## Deploy Apache Atlas

    # ... in the atlas-prd directory
    $ sh download_and_build_binary.sh
    $ sh make_atlas_binary.sh
    $ sh rsync_atlas.sh