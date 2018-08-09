import os, subprocess, time

def convert_state(x, y, width):
    x += 1
    y += 1
    return (y-1)*width+x

def convert_action(action):
    if(action == 0):
        return "up"
    elif(action == 1):
        return "down"
    elif(action == 2):
        return "left"
    elif(action == 3):
        return "right"
    else:
        print("this action does not exist...", str(action))
        return None

def check_surrounding_walls(x, y, wall_list):
    up_wall = down_wall = right_wall = left_wall = False
    
    if((x+1,y) in wall_list):
        right_wall = True
    if((x,y+1) in wall_list):
        up_wall = True
    if((x-1,y) in wall_list):
        left_wall = True
    if((x,y-1) in wall_list):
        down_wall = True
    
    return up_wall, down_wall, right_wall, left_wall

def get_action(action):
    if(action == "up"):
        return 0
    elif(action == "down"):
        return 1
    elif(action == "left"):
        return 2
    elif(action == "right"):
        return 3
    else:
        print("this action does not exist...", action)
        return -1

def create_file(base_dir, filename, extra_path=None):
    # Used to create for LAS cache file
    dir = base_dir
    if extra_path:
        dir = os.path.join(base_dir, extra_path)
    file =os.path.join(dir, filename)
    with open(file, "w+") as file:
        pass

def remove_file(file):
    try:
        os.remove(file)
    except OSError:
        print(file + " could not be found...")
        return False
    return True

def silentremove(base_dir, filename, extra_path=None):
    dir = base_dir
    if extra_path:
        dir = os.path.join(base_dir, extra_path)
    
    file =os.path.join(dir, filename)

    remove_file(file)    
    
    # After deleting the old file, replace it with a new empty one
    with open(filename, "a") as myfile:
        myfile.close()
    return

def append_to_file(data, file):
    '''
    Add a new data to a las file.
    '''
    with open(file, "a") as f:
        f.write(data)

def gen_unique_filename(extension, base_dir, episode, filename, time):
    base_log_dir = '{}_episode{}_at_{}'.format(filename, episode, time)
    file_path = base_dir + '/' + base_log_dir

    return file_path + "." + extension

def log_asp(inputfile, output, base_dir, episode, time):

    unique_file = gen_unique_filename("lp", base_dir, episode, "clingo", time)
    copy_file(inputfile, unique_file)
    with open(unique_file, "a") as out:
        out.write("%ANSWER SETS\n\n")
        for i in output:
            i = "%" + i + "\n"
            out.write(i)

def log_las(inputfile, hypothesis, base_dir, episode, time):
    unique_file = gen_unique_filename("las", base_dir, episode, "las", time)
    new_h = comment_h(hypothesis)
    with open(unique_file, "a") as out:
        out.write("%ILASP\n\n")
        out.write(new_h)
    
    copy_file(inputfile, unique_file)

def comment_h(hypothesis):
    hypothesis = "%" + hypothesis
    new_h = ""
    for h in hypothesis:
        if h == "\n":
            new_h += "\n%"
        else:
            new_h += h
    return new_h[0:-1]

def copy_file(inputfile, outputfile):
    '''
    Copyt file
    '''
    with open(inputfile) as f:
        with open(outputfile, "a") as out:
            for line in f:
                out.write(line)

def gen_log_dir(base_dir, prefix='', symlink=False):
    # Create a folder to hold results
    time_str = time.strftime("%d-%m-%Y-%H-%M-%S", time.gmtime())
    if prefix == '' or prefix is None:
        base_log_dir = time_str
    else:
        base_log_dir = '{}_{}'.format(prefix, time_str)
    log_dir = base_dir + '/' + base_log_dir
    os.makedirs(log_dir, exist_ok=True)

    if symlink:
        link_path = base_dir + '/last'

        try:
            # Clean up old softlink
            os.remove(link_path)
        except OSError as ex:
            pass # All G

        try:
            os.symlink(base_log_dir, link_path)
        except FileExistsError as e:
            # Race conditions, what can you do
            pass

    return log_dir