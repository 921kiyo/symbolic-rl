import sys, termios, tty, os, time


class _Getch:
    def __call__(self):
        fd = sys.stdin.fileno()
        old_settings = termios.tcgetattr(fd)
        try:
            tty.setraw(sys.stdin.fileno())
            ch = sys.stdin.read(3)
        finally:
            termios.tcsetattr(fd, termios.TCSADRAIN, old_settings)
        return ch

def keyboard_activate():
    inkey = _Getch()

    button_delay = 0.2

    # while True:
    char = inkey()

    if(char == "qqq"):
        print("stop")
        exit(0)
    if(char == "\x1b[D"): # Left
        return 3
    elif(char == "\x1b[C"): # Right
        return 2
    elif(char == "\x1b[A"): # Up
        return 1
    elif(char == "\x1b[B"): # Down
        return 0
    else:
        print("not an arrow key!")

        # pick-up 4
        # drop-off 5

        # if(char == "a"):
        #     # print("left pressed")
        #     # time.sleep(button_delay)
        #     # break
        #     return 0
        # elif(char == "d"):
        #     # print("right pressed")
        #     # time.sleep(button_delay)
        #     # break
        #     return 1
        # elif(char == "w"):
        #     # print("up pressed")
        #     # time.sleep(button_delay)
        #     # break
        #     return 2
        # elif(char == "s"):
        #     # print("down pressed")
        #     # time.sleep(button_delay)
        #     # break
        #     return 3
