# Wikipedia Search using Objective


To compare Wikipedia's current search API and Objective's search API, run:

```bash
$ ./evaluate_wikipedia.sh

>	objective.results
map                   	all	0.5563
recall_10             	all	0.6814
ndcg                  	all	0.6647
ndcg_cut_10           	all	0.6933
map_cut_10            	all	0.5563
........


>	wikipedia_org.results
map                   	all	0.4140
recall_10             	all	0.5456
ndcg                  	all	0.5270
ndcg_cut_10           	all	0.5497
map_cut_10            	all	0.4140
........
