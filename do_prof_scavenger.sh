export LD_PRELOAD=$(pwd)/libmsh/build/libmsh.so:${LD_PRELOAD}
export LD_LIBRARY_PATH=$(pwd)/libmsh/build:${LD_LIBRARY_PATH}
echo "$(pwd)/apps/build/compute.so" > scav.txt
export MSH_SCAV_POOL_PATH=$(pwd)/scav.txt
export SKIP_FIRST_THREAD=1

PROF_DIR=profile
TEMPLATE_BIN=apps/build/template
SAMPLING_RATE_IN_CNT=102400

# set scav.txt on your own

 ${PROF_DIR}/scripts/capture_cm_inst_scav.sh ${SAMPLING_RATE_IN_CNT} ${TEMPLATE_BIN}
 ${PROF_DIR}/scripts/compute_ld_prob.sh profile/results/perf.data 1 ${SAMPLING_RATE_IN_CNT}

export LD_PRELOAD=""