import os
import ctypes
import time
import keyboard

#  for this program to even work do the following:
#
#    - set your windows file explorer to Medium Size Icons
#    - the icons must form a 10 x 10 grid so adjust your screen size
#    - sort by Name, Ascending


# path to your game space
path = "C:\\Users\\adunderdale\\ignore_this"

def main():
    create_initial_files()

    run_engine()


def create_initial_files():
    for file in os.listdir(path):        
        file_path = os.path.join(path, file)
        if os.path.isfile(file_path):
            if file.endswith(".jpg"):
                os.rename(file_path, os.path.join(path, "99.jpg"))
            else:
                os.remove(file_path)

    for i in range(99):
        filename = f"{i}.txt"
        filepath = os.path.join(path, filename)
        
        with open(filepath, 'w') as f:
            f.write("This is a sample file.")
    

def run_engine():
    filename_index = 99

    while True:
        previous_file_index = filename_index     
        move_index = get_file_index_action()

        if (is_collision(move_index, filename_index)): continue

        filename_index = max(0, min(99, filename_index + move_index))
        
        move_file(previous_file_index, filename_index)


def move_file(previous_file_index, filename_index):
    old_filename = f"{previous_file_index:02d}.jpg"
    new_filename = f"{filename_index:02d}.jpg"
    
    old_path = os.path.join(path, old_filename)
    new_path = os.path.join(path, new_filename)
    
    if not os.path.exists(old_path):
        return
    
    os.rename(old_path, new_path)
    time.sleep(0.5)        
    refresh_file_explorer(path)


def is_collision(move_index, filename_index):
    if (move_index == -1 and filename_index % 10 == 0):
        return True

    if (move_index == 1 and str(filename_index)[-1] == '9'):
        return True

    new_index = filename_index + move_index

    if (new_index < 0 or new_index > 99):         
        return True
    
    return False


def get_file_index_action():
    event = keyboard.read_event()
    key_pressed = event.name  

    if key_pressed == "up":
        return -10

    elif key_pressed == "down":
        return 10

    elif key_pressed == "left":
        return -1
        
    elif key_pressed == "right":
        return 1


def refresh_file_explorer(folder_path):
    ctypes.windll.shell32.SHChangeNotify(0x8000000, 0x1000, None, None)


if __name__ == "__main__":
    main()