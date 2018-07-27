import unittest

from lib import abduction

import os, os.path

BASE_DIR = os.path.dirname(os.path.abspath(__file__))

class TestAbduction(unittest.TestCase):
    filename = "test.txt"
    cwd = os.path.join(BASE_DIR, filename)
    created_file = os.path.join(BASE_DIR, filename)

    def test_log_asp(self):
        pass
    
    def test_log_las(self):
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