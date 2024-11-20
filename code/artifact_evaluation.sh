# Get to node gigem1 to be able to use Docker:
docker pull hrlee/dataflow:sc23
docker run --rm -it hrlee/dataflow:sc23 bash

# Extract the files once you're in the container:
tar xvzf inputs/1000genome_inputs.tar.gz

# Navigate to the scripts folder and ran the bash script that installs the environment:
cd scripts
bash install_env_dep.sh

export PYTHONPATH=$PYTHONPATH:dfl_src

# Produce the 1kgenomes-producer-consumer-ranking-table.csv that leads to figure 2f:
python scripts/1000genome_dfl.py --task ranking

# Make sure the 1000genome_inputs is in the directory you’re running it from. Otherwise, put the absolute path in the python script. 
# Produce Figure 4a:
python scripts/1000genome_dfl.py --task ctree

# Produce Figure 5:
python scripts/1000genome_dfl.py --task dflg-ctree

# If you want to run all at once:
/ae/scripts/run.sh