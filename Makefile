# $PostgreSQL $

MODULE_big = pg_similarity
OBJS = tokenizer.o similarity.o \
       block.o cosine.o dice.o euclidean.o hamming.o jaccard.o \
       jaro.o levenshtein.o matching.o mongeelkan.o needlemanwunsch.o \
	   overlap.o qgram.o smithwaterman.o smithwatermangotoh.o soundex.o
DATA_built = pg_similarity.sql
DATA = uninstall_pg_similarity.sql
REGRESS = pg_similarity

PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
