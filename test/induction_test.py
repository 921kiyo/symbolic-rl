import unittest

from lib import induction

import os, os.path
import gym, gym_vgdl

BASE_DIR = os.path.dirname(os.path.abspath(__file__))

env = gym.make('vgdl_test-v0')
class TestInduction(unittest.TestCase):
    filename = "test.txt"
    cwd = os.path.join(BASE_DIR, filename)
    created_file = os.path.join(BASE_DIR, filename)

    def test_get_all_walls(self):
        walls = induction.get_all_walls(env)
        self.assertEqual(len(walls), 12)
    
    def test_add_surrounding_walls(self):
        walls = induction.get_all_walls(env)
        surrounding = induction.add_surrounding_walls(1,1,walls)
        print(surrounding)
        pass

    def test_comment_h(self):
        pass

    def test_copy_file(self):
        pass

    def test_gen_unique_filename(self):
        pass

    def test_gen_log_dir(self):
        pass


if __name__ == '__main__':
    unittest.main()