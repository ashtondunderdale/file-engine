import os 
import time
import keyboard

from main import PATH, FILE_INDEX, refresh_file_explorer

def run_engine():
    filename_index = FILE_INDEX

    while True:
        previous_file_index = filename_index     
        move_index = get_file_index_action()

        if (is_collision(move_index, filename_index)): continue

        filename_index = max(0, min(FILE_INDEX, filename_index + move_index))
        
        move_file(previous_file_index, filename_index)


def move_file(previous_file_index, filename_index):
    old_filename = f"{previous_file_index:02d}.jpg"
    new_filename = f"{filename_index:02d}.jpg"
    
    old_path = os.path.join(PATH, old_filename)
    new_path = os.path.join(PATH, new_filename)
    
    if not os.path.exists(old_path):
        return
    
    os.rename(old_path, new_path)
    refresh_file_explorer()
    time.sleep(0.3)        


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

    if key_pressed == "up" or key_pressed == "w":
        return -10

    elif key_pressed == "down" or key_pressed == "s":
        return 10

    elif key_pressed == "left" or key_pressed == "a":
        return -1
        
    elif key_pressed == "right" or key_pressed == "d":
        return 1
