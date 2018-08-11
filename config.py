import os
LASFILE = "output.las"
BACKGROUND = "background.lp"
CLINGOFILE = "clingo.lp"
LAS_CACHE = "cache.las"
LAS_CACHE_PATH = "log"

BASE_DIR = os.path.dirname(os.path.abspath(__file__))
dir = os.path.join(BASE_DIR, LAS_CACHE_PATH)
CACHE_DIR = os.path.join(dir, LAS_CACHE)

# Increase this to make the decay faster
DECAY_PARAM = 1

TIME_RANGE = 250

IS_PRINT = True
