
export LD_PRELOAD=$(pwd)/build/libmsh.so:${LD_PRELOAD}
export LD_LIBRARY_PATH=$(pwd)/build:${LD_LIBRARY_PATH}

echo "$(pwd)/apps/build/compute.so.bolt" > scav.txt
export MSH_SCAV_POOL_PATH=$(pwd)/scav.txt
export SKIP_FIRST_THREAD=1