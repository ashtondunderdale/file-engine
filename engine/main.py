import os
import ctypes

from engine.engine import run_engine

#  for this program to work do the following:
#
#    - set your windows file explorer to Medium Size Icons
#    - the icons must form a 10 x 10 grid so adjust your screen size
#    - sort by Name, Ascending
#
#    - add a file in the game space dir: 99.jpg (or change constant below)


# path to your game space *folder*
PATH = "C:\\Users\\adunderdale\\ignore_this"
FILE_INDEX = 99

def main():
    delete_present_files()
    create_initial_files()

    run_engine()


def create_initial_files():
    for i in range(99):
        filename = f"{i}.txt"
        filepath = os.path.join(PATH, filename)   
        open(filepath, 'w')


def delete_present_files():
    for file in os.listdir(PATH):        
        file_path = os.path.join(PATH, file)

        if os.path.isfile(file_path):
            if file.endswith(".jpg"):
                os.rename(file_path, os.path.join(PATH, f"{FILE_INDEX}.jpg"))
            else:
                os.remove(file_path)


def refresh_file_explorer():
    ctypes.windll.shell32.SHChangeNotify
    (0x8000000, 0x1000, None, None)


if __name__ == "__main__":
    main()