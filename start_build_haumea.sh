debug=${1:-"debug"} # debug/release
fast=${2:-"fast"}	# fast/rebuild

srun -t 01:00:00 -p compute -N1 --tasks-per-node 1 --pty bash -c "source ~/.bash_profile; source build_haumea.sh ${debug} ${fast}"