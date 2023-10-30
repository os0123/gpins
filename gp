 Write a python program to perform translation operation on rectangle by taking initial coordinates from user.

import math
from tkinter import*
root=Tk()
C=Canvas(root,bg="white",height=700)
C.create_text(110,40,text="Figure before translation",fill="black")
x1=int(input("Enter x1:"))
y1=int(input("Enter y1:"))
x2=int(input("Enter x2:"))
y2=int(input("Enter y2:"))
x3=int(input("Enter x3:"))
y3=int(input("Enter y3:"))
x4=int(input("Enter x4:"))
y4=int(input("Enter y4:"))
C.create_polygon(x1,y1,x2,y2,x3,y3,x4,y4,fill="red")
tx=300
ty=300
C.create_text(410,320,text="Figure after translation",fill="black")
C.create_polygon(x1+tx,y1+ty,x2+tx,y2+ty,x3+tx,y3+ty,x4+tx,y4+ty,fill="yellow")
C.pack()
root.mainloop()

OUYPUT:
Enter x1:100
Enter y1:100
Enter x2:100
Enter y2:200
Enter x3:200
Enter y3:200
Enter x4:200
Enter y4:100

Write a python program to perform scaling operation on triangle by taking initial coordinates from user.

import math
from tkinter import*
root=Tk()
C=Canvas(root,bg="white",height=700,width=700)
C.create_text(160,90,text="Figure Before Scaling",fill="black")
x1=int(input("Enter x1:"))
y1=int(input("Enter y1:"))
x2=int(input("Enter x2:"))
y2=int(input("Enter y2:"))
x3=int(input("Enter x3:"))
y3=int(input("Enter y3:"))
C.create_polygon(x1,y1,x2,y2,x3,y3,fill="red")
sx=3
sy=3
C.create_text(380,300,text="Figure After scaling",fill="black")
C.create_polygon(x1*sx,y1*sy,x2*sx,y2*sy,x3*sx,y3*sy,fill="blue")
C.pack()
root.mainloop()

OUTPUT:
Enter x1:100
Enter y1:100
Enter x2:100
Enter y2:200
Enter x3:200
Enter y3:200

3	Write a python program to perform reflection operation on polygon by taking initial coordinates from user. 			 
import math
from tkinter import*
root=Tk()
C=Canvas(root,bg="white",height=700,width=700)
C.create_text(160,90,text="Figure Before reflection" ,fill="black")
x1=int(input("Enter x1:"))
y1=int(input("Enter y1:"))
x2=int(input("Enter x2:"))
y2=int(input("Enter y2:"))
x3=int(input("Enter x3:"))
y3=int(input("Enter y3:"))
C.create_polygon(x1,y1,x2,y2,x3,y3,fill="red")
a=int(input("Entet arbitary axis"))
x11=(-x1+(2*a))
x21=(-x2+(2*a))
x31=(-x3+(2*a))
C.create_polygon(x11,y1,x21,y2,x31,y3,fill="aqua")
B=int(input("Entet arbitary axis"))
y11=(-y1+(2*a))
y21=(-y2+(2*a))
y31=(-y3+(2*a))
C.create_polygon(x1,y11,x2,y21,x3,y31,fill="black")
C.pack()
root.mainloop()

OUTPUT:
Enter x1:110
Enter y1:110
Enter x2:40
Enter y2:200
Enter x3:190
Enter y3:200
Entet arbitary axis300
Entet arbitary axis250

Write a python program to rotate right angle triangle by 45 degree by taking initial coordinates from user.

import math
from tkinter import *
root=Tk()
n=int(input("Enter angle"))
a=math.cos(math.radians(n))
b=math.sin(math.radians(n))
x0=int(input("Enter x0:- "))
y0=int(input("Enter y0:- "))
x1=int(input("Enter x1:- "))
y1=int(input("Enter y1:- "))
x2=int(input("Enter x2:- "))
y2=int(input("Enter y2:- "))
C=Canvas(root,bg="gray",height=1000,width=1000)
C.create_text(150,40,text="Triangle Before rotation",fill="green",font=('Consolas'))
triangle1=C.create_polygon(x0,y0,x1,y1,x2,y2,fill="green")
x11=abs(x0*a-y0*b)
y11=abs(x0*b+y0*a)
x12=abs(x1*a-y1*b)
y12=abs(x1*b+y1*a)
x13=abs(x2*a-y2*b)
y13=abs(x2*b+y2*a)
C.create_text(150,200,text="Triangle After rotation",fill="blue",font=('Consolas'))
triangle2=C.create_polygon(x11,y11,x12,y12,x13,y13,fill="blue")
C.pack()
mainloop()

OUTPUT:
Enter angle45
Enter x0:- 100
Enter y0:- 100
Enter x1:- 100
Enter y1:- 200
Enter x2:- 200
Enter y2:- 200


SHEARING
import math
from tkinter import*
root = Tk()
C = Canvas (root, bg="white",height=500, width=500)
C.create_text(100, 40, text="Figure after shearing", fill="black")
x1=int(input("Enter x1: "))
y1=int(input("Enter y1: "))
x2=int(input("Enter x2: "))
y2=int(input("Enter y2: "))
x3=int(input("Enter x3: "))
y3=int(input("Enter y3: "))
x4=int(input("Enter x4: "))
y4=int(input("Enter y4: "))
C.create_polygon (x1,y1,x2,y2,x3, y3,x4, y4, fill="black")
t=math.radians (45)
x11=x1+(y1*math.tan(t))
x21=x2+(y2*math.tan(t))
C.create_polygon (x11,y1,x21,y2,x3, y3, x4, y4, fill="aqua")
C.pack()

OUTPUT:
Enter x1: 50
Enter y1: 50
Enter x2: 300
Enter y2: 50
Enter x3: 300
Enter y3: 200
Enter x4: 50
Enter y4: 200

ALLINONE

import math
from tkinter import*
root = Tk()
C = Canvas(root,bg="yellow",height=1000,width=1200)
C.create_text(100,40,text="Reflection",fill="black")
x1=50
y1=10
x2=25
y2=30
x3=50
y3=50
x4=50
y4=40
x5=150
y5=40
x6=150
y6=20
x7=50
y7=20
C.create_polygon(x1,y1,x2,y2,x3,y3,x4,y4,x5,y5,x6,y6,x7,y7,fill="black")
a=int(input("Enter arbituary axis: "))
y11=(-y1+(2*a))
y21=(-y2+(2*a))
y31=(-y3+(2*a))
y41=(-y4+(2*a))
y51=(-y5+(2*a))
y61=(-y6+(2*a))
y71=(-y7+(2*a))
C.create_polygon(x1,y11,x2,y21,x3,y31,x4,y41,x5,y51,x6,y61,x7,y71,fill="black")
tx=500
ty=500
C.create_polygon(x1+tx,y11+ty,x2+tx,y21+ty,x3+tx,y31+ty,x4+tx,y41+ty,x5+tx,y51+ty,x6+tx,y61+ty,x7+tx,y71+ty,fill="red")
sx=2
sy=2
C.create_polygon(x1*sx,y11*sy,x2*sx,y21*sy,x3*sx,y31*sy,x4*sx,y41*sy,x5*sx,y51*sy,x6*sx,y61*sy,x7*sx,y71*sy,fill="red")
C.pack()
root.mainloop()

OUTPUT:
Enter arbituary axis: 100

SNAKE GAME:

import pygame
import random

pygame.init()

# Set up display
width, height = 640, 480
screen = pygame.display.set_mode((width, height))
pygame.display.set_caption("Snake Game")

# Colors
black =(255, 255, 255)
white = (0, 0, 0)
green = (255, 255, 0)
red = (255, 0, 0)

# Snake and food initialization
snake_pos = [100, 50]
snake_body = [[100, 50], [90, 50], [80, 50]]
food_pos = [random.randrange(1, (width//10)) * 10, random.randrange(1, (height//10)) * 10]
food_spawn = True

# Direction and speed
direction = 'RIGHT'
change_to = direction
snake_speed = 15

# Score
score = 0

def display_score(scr):
    font = pygame.font.SysFont('calibri', 25)
    score_text = font.render(f"Score: {scr}", True, white)
    screen.blit(score_text, [0, 0])

def game_over():
    font = pygame.font.SysFont('calibri', 40)
    over_text = font.render("Game Over!", True, white)
    score_text = font.render(f"Your Score: {score}", True, white)
    screen.blit(over_text, [width // 2 - 100, height // 2 - 40])
    screen.blit(score_text, [width // 2 - 80, height // 2 + 10])

while True:
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            pygame.quit()
            quit()

        if event.type == pygame.KEYDOWN:
            if event.key == pygame.K_UP:
                change_to = 'UP'
            if event.key == pygame.K_DOWN:
                change_to = 'DOWN'
            if event.key == pygame.K_LEFT:
                change_to = 'LEFT'
            if event.key == pygame.K_RIGHT:
                change_to = 'RIGHT'

    if change_to == 'UP' and direction != 'DOWN':
        direction = 'UP'
    if change_to == 'DOWN' and direction != 'UP':
        direction = 'DOWN'
    if change_to == 'LEFT' and direction != 'RIGHT':
        direction = 'LEFT'
    if change_to == 'RIGHT' and direction != 'LEFT':
        direction = 'RIGHT'

    if direction == 'UP':
        snake_pos[1] -= 10
    if direction == 'DOWN':
        snake_pos[1] += 10
    if direction == 'LEFT':
        snake_pos[0] -= 10
    if direction == 'RIGHT':
        snake_pos[0] += 10

    snake_body.insert(0, list(snake_pos))
    if snake_pos[0] == food_pos[0] and snake_pos[1] == food_pos[1]:
        score += 1
        food_spawn = False
    else:
        snake_body.pop()

    if not food_spawn:
        food_pos = [random.randrange(1, (width//10)) * 10, random.randrange(1, (height//10)) * 10]
    food_spawn = True

    screen.fill(black)
    for pos in snake_body:
        pygame.draw.rect(screen, green, pygame.Rect(pos[0], pos[1], 10, 10))
    
    pygame.draw.rect(screen, red, pygame.Rect(food_pos[0], food_pos[1], 10, 10))
    
    # Draw grid lines
    for x in range(0, width, 10):
        pygame.draw.line(screen, (255, 255, 255, 50), (x, 0), (x, height), 1)
    for y in range(0, height, 10):
        pygame.draw.line(screen, (255, 255, 255, 50), (0, y), (width, y), 1)
    
    display_score(score)
    
    if snake_pos[0] < 0 or snake_pos[0] > width-10:
        game_over()
        pygame.display.update()
        pygame.time.wait(2000)
        pygame.quit()
        quit()
    if snake_pos[1] < 0 or snake_pos[1] > height-10:
        game_over()
        pygame.display.update()
        pygame.time.wait(2000)
        pygame.quit()
        quit()
    for block in snake_body[1:]:
        if snake_pos[0] == block[0] and snake_pos[1] == block[1]:
            game_over()
            pygame.display.update()
            pygame.time.wait(2000)
            pygame.quit()
            quit()

    pygame.display.update()
    pygame.time.Clock().tick(snake_speed)

SPACE INVADER
import math
import pygame
import random
from pygame import mixer

# Initialization
pygame.init()

# Display size
screen = pygame.display.set_mode((800, 600))

# Title
pygame.display.set_caption("Space Invader")

# Icon
icon = pygame.image.load("spaceship.png")

# Background sound
mixer.music.load("background.wav")
mixer.music.play(-1)
pygame.display.set_icon(icon)

# Player
playerImg = pygame.image.load("assasin.png")
playerX = 370
playerY = 480
playerX_change = 0

# Enemy
enemyImg = []
enemyX = []
enemyY = []
enemyX_change = []
enemyY_change = []
no_of_enemies = 6

for i in range(no_of_enemies):
    enemyImg.append(pygame.image.load("enemy (1).png"))
    enemyX.append(random.randint(0, 735))
    enemyY.append(random.randint(60, 150))
    enemyX_change.append(3)
    enemyY_change.append(40)

# Background
bgImg = pygame.image.load("background (1).png")

# Bullet
bulletImg = pygame.image.load("bullet.png")
bulletX = 0
bulletY = 480
bulletX_change = 0
bulletY_change = 10
bullet_state = "ready"
score_value = 0

# Text for score display
font = pygame.font.Font("freesansbold.ttf", 32)
textX = 10
textY = 10

# Game over text
game_over_font = pygame.font.Font("freesansbold.ttf", 64)

# Gameover Function
def game_over_text():
    gameover = game_over_font.render("Game Over", True, (255, 255, 255))
    screen.blit(gameover, (200, 250))

# Score Function
def show_score(x, y):
    score = font.render("Score: " + str(score_value), True, (255, 255, 255))
    screen.blit(score, (x, y))

# Collision function
def isCollision(enemyX, enemyY, bulletX, bulletY):
    distance = math.sqrt((math.pow(enemyX - bulletX, 2)) + (math.pow(enemyY - bulletY, 2)))
    if distance < 27:
        return True
    else:
        return False

def player(x, y):
    screen.blit(playerImg, (x, y))

def enemy(x, y, i):
    screen.blit(enemyImg[i], (x, y))

def fire_bullet(x, y):
    global bullet_state
    bullet_state = "fire"
    screen.blit(bulletImg, (x + 16, y + 10))

running = True

# Game window stays on until close
while running:
    screen.fill((0, 0, 0)) # Background Color
    screen.blit(bgImg, (0, 0)) # Background Img
    
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False
        
        if event.type == pygame.KEYDOWN:
            if event.key == pygame.K_LEFT:
                playerX_change = -4
            if event.key == pygame.K_RIGHT:
                playerX_change = 4
            if event.key == pygame.K_SPACE:
                if bullet_state == "ready":
                    bullet_sound = mixer.Sound("laser.wav")
                    bullet_sound.play()
                    bulletX = playerX
                    fire_bullet(bulletX, bulletY)
        
        if event.type == pygame.KEYUP:
            if event.key == pygame.K_LEFT or event.key == pygame.K_RIGHT:
                playerX_change = 0
    
    # Bullet Movement
    if bulletY <= 0:
        bulletY = 480
        bullet_state = "ready"
    
    if bullet_state == "fire":
        fire_bullet(bulletX, bulletY)
        bulletY -= bulletY_change

    playerX += playerX_change

    # Player boundary
    if playerX <= 0:
        playerX = 0
    elif playerX >= 736:
        playerX = 736 # size of player is 64, so we subtract 64 from 800

    # Enemy movement and collision
    for i in range(no_of_enemies):
        # Gameover code
        if enemyY[i] > 400:
            for j in range(no_of_enemies):
                enemyY[i] = 2000
            game_over_text()
            break
        
        enemyX[i] += enemyX_change[i]

        if enemyX[i] <= 0:
            enemyX_change[i] = 3
            enemyY[i] += enemyY_change[i]
        elif enemyX[i] >= 735:
            enemyX_change[i] = -3
            enemyY[i] += enemyY_change[i]

        # Checking collision
        collision = isCollision(enemyX[i], enemyY[i], bulletX, bulletY)
        if collision:
            explosion_sound = mixer.Sound("explosion.wav")
            explosion_sound.play()
            bulletY = 480
            bullet_state = "ready"
            score_value += 1
            enemyX[i] = random.randint(0, 735)
            enemyY[i] = random.randint(50, 150)
        
        enemy(enemyX[i], enemyY[i], i)

    show_score(textX, textY)
    player(playerX, playerY)
    pygame.display.update()

SPACE INVADER -CHATGPT

import pygame
import random
import math

# Initialize Pygame
pygame.init()

# Constants
SCREEN_WIDTH = 800
SCREEN_HEIGHT = 600

# Colors
BLACK = (0, 0, 0)
WHITE = (255, 255, 255)

# Player settings
player_img = pygame.image.load("player.png")
player_x = 370
player_y = 480
player_x_change = 0

# Enemy settings
enemy_imgs = []
enemy_x = []
enemy_y = []
enemy_x_change = []
enemy_y_change = []
num_enemies = 6

for i in range(num_enemies):
    enemy_imgs.append(pygame.image.load("enemy.png"))
    enemy_x.append(random.randint(0, SCREEN_WIDTH - 64))
    enemy_y.append(random.randint(50, 150))
    enemy_x_change.append(4)
    enemy_y_change.append(40)

# Bullet settings
bullet_img = pygame.image.load("bullet.png")
bullet_x = 0
bullet_y = 480
bullet_x_change = 0
bullet_y_change = 10
bullet_state = "ready"

# Score
score = 0
font = pygame.font.Font(None, 36)
text_x = 10
text_y = 10

# Functions
def player(x, y):
    screen.blit(player_img, (x, y))

def enemy(x, y, i):
    screen.blit(enemy_imgs[i], (x, y))

def fire_bullet(x, y):
    global bullet_state
    bullet_state = "fire"
    screen.blit(bullet_img, (x + 16, y + 10))

def is_collision(enemy_x, enemy_y, bullet_x, bullet_y):
    distance = math.sqrt((enemy_x - bullet_x) ** 2 + (enemy_y - bullet_y) ** 2)
    if distance < 27:
        return True
    return False

def show_score(x, y):
    score_display = font.render(f"Score: {score}", True, WHITE)
    screen.blit(score_display, (x, y))

# Create the screen
screen = pygame.display.set_mode((SCREEN_WIDTH, SCREEN_HEIGHT))
pygame.display.set_caption("Space Invaders")

# Main game loop
running = True
while running:
    screen.fill(BLACK)

    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False

        if event.type == pygame.KEYDOWN:
            if event.key == pygame.K_LEFT:
                player_x_change = -5
            if event.key == pygame.K_RIGHT:
                player_x_change = 5
            if event.key == pygame.K_SPACE:
                if bullet_state == "ready":
                    bullet_sound = pygame.mixer.Sound("laser.wav")
                    bullet_sound.play()
                    bullet_x = player_x
                    fire_bullet(bullet_x, bullet_y)

        if event.type == pygame.KEYUP:
            if event.key == pygame.K_LEFT or event.key == pygame.K_RIGHT:
                player_x_change = 0

    player_x += player_x_change

    if player_x < 0:
        player_x = 0
    elif player_x > SCREEN_WIDTH - 64:
        player_x = SCREEN_WIDTH - 64

    for i in range(num_enemies):
        enemy_x[i] += enemy_x_change[i]
        if enemy_x[i] < 0:
            enemy_x_change[i] = 4
            enemy_y[i] += enemy_y_change[i]
        elif enemy_x[i] > SCREEN_WIDTH - 64:
            enemy_x_change[i] = -4
            enemy_y[i] += enemy_y_change[i]

        collision = is_collision(enemy_x[i], enemy_y[i], bullet_x, bullet_y)
        if collision:
            explosion_sound = pygame.mixer.Sound("explosion.wav")
            explosion_sound.play()
            bullet_y = 480
            bullet_state = "ready"
            score += 1
            enemy_x[i] = random.randint(0, SCREEN_WIDTH - 64)
            enemy_y[i] = random.randint(50, 150)

        enemy(enemy_x[i], enemy_y[i], i)

    if bullet_y <= 0:
        bullet_y = 480
        bullet_state = "ready"

    if bullet_state == "fire":
        fire_bullet(bullet_x, bullet_y)
        bullet_y -= bullet_y_change

    player(player_x, player_y)
    show_score(text_x, text_y)

    pygame.display.update()

pygame.quit()

10	 Implement 3D roll ball game using unity			

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Player : MonoBehaviour
{   private Rigidbody rb;
    public float speed;
    public Text wintext;
    public Text countext;
    public int count;

    // Start is called before the first frame update
    void Start()
    {
        rb=GetComponent<Rigidbody>();
        count = 0;
        wintext.text = "";
        SetCountText();
    }

    // Update is called once per frame
    void FixedUpdate()
    {
        float movehorizontal = Input.GetAxis("Horizontal");
        float movevertical = Input.GetAxis("Vertical");
        Vector3 movement = new Vector3(movehorizontal, 0.0f, movevertical);
        rb.AddForce(movement * speed);

    }
    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("pickup"))
        {
            other.gameObject.SetActive(false);
            count = count + 1;
            SetCountText();
        }
    }
    void SetCountText()
    {
        countext.text = "Score:" + count.ToString();
        if (count >= 3)
        {
            wintext.text = "You win!";
        }
    }
}

CAMERA.CS

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Camera : MonoBehaviour
{
    private Vector3 offset;
    public GameObject Player;
    // Start is called before the first frame update
    void Start()
    {
        offset = transform.position - Player.transform.position;
    }

    // Update is called once per frame
    void LateUpdate()
    {
        transform.position = Player.transform.position + offset;
    }
}

Implement 2D UFO game using unity.

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Player : MonoBehaviour
{
    private Rigidbody2D rb;
    public float speed;
    public Text wintext;
    public Text countext;
    public int count;

    // Start is called before the first frame update
    void Start()
    {
        rb = GetComponent<Rigidbody2D>();
        count = 0;
        wintext.text = "";
        SetCountText();
    }

    // Update is called once per frame
    void FixedUpdate()
    {
        float movehorizontal = Input.GetAxis("Horizontal");
        float movevertical = Input.GetAxis("Vertical");
        Vector2 movement = new Vector2(movehorizontal, movevertical);
        rb.AddForce(movement * speed);

    }
    void OnTriggerEnter2D(Collider2D other)
    {
        if (other.tag=="pickup")
        {
            other.gameObject.SetActive(false);
            count = count + 1;
            SetCountText();
        }
    }
    void SetCountText()
    {
        countext.text = "Score:" + count.ToString();
        if (count >= 3)
        {
            wintext.text = "You win!";
        }
    }
}

CAMERA CS

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Camera : MonoBehaviour
{
    private Vector3 offset;
    public GameObject Player;
    // Start is called before the first frame update
    void Start()
    {
        offset = transform.position - Player.transform.position;
    }

    // Update is called once per frame
    void LateUpdate()
    {
        transform.position = Player.transform.position + offset;
    }
}
