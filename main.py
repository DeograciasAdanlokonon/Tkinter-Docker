import tkinter as tk
from tkinter.messagebox import showinfo

root = tk.Tk()


def show_message():
    showinfo("Some title!", 'Hello World')


btn = tk.Button(root, text='Cilck Me!', command=show_message)
btn.pack()

root.mainloop()
