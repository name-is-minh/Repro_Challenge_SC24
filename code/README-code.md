# INSTRUCTIONS TO RUN THE SBATCH SCRIPTS

```bash
module load GCCcore/12.3.0 Python/3.11.3
python -m venv script_venv
source script_venv/bin/activate
pip install NetworkX Plotly pandas matplotlib tabulate kaleido
```

git clone datalife and 1000genome-workflow repositories and putting the data's path into the sbatch scripts. \
Submit the scripts using Slurm.
