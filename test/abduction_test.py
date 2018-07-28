import unittest

from lib import abduction, induction, helper

import os, os.path
import gym, gym_vgdl

BASE_DIR = os.path.dirname(os.path.abspath(__file__))
env = gym.make('vgdl_test-v0')

class TestAbduction(unittest.TestCase):
    filename = "test.txt"
    cwd = os.path.join(BASE_DIR, filename)
    created_file = os.path.join(BASE_DIR, filename)

    def test_is_wall_in_background(self):
        wall = (4,4)
        backgroundfile = os.path.join(BASE_DIR, "background_test.lp")
        is_wall = abduction.is_wall_in_background(wall, backgroundfile)
        self.assertTrue(is_wall)
        non_wall = (100, 100)
        is_wall2 = abduction.is_wall_in_background(non_wall, backgroundfile)
        self.assertFalse(is_wall2)

    def test_add_new_walls(self):
        wall_list = induction.get_all_walls(env)
        agent_position = env.unwrapped.observer.get_observation()["position"]
        helper.silentremove(BASE_DIR, "background_test2.lp")
        backgroundfile = os.path.join(BASE_DIR, "background_test2.lp")

        is_new_wall = abduction.add_new_walls(agent_position, wall_list, backgroundfile)
        self.assertTrue(is_new_wall)
        is_new_wall2 = abduction.add_new_walls(agent_position, wall_list, backgroundfile)
        self.assertFalse(is_new_wall2)

    def test_make_lp(self):
        helper.silentremove(BASE_DIR, "clingo_test.lp")
        helper.silentremove(BASE_DIR, "newlp.las")
        
        h = "H"
        lasfile = os.path.join(BASE_DIR, "las_test.las")
        backgroundfile = os.path.join(BASE_DIR, "background_test3.lp")
        clingo_file = os.path.join(BASE_DIR, "newlp.las")
        start_state = (1,1)
        goal_state = (2,2)
        time_range = 10
        cell_range = "cell"
        abduction.make_lp(h, lasfile, backgroundfile, clingo_file, start_state, goal_state, time_range, cell_range)
        size = os.stat(clingo_file).st_size
        self.assertGreater(size, 0)

    def test_send_background_to_clingo(self):
        inputfile = os.path.join(BASE_DIR, "input.txt")
        outputfile = os.path.join(BASE_DIR, "output.txt")
        helper.silentremove(BASE_DIR, "output.txt")
        abduction.send_background_to_clingo(inputfile, outputfile)
        result = None
        with open(outputfile, "r") as file:
            result = file.read()
        self.assertEqual(result, "hello")

    def test_run_clingo(self):
        pass

    def test_sort_planning(self):
        asp = ['action(right,2)', 'action(up,1)', 'state_at((1,0),2)','state_at((1,1),1)', 'state_at((2,0),3)']
        sorted_states, sorted_actions = abduction.sort_planning(asp)
        predict_states = [(1, 'state_at((1,1),1)'), (2, 'state_at((1,0),2)'), (3, 'state_at((2,0),3)')]
        predict_actions = [(1, 'up'), (2, 'right')]
        self.assertEqual(sorted_states, predict_states)
        self.assertEqual(sorted_actions, predict_actions)

    def test_extract_action(self):
        action_string = "action(right,13)"
        action = abduction.extract_action(action_string)
        self.assertEqual(action, "right")

    def test_is_state_in_states(self):
        states = [(1, 'state_at((4,6),1)'), (2, 'state_at((5,6),2)'), (3, 'state_at((6,6),3)')]
        state = 'state_at((4,6),1)'
        is_state = abduction.is_state_in_states(state, states)
        self.assertTrue(is_state)
    
    def test_get_predicted_state(self):
        current_state = 'state_at((4,6),1)'
        action = "right"
        states = [(1, 'state_at((4,6),1)'), (2, 'state_at((5,6),2)'), (3, 'state_at((6,6),3)')]
        result = abduction.get_predicted_state(current_state, action, states)
        self.assertEqual(result, "state_at((5,6),2)")
        current_state2 = 'state_at((1,1),1)'
        result2 = abduction.get_predicted_state(current_state2, action, states)
        self.assertEqual(result2, 'state_at((1,1),2)')

if __name__ == '__main__':
    unittest.main()