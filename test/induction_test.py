import unittest

from lib import induction, helper

import os, os.path
import gym, gym_vgdl

BASE_DIR = os.path.dirname(os.path.abspath(__file__))

env = gym.make('vgdl_test-v0')
class TestInduction(unittest.TestCase):
    filename = "test.txt"
    cwd = os.path.join(BASE_DIR, filename)
    created_file = os.path.join(BASE_DIR, filename)

    # def test_get_all_walls(self):
    #     walls = induction.get_all_walls(env)
    #     self.assertEqual(len(walls), 12)
    
    # def test_add_surrounding_walls(self):
    #     walls = induction.get_all_walls(env)
    #     surrounding = induction.add_surrounding_walls(1,1,walls)
    #     self.assertEqual(surrounding, "wall((1, 2)). wall((0, 1)). wall((1, 0)). ")

    # def test_get_seen_walls(self):
    #     wall_file = os.path.join(BASE_DIR, "walls.txt")
    #     result = induction.get_seen_walls(wall_file)
    #     self.assertEqual(result, [(1, 2), (0, 1), (1, 0)])

    # def test_get_exclusions(self):
    #     previous_state = [1,1]
    #     next_state = [1,2]
    #     is_link, exclusions = induction.get_exclusions(previous_state, next_state)
    #     self.assertFalse(is_link)
    #     self.assertEqual(exclusions, 'state_after((2,1)),state_after((0,1)),state_after((1,0)),state_after((1,1))')

    # def test_get_plan_exclusions(self):
    #     state_at_before = "state_at((1,1),1)"
    #     state_at_after = "state_at((1,2),2)"
    #     states = [(2,"state_at((1,2),2)"),(2,"state_at((2,2),2)")]
    #     exclusions = induction.get_plan_exclusions(state_at_before, state_at_after, states)
    #     self.assertEqual(exclusions, "state_after((2,2))")

    # def test_get_next_state(self):
    #     current_state = [1,1]
    #     action = "up"
    #     x, y = induction.get_next_state(current_state, action)
    #     self.assertEqual(x, 1)
    #     self.assertEqual(y, 0)

    # def test_get_link(self):
    #     previous_state = [1,1]
    #     next_state = [3,3]
    #     action = "up"
    #     link = induction.get_link(previous_state, next_state, action)
    #     self.assertEqual(link, "link((1,0), (3,3)). ")

    # def test_generate_plan_pos(self):
    #     state_at_before = "state_at((1,1),1)"
    #     state_at_after = "state_at((1,2),2)"
    #     states = [(2,"state_at((1,2),2)")]
    #     action = "down"
    #     wall_list = [(2,1)]
    #     _, pos = induction.generate_plan_pos(state_at_before, state_at_after, states, action, wall_list)
    #     self.assertEqual(pos, "#pos({state_after((1,2))}, {}, {state_before((1,1)). action(down). wall((2, 1)). }).")

    # def test_generate_explore_pos(self):
    #     next_state = [1,2]
    #     previous_state = [1,1]
    #     action = "down"
    #     wall_list = [(2,1)]
    #     _, pos = induction.generate_explore_pos(next_state, previous_state, action, wall_list)
    #     self.assertEqual(pos, "#pos({state_after((1,2))}, {state_after((2,1)),state_after((0,1)),state_after((1,0)),state_after((1,1))}, {state_before((1,1)). action(down). wall((2, 1)). }).")

    # def test_send_state_transition_pos(self):
    #     previous_state = [1,1]
    #     next_state = [2,1]
    #     action = "right"
    #     wall_list = induction.get_all_walls(env)
    #     lasfile = os.path.join(BASE_DIR, "las_test2.las")
    #     helper.silentremove(BASE_DIR, "las_test2.las")
    #     background = os.path.join(BASE_DIR, "background_test4.lp")
    #     helper.silentremove(BASE_DIR, "background_test4.lp")
    #     induction.send_state_transition_pos(previous_state, next_state, action, wall_list, lasfile, background)
    #     size_las = os.stat(lasfile).st_size
    #     size_background = os.stat(background).st_size
    #     self.assertGreater(size_las, 0)
    #     self.assertEqual(size_background, 0)

    # def test_copy_las_base(self):
    #     helper.silentremove(BASE_DIR, "las_base1.las")
    #     lasbase = os.path.join(BASE_DIR, "las_base1.las")
    #     induction.copy_las_base(lasbase, 1,1)
    #     result = ""
    #     with open(lasbase, "r") as file:
    #         lines = file.readlines()
    #         for l in lines:
    #             result = result + l
    #     self.assertEqual(result, "cell((0..1, 0..1)).\n")

    # def test_run_ILASP(self):
    #     las_file = os.path.join(BASE_DIR, "las_test4.las")
    #     hypothesis = induction.run_ILASP(las_file)
    #     self.assertEqual(hypothesis[0:8], "state_at")

    def test_check_ILASP_cover(self):
        induction.check_ILASP_cover(BASE_DIR, "las_test5.las", "h")

        

    def test_remove_mode(self):
        pass

if __name__ == '__main__':
    unittest.main()