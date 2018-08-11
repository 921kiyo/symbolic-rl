import os

BASE_DIR = os.path.dirname(os.path.abspath(__file__))

LASFILE = "output.las"
CLINGOFILE = "clingo.lp"
LAS_CACHE = "cache.las"
LAS_CACHE_PATH = "log"
GROUNDING = "ground.lp"

CHECK_LAS = "check_las.las"

dir = os.path.join(BASE_DIR, LAS_CACHE_PATH)
CACHE_DIR = os.path.join(dir, LAS_CACHE)

GROUNDING_DIR = os.path.join(BASE_DIR, GROUNDING)
# Increase this to make the decay faster
DECAY_PARAM = 1

TIME_RANGE = 250

IS_PRINT = True
