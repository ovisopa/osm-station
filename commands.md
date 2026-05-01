    1  ip addr
    2  ls /etc/netplan
    3  sudo nano /etc/netplan/50-cloud-init.yaml
    4  ip addr
    5  sudo netplan try
    6  sudo nano /etc/netplan/50-cloud-init.yaml
    7  sudo netplan try
    8  sudo netplan apply
    9  reboot
   10  sudo nano /etc/netplan/50-cloud-init.yaml
   11  sudo netplan try
   12  exit
   13  htop
   14  btop
   15  mkdir -p ~/osm-station/{bin,configs/{planetiler,tilemaker,martin},data,scripts}
   16  cd ~/osm-station
   17  cd ..
   18  ls
   19  cd ..
   20  ls
   21  cd ..
   22  ls
   23  cd home
   24  ls
   25  cd ovisopa
   26  ls
   27  cd osm-station
   28  ls
   29  git init
   30  git branch -m main
   31  git status
   32  git branch -m main
   33  git remote add origin https://github.com/ovisopa/osm-station.git
   34  git push -u origin main
   35  git add .
   36  git commit -m "Initial setup: Added folder structure, planetiler, and scripts"
   37  git config --global user.email "ovisopa@sibiul.ro"
   38  git config --global user.name "ovisopa"
   39  git commit -m "Initial setup: Added folder structure, planetiler, and scripts"
   40  nano ~/osm-station/scripts/generate_map.sh
   41  chmod +x ~/osm-station/scripts/generate_map.sh
   42  nano ~/osm-station/configs/martin/config.yaml
   43  nano ~/osm-station/README.md
   44  cd ~/osm-station
   45  git add .
   46  git status
   47  git commit -m "Added generation scripts, martin config, and readme"
   48  git push -u origin main
   49  cd ~/osm-station/bin
   50  wget https://github.com/maplibre/martin/releases/latest/download/martin-x86_64-unknown-linux-musl.tar.gz
   51  tar -xvf martin-x86_64-unknown-linux-musl.tar.gz
   52  rm martin-x86_64-unknown-linux-musl.tar.gz
   53  chmod +x martin
   54  cd ..
   55  git status
   56  git add .
   57  git status
   58  nano ~/osm-station/.gitignore
   59  git add .
   60  git status
   61  git reset
   62  git status
   63  git add .
   64  git status
   65  git commit -m "Fixed gitignore and added config files"
   66  git push
   67  git config --global credential.helper store
   68  git push
   69  wget -P ~/osm-station/data https://download.geofabrik.de/europe/romania/transylvania-latest.osm.pbf
   70  nano /osm-station/scripts/generate_map.sh
   71  nano ~/osm-station/scripts/generate_map.sh
   72  ~/osm-station/scripts/generate_map.sh transylvania 24g
   73  sudo apt update
   74  sudo apt install -y openjdk-21-jre-headless
   75  java -version
   76  ~/osm-station/scripts/generate_map.sh transylvania 24g
   77  ls
   78  cd bin
   79  ls
   80  cd ..
   81  wget https://github.com/onthegomap/planetiler/releases/latest/download/planetiler.jar -O bin/planetiler.jar
   82  ls -lh bin/
   83  ~/osm-station/scripts/generate_map.sh transylvania 24g
   84  ~/osm-station/scripts/generate_map.sh transylvania 24g --download
   85  nano ~/osm-station/scripts/generate_map.sh
   86  ~/osm-station/scripts/generate_map.sh transylvania 24g --download
   87  rm ~/osm-station/data/transylvania-latest.osm.pbf
   88  cd ~/osm-station/data
   89  ls
   90  wget -c https://download.geofabrik.de/europe/romania/transylvania-latest.osm.pbf
   91  ls -liah
   92  rm ~/osm-station/data/transylvania-latest.osm.pbf
   93  wget --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64)"   https://download.geofabrik.de/europe/romania/transylvania-latest.osm.pbf
   94  rm transylvania-latest.osm.pbf
   95  wget --user-agent="Mozilla/5.0" https://download.geofabrik.de/europe/romania-latest.osm.pbf
   96  cd ~/osm-station
   97  ./scripts/generate_map.sh romania 24g
   98  sudo apt update && sudo apt install -y btop htop
   99  ./bin/martin --config configs/martin/config.yaml
  100  nano ~/osm-station/configs/martin/config.yaml
  101  ./bin/martin --config configs/martin/config.yaml
  102  ls -lh ~/osm-station/data/romania.pmtiles
  103  head -c 7 ~/osm-station/data/romania.pmtiles
  104  sudo ss -tulpn | grep :3000
  105  sudo nano /etc/systemd/system/martin.service
  106  sudo systemctl daemon-reload
  107  sudo systemctl enable martin
  108  sudo systemctl start martin
  109  sudo systemctl status martin
  110  sudo ss -tulpn | grep :3000
  111  mkdir -p ~/osm-station/styles
  112  mkdir -p ~/osm-station/sprites
  113  mkdir -p ~/osm-station/fonts
  114  nano ~/osm-station/configs/martin/config.yaml
  115  sudo systemctl restart martin
  116  cd ~/osm-station/fonts
  117  wget https://github.com/openmaptiles/fonts/releases/download/v2.0/fonts.zip
  118  unzip fonts.zip
  119  rm fonts.zip
  120  wget https://github.com/openmaptiles/fonts/releases/download/v2.0/v2.0.zip
  121  unzip v2.0.zip
  122  rm v2.0.zip
  123  cd ~/osm-station/sprites
  124  wget https://raw.githubusercontent.com/maputnik/osm-liberty/gh-pages/sprites/osm-liberty.json
  125  wget https://raw.githubusercontent.com/maputnik/osm-liberty/gh-pages/sprites/osm-liberty.png
  126  wget https://raw.githubusercontent.com/maputnik/osm-liberty/gh-pages/sprites/osm-liberty@2x.json
  127  wget https://raw.githubusercontent.com/maputnik/osm-liberty/gh-pages/sprites/osm-liberty@2x.png
  128  cd ~/osm-station/data/elevation/
  129  unzip "*.zip"
  130  sudo apt install unzip
  131  unzip "*.zip"
  132  rm drive-download-20260221T165320Z-1-001.zip
  133  ls
  134  unzip "*.zip"
  135  rm ~/osm-station/data/elevation/*.zip
  136  ls
  137  gdalbuildvrt romania_elevation.vrt *.hgt
  138  sudo apt install gdal-bin
  139  gdalbuildvrt romania_elevation.vrt *.hgt
  140  gdalinfo romania_elevation.vrt
  141  gdal_contour -a elev -i 10 N45E024.hgt sibiu_test_contours.json
  142  ls -lh
  143  sudo apt update
  144  sudo apt install -y build-essential libsqlite3-dev zlib1g-dev git
  145  cd ~
  146  git clone https://github.com/felt/tippecanoe.git
  147  cd tippecanoe
  148  make -j$(nproc)
  149  sudo make install
  150  cd ~/osm-station/data/elevation
  151  tippecanoe -o ~/osm-station/data/sibiu_contours.pmtiles     --maximum-zoom=14 --minimum-zoom=10     --layer=contours --force     sibiu_test_contours.json
  152  sudo systemctl restart martin
  153  cd ~/osm-station/fonts
  154  wget https://github.com/openmaptiles/fonts/releases/download/v2.0/fonts.zip
  155  wget https://github.com/openmaptiles/fonts/releases/download/v2.0/v2.0.zip
  156  ls
  157  unzip v2.0.zip
  158  ls
  159  sudo systemctl restart martin
  160  cd ~/osm-station/fonts
  161  find . -type d -name "* *" -exec sh -c 'mv "$1" "${1// /-}"' _ {} \;
  162  cd ~/osm-station/fonts
  163  for f in *\ *; do mv "$f" "${f// /-}"; done
  164  ls
  165  sudo systemctl restart martin
  166  ls ~/osm-station/fonts/Noto-Sans-Bold/256-511.pbf
  167  nano ~/osm-station/configs/martin/config.yaml
  168  sudo systemctl restart martin
  169  cd Noto-Sans-Bold
  170  ls
  171  nano ~/osm-station/configs/martin/config.yaml
  172  sudo systemctl restart martin
  173  sudo systemctl stop martin
  174  sudo pkill -9 martin
  175  sudo systemctl start martin
  176  nano ~/osm-station/configs/martin/config.yaml
  177  sudo systemctl restart martin
  178  chmod -R 755 /home/ovisopa/osm-station/fonts
  179  sudo systemctl restart martin
  180  cd ..
  181  mv ~/osm-station/fonts ~/osm-station/assets
  182  nano ~/osm-station/configs/martin/config.yaml
  183  sudo systemctl restart martin
  184  sudo apt update
  185  sudo apt install nginx
  186  sudo ln -s /home/ovisopa/osm-station/assets /var/www/html/fonts
  187  sudo systemctl restart martin
  188  sudo nano /etc/nginx/sites-available/default
  189  sudo systemctl restart nginx
  190  sudo rm /var/www/html/fonts
  191  sudo ln -s /home/ovisopa/osm-station/assets /var/www/html/fonts
  192  chmod o+x /home/ovisopa
  193  chmod o+x /home/ovisopa/osm-station
  194  chmod -R 755 /home/ovisopa/osm-station/assets
  195  ls -l /var/www/html/fonts/Roboto-Regular/0-255.pbf
  196  sudo systemctl restart nginx
  197  cd ~/osm-station/assets
  198  rm v2.0.zip
  199  cd ~/osm-station/data/elevation/
  200  gdal_contour -a elev -i 10 romania_elevation.vrt romania_full.json
  201  gdal_contour -a elev -i 50 romania_elevation.vrt romania_full.json
  202  tippecanoe -o ~/osm-station/data/romania_full_contours.pmtiles     --maximum-zoom=14 --minimum-zoom=9     --layer=contours --force --simplify-only-low-zooms     romania_full.json
  203  sudo systemctl restart martin
  204  nano ~/osm-station/configs/martin/config.yaml
  205  sudo systemctl restart martin
  206  nano ~/osm-station/configs/martin/config.yaml
  207  ls -l /home/ovisopa/osm-station/data/romania_full_contours.pmtiles
  208  sudo systemctl restart martin
  209  nano ~/osm-station/configs/martin/config.yaml
  210  sudo systemctl restart martin
  211  nano ~/osm-station/configs/martin/config.yaml
  212  sudo systemctl restart martin
  213  /usr/bin/martin --config /home/ovisopa/osm-station/configs/martin/config.yaml
  214  ls -lh /home/ovisopa/osm-station/data/romania_full_contours.pmtiles
  215  npm install -g spreet
  216  cd ~
  217  wget https://github.com/pka/spreet/releases/download/v0.11.0/spreet-x86_64-unknown-linux-gnu.tar.gz
  218  apt list --upgradable
  219  btop
  220  npm install -g spreet
  221  curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
  222  sudo apt install -y nodejs
  223  node -v
  224  npm -v
  225  sudo npm install -g spreet
  226  git clone https://github.com/flother/spreet.git
  227  cd spreet
  228  npm install
  229  ls -la ~/spreet
  230  nano  README.md
  231  rm -rf ~/spreet
  232  ls -la ~/spreet
  233  ls -la ~/spreetcd ~
  234  ls
  235  cd ~
  236  ls
  237  wget https://github.com/flother/spreet/releases/download/v0.13.1/spreet-x86_64-unknown-linux-musl.tar.gz
  238  tar -xzf spreet-x86_64-unknown-linux-musl.tar.gz
  239  ls
  240  sudo mv spreet /usr/local/bin/
  241  sudo chmod +x /usr/local/bin/spreet
  242  spreet --help
  243  ls
  244  cd osm-station 
  245  ls
  246  mkdir icons
  247  git clone https://github.com/openmaptiles/openmaptiles.git
  248  cd openmaptiles
  249  ls
  250  cd style
  251  ls
  252  cd icons
  253  ls
  254  mkdir -p /osm-station/icons
  255  cp /osm-station/openmaptiles/style/icons/*.svg /osm-station/icons/
  256  cd ..
  257  cd..
  258  cd ,,
  259  cd ..
  260  ls
  261  cd icons
  262  ls
  263  cp /osm-station/openmaptiles/style/icons/*.svg /osm-station/icons/
  264  ls -R /osm-station/openmaptiles/style/icons
  265  ls -R ~/osm-station/openmaptiles/style/icons
  266  cp ~/osm-station/openmaptiles/style/icons/*.svg ~/osm-station/icons/
  267  ls
  268  cd ..
  269  ls
  270  mkdir -p ~/osm-station/icons/openmaptiles
  271  mkdir -p ~/osm-station/icons/temaki
  272  cp ~/osm-station/openmaptiles/style/icons/* ~/osm-station/icons/openmaptiles/
  273  cd icons
  274  ls
  275  cd openmaptiles
  276  ls
  277  rm ~/osm-station/icons/*.svg
  278  ls
  279  cd ..
  280  ls
  281  cd ..
  282  git clone https://github.com/rapideditor/temaki.git ~/temaki
  283  cp ~/temaki/icons/*.svg ~/osm-station/icons/temaki/
  284  cd icons
  285  cd temaki
  286  ls
  287  mkdir -p ~/osm-station/icons/_build
  288  cp ~/osm-station/icons/openmaptiles/*.svg ~/osm-station/icons/_build/
  289  cp ~/osm-station/icons/temaki/*.svg ~/osm-station/icons/_build/
  290  cd ..
  291  spreet ~/osm-station/icons/_build ~/osm-station/sprites/sprite.png
  292  spreet --retina ~/osm-station/icons/_build ~/osm-station/sprites/sprite@2x.png
  293  nano ~/osm-station/scripts/build-sprites.sh
  294  chmod +x ~/osm-station/scripts/build-sprites.sh
  295  ls
  296  cd ..
  297  cd ~/osm-station/sprites/
  298  ls
  299  mv sprite.png.png sprite.png
  300  mv sprite.png.json sprite.json
  301  mv sprite@2x.png.png sprite@2x.png
  302  mv sprite@2x.png.json sprite@2x.json
  303  ls
  304  nano ~/osm-station/configs/martin/config.yaml
  305  ls
  306  nano ~/osm-station/configs/martin/config.yaml
  307  cd ..
  308  curl http://localhost:3000/sprites/osm-liberty.png --head
  309  curl -I http://localhost:3000/sprites/sprite.png
  310  nano ~/osm-station/configs/martin/config.yaml
  311  cd assets
  312  ls
  313  cd .. 
  314  ls
  315  sudo nano /etc/nginx/sites-available/default
  316  sudo ln -s /home/ovisopa/osm-station/sprites /var/www/html/sprites
  317  sudo nano /etc/nginx/sites-available/default
  318  sudo nginx -t
  319  sudo systemctl restart nginx
  320  chmod +x /home/ovisopa
  321  chmod +x /home/ovisopa/osm-station
  322  chmod -R 755 /home/ovisopa/osm-station/sprites
  323  chmod -R 755 /home/ovisopa/osm-station/assets
  324  sudo systemctl restart nginx
  325  sudo systemctl restart martin
  326  cd /sprites
  327  ls
  328  cd sprites
  329  ls
  330  nano ~/osm-station/configs/martin/config.yaml
  331  nano /home/ovisopa/osm-station/sprites/index.html
  332  sudo systemctl restart nginx
  333  cd ..
  334  cd osm_data
  335  ls
  336  cd data
  337  ls
  338  nano ~/osm-station/configs/martin/config.yaml
  339  nano ~/osm-station/scripts/generate_map.sh
  340  cd ..
  341  ls
  342  rm -rf openmaptiles
  343  ls
  344  cd icons
  345  ls
  346  git status
  347  cd ..
  348  git add .
  349  git commit -m "Created Sprites from two icon sets: openmaptiles and temaki"
  350  git push origin main
  351  ls
  352  cd osm-station 
  353  ls
  354  cd scripts
  355  ls
  356  nano  generate_map.sh
  357  exit
  358  # Add cloudflare gpg key
  359  sudo mkdir -p --mode=0755 /usr/share/keyrings
  360  curl -fsSL https://pkg.cloudflare.com/cloudflare-public-v2.gpg | sudo tee /usr/share/keyrings/cloudflare-public-v2.gpg >/dev/null
  361  # Add this repo to your apt repositories
  362  echo 'deb [signed-by=/usr/share/keyrings/cloudflare-public-v2.gpg] https://pkg.cloudflare.com/cloudflared any main' | sudo tee /etc/apt/sources.list.d/cloudflared.list
  363  # install cloudflared
  364  sudo apt-get update && sudo apt-get install cloudflared
  365  sudo cloudflared service install eyJhIjoiMDdlMTg5OTNhYWE4ZmU5MGQ5ZjBhZWU0MzZjNjFjY2UiLCJ0IjoiZjgyOWFmMzktY2YxOS00YmFmLWFjM2ItOGNiZWY2NjhlYjJjIiwicyI6Ik9EQmhNV1V5WVRJdFlXVXhZUzAwTUdVM0xUa3pOR1l0TW1VM1ptTTJaVGxrWm1OaSJ9
  366  btop
  367  ls
  368  cd osm-station
  369  ls
  370  cd data
  371  ls
  372  sudo nano /etc/update-motd.d/99-ram-info
  373  sudo chmod +x /etc/update-motd.d/99-ram-info
  374  sudo run-parts /etc/update-motd.d/
  375  cd /etc/update-motd.d/
  376  ls
  377  sudo nano 50-landscape-sysinfo
  378  shutdown
  379  sudo shutdown
  380  btop
  381  ls
  382  cd osm-station
  383  ls
  384  cd scripts
  385  ls
  386  nano generate_map.sh
  387  nano ~/osm-station/scripts/generate_topo_map.sh
  388  nano ~/osm-station/topo_config.properties
  389  chmod +x ~/osm-station/scripts/generate_topo_map.sh
  390  ./~/osm-station/scripts/generate_topo_map.sh romania 48g
  391  cd ..
  392  ./~/osm-station/scripts/generate_topo_map.sh romania 48g
  393  cd ..
  394  ./~/osm-station/scripts/generate_topo_map.sh romania 48g
  395  ~/osm-station/scripts/generate_topo_map.sh romania 48g
  396  ls /osm-station/data
  397  ls ~/osm-station/data
  398  nano ~/osm-station/scripts/generate_topo_map.sh
  399  ~/osm-station/scripts/generate_topo_map.sh romania 48g
  400  nano ~/osm-station/topo_schema.yml
  401  nano ~/osm-station/scripts/generate_topo_final.sh
  402  ~/osm-station/scripts/generate_topo_final.sh romania 48g
  403  chmod +x ~/osm-station/scripts/generate_topo_final.sh
  404  ~/osm-station/scripts/generate_topo_final.sh romania 48g
  405  nano ~/osm-station/scripts/generate_topo_final.sh
  406  nano ~/osm-station/topo_schema.yml
  407  ~/osm-station/scripts/generate_topo_final.sh romania 48g
  408  ~/osm-station/scripts/generate_topo_final.sh romania 48gls
  409  ls
  410  cd osm-station
  411  ls
  412  cd configs
  413  ls
  414  cd martin
  415  ls
  416  nano config.yaml
  417  sudo systemctl restart martin
  418  nano ~/osm-station/scripts/generate_topo_final.sh
  419  ~/osm-station/scripts/generate_topo_final.sh romania 48gls
  420  ~/osm-station/scripts/generate_topo_final.sh romania 48g
  421  sudo systemctl restart martin
  422  nano /etc/nginx/nginx.conf
  423  nano /var/log/nginx/access.log
  424  ls /etc/nginx/sites-enabled/
  425  cd default
  426  ls /etc/nginx/sites-enabled/default
  427  cd 
  428  /etc/nginx/sites-enabled/default
  429  sudo nano /etc/nginx/sites-enabled/default
  430  cd /home/ovisopa/osm-station/assets/
  431  ls
  432  ln -s "Open-Sans-Regular" "Open Sans Regular"
  433  ln -s "Open-Sans-Bold" "Open Sans Bold"
  434  ln -s "Roboto-Regular" "Roboto Regular"
  435  ln -s "Roboto-Bold" "Roboto Bold"
  436  # Link the "Combined" stack name that caused the 404 in your log
  437  ln -s "Open-Sans-Regular" "Open Sans Regular,Arial Unicode MS Regular"
  438  nano ~/osm-station/scripts/generate_topo_final.sh
  439  ~/osm-station/scripts/generate_topo_final.sh romania 48g
  440  sudo systemctl restart martin
  441  cd ..
  442  ls
  443  cd configs
  444  nano topo.yml
  445  nano ~/osm-station/scripts/generate_topo_final.sh
  446  nano topo.yml
  447  ~/osm-station/scripts/generate_topo_final.sh romania 48g
  448  sudo systemctl restart martin
  449  nano planetiler.properties
  450  cd ..
  451  java -Xmx48g -jar bin/planetiler.jar   --osm-path=data/romania-latest.osm.pbf   --output=data/romania_final.pmtiles   --force   --extra-name-tags=natural,man_made,waterway,amenity   --include-tags=true   --keep-tags=natural,man_made,waterway,amenity   --arguments-file=configs/planetiler.properties
  452  sudo systemctl restart martin
  453  cd /osm-station
  454  cd ~/osm-station
  455  git add .
  456  git commit -m "Tested a few more scripts for planetiler.jar"
  457  git push -u origin main
  458  sudo apt update
  459  sudo apt install -y openjdk-21-jdk maven git
  460  ls
  461  cd osm-station
  462  ls
  463  mkdir -p ~/osm-station/src
  464  cd ~/osm-station/src
  465  git clone https://github.com/onthegomap/planetiler-openmaptiles.git
  466  rm -rf planetiler-openmaptiles
  467  git clone https://github.com/openmaptiles/planetiler-openmaptiles.git
  468  cd planetiler-openmaptiles
  469  nano src/main/java/com/openmaptiles/layers/Transportation.java
  470  ls
  471  nano /src/main/java/com/openmaptiles/layers/Transportation.java
  472  cd src
  473  ls
  474  cd main
  475  ls
  476  cd java
  477  ls
  478  cd openmaptiles
  479  ls
  480  cd layers
  481  ls
  482  nano ~/osm-station/src/planetiler-openmaptiles/src/main/java/org/openmaptiles/layers/Transportation.java
  483  cd ~/osm-station/src/planetiler-openmaptiles
  484  ls
  485  mvn clean package -DskipTests
  486  cd ..
  487  ls
  488  cd scripts
  489  ls
  490  nano generate_topo_final.sh
  491  cd osm-station/data
  492  ls
  493  ls -liah
  494  nano ~/osm-station/scripts/generate_topo_final.sh
  495  ~/osm-station/scripts/generate_topo_final.sh
  496  nano ~/osm-station/configs/martin/config.yaml
  497  sudo systemctl restart martin
  498  cd ~/osm-station/src/planetiler-openmaptiles
  499  mvn clean package -DskipTests
  500  nano ~/osm-station/scripts/generate_topo_final.sh
  501  java -Xmx48g -jar /home/ovisopa/osm-station/src/planetiler-openmaptiles/target/planetiler-openmaptiles-3.16.1-SNAPSHOT-with-deps.jar   --osm-path=/home/ovisopa/osm-station/data/romania-latest.osm.pbf   --output=/home/ovisopa/osm-station/data/romania_custom_v2.pmtiles   --force   --transportation-z13-paths=true
  502  cd ..
  503  java -Xmx48g -jar /home/ovisopa/osm-station/src/planetiler-openmaptiles/target/planetiler-openmaptiles-3.16.1-SNAPSHOT-with-deps.jar   --osm-path=/home/ovisopa/osm-station/data/romania-latest.osm.pbf   --output=/home/ovisopa/osm-station/data/romania_custom_v2.pmtiles   --force   --transportation-z13-paths=true
  504  nano ~/osm-station/configs/martin/config.yaml
  505  sudo systemctl restart martin
  506  pmtiles inspect /home/ovisopa/osm-station/data/romania_custom_v2.pmtiles
  507  cd ~/osm-station/src/planetiler-openmaptiles
  508  mvn clean package -DskipTests
  509  cd ~/osm-station/data
  510  ls
  511  ls -liah
  512  java -Xmx48g -jar /home/ovisopa/osm-station/src/planetiler-openmaptiles/target/planetiler-openmaptiles-3.16.1-SNAPSHOT-with-deps.jar   --osm-path=/home/ovisopa/osm-station/data/romania-latest.osm.pbf   --output=/home/ovisopa/osm-station/data/romania_custom_v2.pmtiles   --force   --transportation-z13-paths=true
  513  cd ..
  514  java -Xmx48g -jar /home/ovisopa/osm-station/src/planetiler-openmaptiles/target/planetiler-openmaptiles-3.16.1-SNAPSHOT-with-deps.jar   --osm-path=/home/ovisopa/osm-station/data/romania-latest.osm.pbf   --output=/home/ovisopa/osm-station/data/romania_custom_v2.pmtiles   --force   --transportation-z13-paths=true
  515  sudo systemctl restart martin
  516  cd ~/osm-station/src/planetiler-openmaptiles
  517  mvn clean package -DskipTests
  518  cd ~/osm-station/
  519  java -Xmx48g -jar /home/ovisopa/osm-station/src/planetiler-openmaptiles/target/planetiler-openmaptiles-3.16.1-SNAPSHOT-with-deps.jar   --osm-path=/home/ovisopa/osm-station/data/romania-latest.osm.pbf   --output=/home/ovisopa/osm-station/data/romania_custom_v2.pmtiles   --force   --transportation-z13-paths=true
  520  sudo systemctl restart martin
  521  cd data
  522  ls -liah
  523  nano ~/osm-station/configs/martin/config.yaml
  524  sudo systemctl restart martin
  525  cd ..
  526  ls
  527  cd src
  528  ls
  529  cd 
  530  planetiler-openmaptiles
  531  cd planetiler-openmaptiles
  532  ls -liah
  533  cd osm-station
  534  cd src
  535  ls
  536  cd planetiler-openmaptiles
  537  ls
  538  cd src
  539  ls
  540  cd main
  541  ls
  542  cd java
  543  ls
  544  cd org
  545  ls
  546  cd openmaptiles
  547  ls
  548  grep -n "spring\|natural\|OsmPoiPoint" ~/osm-station/src/planetiler-openmaptiles/src/main/java/org/openmaptiles/generated/Tables.java | head -60
  549  ls ~/osm-station/src/planetiler-openmaptiles/src/main/java/org/openmaptiles/generated/
  550  sed -n '714,800p' ~/osm-station/src/planetiler-openmaptiles/src/main/java/org/openmaptiles/generated/Tables.java
  551  cd ..
  552  mvn clean package -DskipTests
  553  cd ..
  554  java -Xmx48g -jar /home/ovisopa/osm-station/src/planetiler-openmaptiles/target/planetiler-openmaptiles-3.16.1-SNAPSHOT-with-deps.jar   --osm-path=/home/ovisopa/osm-station/data/romania-latest.osm.pbf   --output=/home/ovisopa/osm-station/data/romania_custom_v2.pmtiles   --force   --transportation-z13-paths=true
  555  sudo systemctl restart martin
  556  ls ~/osm-station/src/planetiler-openmaptiles/src/main/java/org/openmaptiles/layers/
  557  grep -n "OsmHighwayLinestring" ~/osm-station/src/planetiler-openmaptiles/src/main/java/org/openmaptiles/generated/Tables.java
  558  sed -n 'Xp,Yp' ~/osm-station/src/planetiler-openmaptiles/src/main/java/org/openmaptiles/generated/Tables.java
  559  sed -n '340,385p' ~/osm-station/src/planetiler-openmaptiles/src/main/java/org/openmaptiles/generated/Tables.java
  560  grep -n "power\|mappingKey\|man_made\|pier" ~/osm-station/src/planetiler-openmaptiles/src/main/java/org/openmaptiles/layers/Transportation.java | head -30
  561  sed -n '570,640p' ~/osm-station/src/planetiler-openmaptiles/src/main/java/org/openmaptiles/layers/Transportation.java
  562  sed -n '520,575p' ~/osm-station/src/planetiler-openmaptiles/src/main/java/org/openmaptiles/layers/Transportation.java
  563  sed -n '460,525p' ~/osm-station/src/planetiler-openmaptiles/src/main/java/org/openmaptiles/layers/Transportation.java
  564  cd ~/osm-station/src/planetiler-openmaptiles && mvn clean package -DskipTests
  565  nano ~/osm-station/scripts/generate-tiles.sh
  566  chmod +x ~/osm-station/scripts/generate-tiles.sh
  567  ~/osm-station/scripts/generate-tiles.sh
  568  find ~/osm-station -name "*.shp.zip" -o -name "lake_centerline*" -o -name "water-polygons*" -o -name "natural_earth*" 2>/dev/null
  569  nano ~/osm-station/scripts/generate-tiles.sh
  570  ~/osm-station/scripts/generate-tiles.sh
  571  sudo systemctl restart martin
  572  nano ~/osm-station/scripts/generate-tiles.sh
  573  ~/osm-station/scripts/generate-tiles.sh
  574  grep -r "sprite" ~/osm-station/*.json ~/osm-station/styles/ 2>/dev/null | head -5
  575  ~/osm-station/scripts/generate-tiles.sh
  576  cd ~/osm-station/src/planetiler-openmaptiles && mvn clean package -DskipTests -U
  577  grep -n "powerTag\|power" ~/osm-station/src/planetiler-openmaptiles/src/main/java/org/openmaptiles/layers/Poi.java | head -20
  578  grep -n "power.*tower\|tower.*pole" ~/osm-station/src/planetiler-openmaptiles/src/main/java/org/openmaptiles/generated/Tables.java
  579  sed -n '306,320p' ~/osm-station/src/planetiler-openmaptiles/src/main/java/org/openmaptiles/layers/Poi.java
  580  ls -lh ~/osm-station/data/romania_custom_v2.pmtiles
  581  ~/osm-station/scripts/generate-tiles.sh
  582  ls -lh ~/osm-station/data/romania_custom_v2.pmtiles
  583  grep -i "diamond\|rhombus" ~/osm-station/styles/sprite*.json 2>/dev/null || grep -i "diamond\|rhombus" ~/osm-station/*.json 2>/dev/null
  584  cd  ~/osm-station/scripts
  585  ls
  586  build-sprites.sh
  587  .build-sprites.sh
  588  nano build-sprites.sh
  589  spreet ~/osm-station/icons/_build ~/osm-station/sprites/sprite.png
  590  sudo systemctl restart martin
  591  cd  ~/osm-station/scripts
  592  ls
  593  nano build-sprites.sh 
  594  spreet --version
  595  ./build-sprites.sh
  596  sudo systemctl restart nginx
  597  bash -x ~/osm-station/build-sprites.sh
  598  bash -x ~/osm-station/scripts/build-sprites.sh
  599  nano build-sprites.sh 
  600  ./build-sprites.sh
  601  bash -x ~/osm-station/scripts/build-sprites.sh
  602  nano build-sprites.sh 
  603  ./build-sprites.sh
  604  ls
  605  ls -liah
  606  nano generate-tiles.sh
  607  ~/osm-station/scripts/generate-tiles.sh
  608  ./build-sprites.sh
  609  ~/osm-station/scripts/generate-tiles.sh
  610  cd ..
  611  ls
  612  cd icons
  613  l
  614  cd ~/osm-station/icons/osmc/
  615  cd ~/osm-station/src/
  616  git clone https://github.com/mueschel/OsmcToSVG.git
  617  cd OsmcToSVG
  618  sudo apt update
  619  sudo apt install libxml-libxml-perl libsvg-perl
  620  ls
  621  nano generate_all_osmc_icons.sh
  622  chmod +x generate_all_osmc_icons.sh
  623  ./generate_all_osmc_icons.sh
  624  head -n 5 ../../icons/osmc/red_white_red_triangle.svg
  625  sudo apt update
  626  sudo apt install libjson-xs-perl
  627  QUERY_STRING="osmc=red:white:red_triangle&size=40&out=svg" perl generate.pl
  628  nano generate_all_osmc_icons.sh
  629  perl generate.pl "osmc=red:white:red_triangle" "size=40" "out=svg"
  630  nano generate_all_osmc_icons.sh
  631  rm ../../icons/osmc/*.svg
  632  ./generate_all_osmc_icons.sh
  633  head -n 1 ../../icons/osmc/red_white_red_triangle.svg
  634  cd ..
  635  cd scripts
  636  ls
  637  nano build-sprites.sh
  638  nano ~/osm-station/src/OsmcToSVG/generate_all_osmc_icons.sh
  639  cd ..
  640  cd src
  641  cd OsmcToSVG
  642  ./generate_all_osmc_icons.sh
  643  cd ..
  644  cd scripts
  645  ./build-sprites.sh
  646  .~/osm-station/src/OsmcToSVG/generate_all_osmc_icons.sh
  647  cd ..
  648  cd src
  649  cd OsmcToSVG
  650  ./generate_all_osmc_icons.sh
  651  java -version
  652  cd ~/osm-station/
  653  cd scripts
  654  .build-sprites.sh
  655  ./build-sprites.sh
  656  ls
  657  nano generate-tiles.sh
  658  ./generate-tiles.sh
  659  ./build-sprites.sh
  660  ./generate-tiles.sh
  661  sudo systemctl restart ngix
  662  sudo systemctl restart nginx
  663  cd ~/osm-station/
  664  git status
  665  git add .
  666  # Remove the internal git folders
  667  rm -rf src/OsmcToSVG/.git
  668  rm -rf src/planetiler-openmaptiles/.git
  669  # Remove the "empty" references Git just created
  670  git rm --cached src/OsmcToSVG
  671  git rm --cached src/planetiler-openmaptiles
  672  # Now add them as regular folders
  673  git add src/OsmcToSVG
  674  git add src/planetiler-openmaptiles
  675  git add .
  676  git commit -m "Merged sub-repositories into main project for full tracking"
  677  git push origin main
  678  sudo apt update && sudo apt install inkscape
  679  cd ~/osm-station
  680  cd icons
  681  ls
  682  cd openmaptiles
  683  mkdir -p resized
  684  for file in *.svg; do   echo "Processing $file...";   inkscape "$file" --export-width=24 --export-height=24 --export-filename="resized/$file"; done
  685  cd ..
  686  sudo apt install librsvg2-bin
  687  ls
  688  cd openmaptiles
  689  mkdir -p resized
  690  for file in *.svg; do   echo "Scaling $file...";   rsvg-convert -w 24 -h 24 -f svg "$file" -o "resized/$file"; done
  691  cd ..
  692  cd scripts
  693  ls
  694  nano build-sprites.sh
  695  cd ..
  696  cd icons
  697  cd openmaptiles
  698  mkdir -p resized
  699  for file in *.svg; do   echo "Scaling $file...";   rsvg-convert -w 24 -h 24 -f svg "$file" -o "resized/$file"; done
  700  cd ..
  701  ls\
  702  ls
  703  cd temaki
  704  mkdir -p resized
  705  for file in *.svg; do   echo "Scaling $file...";   rsvg-convert -w 24 -h 24 -f svg "$file" -o "resized/$file"; done
  706  nano ~/osm-station/scripts/build-sprites.sh
  707  cd ~/osm-station/scripts ./build-sprites.sh
  708  ./build-sprites.sh
  709  cd ~/osm-station/icons/openmaptiles
  710  mkdir -p resized
  711  for file in *.svg; do   echo "Scaling $file...";    rsvg-convert -w 20 -h 20 -f svg "$file" -o "resized/$file";  done
  712  cd ~/osm-station/scripts
  713  ./build-sprites.sh
  714  ls
  715  nano generate-tiles.sh
  716  ./generate-tiles.sh
  717  sudo tail -f /var/log/nginx/access.log
  718  curl -v "http://localhost/sprites/index.html?w=2"
  719  nano /var/log/nginx/access.log
  720  curl -v http://localhost:3000
  721  curl -v http://localhost:80
  722  nano /etc/cloudflared/config.yml
  723  btop
  724  cd ~/osm-station/scripts
  725  ls
  726  nano build-sprites.sh 
  727  ./build-sprites.sh
  728  sudo systemctl restart ngix
  729  sudo systemctl restart nginx
  730  ./build-sprites.sh
  731  cd ~/osm-station/scripts
  732  ls
  733  nano  ~/osm-station/scripts/generate-tiles.sh
  734  ./generate-tiles.sh
  735  cd  ~/osm-station/scripts/
  736  ls
  737  ./build-sprites.sh
  738  sudo systemctl restart nginx
  739  sudo systemctl restart martin
  740  ./build-sprites.sh
  741  cd  ~/osm-station/scripts/
  742  ./build-sprites.sh
  743  cd  ~/osm-station/scripts/
  744  ./generate-tiles.sh
  745  cd  ~/osm-station/scripts/
  746  ls
  747  nano generate-tiles.sh
  748  nano generate-tile-europe.sh
  749  ls
  750  mv generate-tiles.sh generate-tiles-romania.sh
  751  mv generate-tile-europe.sh generate-tiles-europe.sh
  752  chmod +x generate-tiles-europe.sh
  753  ls
  754  cd ..
  755  cd data
  756  ls
  757  mc
  758  sudo apt install mc
  759  mc
  760  nohup wget -c https://download.geofabrik.de/europe-latest.osm.pbf > download-europe.log 2>&1 &
  761  tail -f download-europe.log
  762  btop
  763  cd  ~/osm-station/data
  764  ls
  765  wget https://download.geofabrik.de/europe-latest.osm.pbf.md5
  766  md5sum -c europe-latest.osm.pbf.md5
  767  nano europe-latest.osm.pbf.md5
  768  ls -liah
  769  echo "$(awk '{print $1}' europe-latest.osm.pbf.md5)  europe-latest.osm.pbf" | md5sum -c -
  770  wget -c https://download.geofabrik.de/europe-latest.osm.pbf
  771  echo "$(awk '{print $1}' europe-latest.osm.pbf.md5)  europe-latest.osm.pbf" | md5sum -c -
  772  wget -N https://download.geofabrik.de/europe-latest.osm.pbf
  773  rm europe-latest.osm.pbf.md5
  774  wget https://download.geofabrik.de/europe-latest.osm.pbf.md5
  775  echo "$(awk '{print $1}' europe-latest.osm.pbf.md5)  europe-latest.osm.pbf" | md5sum -c -
  776  nano europe-latest.osm.pbf.md5
  777  mv europe-latest.osm.pbf europe-260309.osm.pbf
  778  wget -c https://download.geofabrik.de/europe-260309.osm.pbf
  779  md5sum -c europe-latest.osm.pbf.md5
  780  rsync --progress -v rsync://ftp5.gwdg.de/pub/misc/openstreetmap/download.geofabrik.de/europe-260309.osm.pbf .
  781  rm europe-260309.osm.pbf europe-latest.osm.pbf
  782  sudo apt update && sudo apt install aria2 -y
  783  aria2c -x 16 -s 16 -k 1M https://download.geofabrik.de/europe-latest.osm.pbf
  784  wget https://download.geofabrik.de/europe-latest.osm.pbf.md5
  785  echo "$(awk '{print $1}' europe-latest.osm.pbf.md5)  europe-latest.osm.pbf" | md5sum -c -
  786  cd ..
  787  cd  scripts
  788  ls
  789  nano generate-tiles-europe.sh
  790  sudo apt install screen -y
  791  screen -S europe_build
  792  btop
  793  screen -r europe_build
  794  sudo tail -f /var/log/apache2/access.log | grep tile
  795  sudo journalctl -u cloudflared -f
  796  sudo tail -f /var/log/nginx/access.log
  797  cd  ~/osm-station/data
  798  ls -liah
  799  wget https://download.geofabrik.de/europe/romania-latest.osm.pbf
  800  ls -liah
  801  cd ..
  802  cd scripts
  803  ls -liah
  804  nano generate-tiles-romania.sh
  805  exit
  806  cd  ~/osm-station/
  807  ls
  808  cd configs
  809  ls
  810  cd martin
  811  ls
  812  nano config.yaml
  813  sudo systemctl restart martin
  814  npm install -g tileserver-gl
  815  sudo npm install -g tileserver-gl
  816  sudo  npm install -g npm@11.11.1
  817  npm fund
  818  mkdir -p ~/osm-station/configs/tileserver
  819  nano ~/osm-station/configs/tileserver/config.json
  820  cd ~/osm-station/
  821  ls
  822  cd data
  823  ls
  824  ls -liah
  825  nano ~/osm-station/configs/tileserver/config.json
  826  tileserver-gl --config ~/osm-station/configs/tileserver/config.json --port 8080
  827  cd ..
  828  tileserver-gl --config ~/osm-station/configs/tileserver/config.json --port 8080
  829  sudo apt install -y libopengl0 libglx-mesa0 libgl1-mesa-dri
  830  tileserver-gl --config ~/osm-station/configs/tileserver/config.json --port 8080
  831  sudo apt install -y libpng-dev
  832  sudo ldconfig
  833  ldconfig -p | grep libpng
  834  sudo apt install -y docker.io
  835  sudo systemctl enable --now docker
  836  sudo docker run --rm maptiler/tileserver-gl --version
  837  sudo docker run -d   --name tileserver   --restart unless-stopped   -p 8080:8080   -v /home/ovisopa/osm-station:/data   maptiler/tileserver-gl   --config /data/configs/tileserver/config.json   --port 8080
  838  sudo docker logs tileserver
  839  nano ~/osm-station/configs/tileserver/config.json
  840  sudo docker restart tileserver
  841  sudo docker logs tileserver
  842  nano ~/osm-station/configs/tileserver/config.json
  843  sudo docker restart tileserver
  844  sudo docker logs tileserver --follow
  845  nano ~/osm-station/configs/tileserver/config.json
  846  sudo docker restart tileserver
  847  sudo docker logs tileserver --follow
  848  curl -s http://localhost:3000/ | python3 -m json.tool
  849  sudo systemctl status martin
  850  curl -s http://localhost:3000/ | python3 -m json.tool
  851  curl -s http://localhost:3000/style/trackthewild_style.json | python3 -m json.tool
  852  ls -la /home/ovisopa/osm-station/styles/
  853  grep -A5 "static_files" /home/ovisopa/osm-station/configs/martin/config.yaml
  854  curl -s http://localhost:3000/catalog | python3 -m json.tool
  855  sudo nginx -T 2>/dev/null | grep -E "root|alias|server_name|location"
  856  sudo nginx -T 2>/dev/null | grep "configuration file"
  857  nano /etc/nginx/nginx.conf
  858  sudo cat /etc/nginx/sites-enabled/default
  859  nano /etc/nginx/sites-enabled/default
  860  sudo nano /etc/nginx/sites-enabled/default
  861  sudo nginx -t && sudo systemctl reload nginx
  862  cd /home/ovisopa/osm-station/styles/
  863  ls
  864  nano trackthewild_style.json
  865  sudo nano /etc/nginx/sites-enabled/default
  866  sudo nginx -t && sudo systemctl reload nginx
  867  sudo nano /etc/nginx/sites-enabled/default
  868  sudo nano /etc/nginx/nginx.conf
  869  sudo nano /etc/nginx/sites-enabled/default
  870  sudo nginx -t && sudo systemctl reload nginx
  871  sudo systemctl enable docker
  872  sudo docker update --restart unless-stopped tileserver
  873  nano /home/ovisopa/osm-station/styles/trackthewild_raster.json
  874  curl http://localhost/styles/trackthewild_raster.json
  875  nano /home/ovisopa/osm-station/styles/trackthewild_raster.json
  876  curl http://localhost/styles/trackthewild_raster.json
  877  sudo nano /etc/nginx/sites-enabled/default
  878  sudo nginx -t && sudo systemctl reload nginx
  879  curl http://localhost/styles/trackthewild_raster.json
  880  nano /home/ovisopa/osm-station/styles/trackthewild_raster.json
  881  pmtiles show /home/ovisopa/osm-station/data/europe_custom.pmtiles
  882  grep -rn "landcover_polygon\|LandcoverPolygon\|meadow\|grassland"   /home/ovisopa/osm-station/src/planetiler-openmaptiles/src/main/java/org/openmaptiles/generated/Tables.java   | head -40
  883  grep -n "meadow\|grassland\|scrub\|heath"   /home/ovisopa/osm-station/src/planetiler-openmaptiles/src/main/java/org/openmaptiles/generated/Tables.java
  884  sed -n '147,165p'   /home/ovisopa/osm-station/src/planetiler-openmaptiles/src/main/java/org/openmaptiles/generated/Tables.java
  885  java -jar "$JAR" inspect   /home/ovisopa/osm-station/data/romania_custom_v2.pmtiles   --layer=landcover --zoom=12 2>/dev/null | grep -i "grass\|meadow\|grassland" | head -20
  886  btop
  887  cd  ~/osm-station/scripts/
  888  ls
  889  cd ..
  890  history > ~/osm-station/commands.md
