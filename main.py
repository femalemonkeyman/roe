import contextlib
with contextlib.redirect_stdout(None):
    import pygame
import re
import os
from multiprocessing import Process
gameEnd = False
pygame.mixer.init()
rooms = {
	"tavern": {
		"description": "You are in a small packed tavern. Locals seem to be the primary clientele here, which is often a good sign. Several long tables are occupied by, what seems to be entire families, all enjoying the food, drinks and company of each other. The other, smaller tables are also occupied by people who are playing games and, judging by their laughter, are either telling jokes or great, perhaps embarrasing, tales. Even most of the stools at the bar are occupied, though nobody seems to mind more company.",
		"exits": {
			"door": "outside",
			"window": "outside"
			},
		"items": {
			"dagger", "tankard"
		}
	},
	"outside": {
		"description": "You are outside a small tavern. You can see the clientele laughing and drinking through the beams of light filtering through the windows. In front of you lies a small field bordered on all sides by what looks like a dense forest. You can see a few houses scattered about, the ragtag buildings of a small town.",
		"exits": {
			"inside": "tavern",
			"town": "town",
			"clearing": "clearing"
			},
		"items": {
			"dagger", "tankard"
		}	
	},
	"town": {
		"description": "You are standing in the center of a small town. Up the road a bit you can see a a brightly lit tavern. Around you are several houses, shops (including what you guess to be a potion shop and a general/weapons store) and people. The forest on all sides looks too foreboding to even think about entry.",
		"exits": {
			"outside": "outside"
			},
		"items": {
			"dagger", "tankard"
		}
	},
	"clearing": {
		"description": "You are standing in a small clearing surrounded by tall trees however, rather then being dreerie, you can feel the magic of the life around seeping into you, filling you with energy. Off in the distance you can see the light sparkling off a lake as it filters through the trees.",
		"exits": {
			"outside": "outside",
			"lake": "lake"
			},
		"items": {
			"dagger", "tankard"
		}
	},
	"lake": {
		"description": "",
		"exits": {
			"clearing": "clearing"
			},
		"items": {
			"dagger", "tankard"
		}
	},	
}
room = "opening"
def look():
	print(rooms[room]["description"])
	print("\nitems : ", end = "")
	for x in rooms[room]["items"]:
		print(x + ", ", end = "")
	print("\nexits : ", end = "")
	for x in rooms[room]["exits"]:
		print(x + ", ", end = "")

inventory = [""]
def clear():
	if (os.name == "posix"):
		os.system('clear')
	else:
		os.system('cls')
def enter():
	input("\n\npress enter to continue")
def music():
	pygame.mixer.music.load(room + ".mp3")
	pygame.mixer.music.play(-1)
def go(a, room):
	a = a.strip("go ")
	a = "\"" + a + "\""
	print(a)
	room = str(rooms[room]["exits"]["window"])
	print(rooms[room]["exits"]["window"])
	if a in rooms[room]["exits"]:
		room = (rooms[room]["exits"][a])

music()
clear()
print("Welcome Adventurer, to the Realms of euphoria.\n")
print("What is your name young one? : ", end = "")
name = input()
while (True):
	clear()
	print("Hello " + name + " I would personally like to welcome you to this amazing world. Now, which of these do you feel most related to?\n\nWarrior    Rogue    Mage : ", end = "")
	classSel = input().lower()
	if classSel == "warrior" or classSel == "mage" or classSel == "rogue":
		break
	input("\nI'm sorry I don't understand...")
print("\nThat is certainly an interesting choice,");
if (classSel == "mage"):
	print("The magic of the realms are yours to control.")
elif classSel == "warrior":
	print("All those of the realm shall fear your approach.")		
else:
	print("Silence is your friend and no one else's.")
print("\nNow that the world knows who you are, we must send you away on a great journey. I hope one day you might make it back here. Goodbye.")
input("\n\npress enter to continue")
clear()
print("The world begins spinning around you as you are whisked away to somewhere unknown...")
while(True):
	a = input("\n\n As your vision clears you find yourself standing in a dull grey room. In front of you floats a dazzlingly white orb. You can't understand how, but it almost seems to be beckoning to you. What will you do? \n\n" + name + " : ")
	a = a.lower()
	print(a)
	if ("dont" in a and "go" in a):
		print("Are you just going to stand there? That isn't very productive...")
	elif ("touch" in a and "orb" in a or "touch" in a):
		clear()
		print("You slowly reach out. The second your hand touches the orb everything goes dark... and then light! You are standing in a noisy tavern!")
		enter()
		break
	else:
		print("I'm sorry I don't understand")
		enter()
		clear()

pygame.mixer.music.fadeout(300)
pos = pygame.mixer.music.get_pos()
room = "tavern"
music()
pygame.mixer.music.set_pos(pos)
clear()
print("\n\nSomething seems to tell you that you can use the help command to figure out what to do...")
while(gameEnd == False):
	look()
	a = input("\n\n" + name + " : ")
	if (a == "quit"):
		gameEnd == True
	elif (a == look):
		look()
	elif (a == help):
		print("Type \"look\" to look around and find things\nType \"go [exit name]\" to move through that exit\nType \"help\" for this output\nType \"get [item name]\" to pickup that item")
	elif (a == get):
		clear()
		a = a[4:]
		if a in rooms[room]["items"]:
			print
	elif ("go" in a):
		clear()
		a = a[3:]
		if a in rooms[room]["exits"]:
			if a == "window":
				clear()
				print("Everyone stares as you first open and then squeeze yourself through the small window.")
				enter()
			room = (rooms[room]["exits"][a])
			clear()
# a = str(rooms["tavern"]["exits"])
# b = re.sub('[{}""\':\[\]]',"", a)
# c = input()
# c = c.strip("go ")
# print(c)
# if c in b:
# 	print(b)