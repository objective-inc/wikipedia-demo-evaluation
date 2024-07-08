#!/bin/bash

# Download and install trec_eval from the official GitHub repository
if [ ! -d "./trec_eval" ]; then
    git clone https://github.com/usnistgov/trec_eval.git
    cd trec_eval
    make
    cd ..
fi

# Get TREC metrics on each of the results files
for results_file in "objective.results" "wikipedia_org.results" ; do
    echo -e ">\t${results_file}"
    ./trec_eval/trec_eval -m recall.10 -m map_cut.10 -m ndcg_cut.10 -m map -m ndcg objective_and_wikipedia_pooled_data.qrels "${results_file}"
    echo -e "........\n\n"
done
