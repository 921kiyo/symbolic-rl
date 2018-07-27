import unittest

from lib import helper

import os, os.path


BASE_DIR = os.path.dirname(os.path.abspath(__file__))

class TestHelper(unittest.TestCase):
    filename = "test.txt"
    cwd = os.path.join(BASE_DIR, filename)
    created_file = os.path.join(BASE_DIR, filename)

    def test_convert_state(self):
        x = y = 2
        width = 5
        result = helper.convert_state(x,y, width)
        self.assertEqual(result, 13)

    def test_convert_action(self):
        up = 0
        result = helper.convert_action(up)
        self.assertEqual(result, "up")

    def test_get_action(self):
        result = helper.get_action("up")
        self.assertEqual(result, 0)
    
    def test_create_file(self):
        # Remove if the file already exists
        helper.remove_file(self.__class__.created_file)

        helper.create_file(BASE_DIR, self.__class__.filename)
        self.assertTrue(os.path.exists(self.__class__.cwd))

    def test_remove_file(self):
        helper.remove_file(self.__class__.created_file)
        self.assertFalse(os.path.exists(self.__class__.cwd))

    def test_silentmove(self):
        helper.create_file(BASE_DIR, self.__class__.filename)
        helper.append_to_file("hello", self.__class__.created_file)
        helper.silentremove(BASE_DIR, self.__class__.filename)
        self.assertTrue(os.stat(self.__class__.created_file).st_size == 0)
    
    def test_append_to_file(self):
        helper.append_to_file("hello", self.__class__.created_file)
        size = os.stat(self.__class__.created_file).st_size
        self.assertEqual(size, 5)

    def test_gen_unique_filename(self):
        pass

    def test_log_asp(self):
        pass
    
    def test_log_las(self):
        pass

    def test_comment_h(self):
        h = "hello\n world\n"
        new_h = helper.comment_h(h)
        self.assertEqual(new_h, "%hello\n% world\n")

    def test_copy_file(self):
        output_file  = os.path.join(BASE_DIR, "test2.txt")
        helper.copy_file(self.__class__.created_file, output_file)
        self.assertTrue(os.path.exists(output_file))
        helper.remove_file(output_file)

    def test_gen_log_dir(self):
        pass

if __name__ == '__main__':
    unittest.main()