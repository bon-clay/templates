import pygame as pg

pg.init()

DISPLAY = DW, DH = 800, 600
FPS = 60

display = pg.display.set_mode(DISPLAY)
clock = pg.time.Clock()

while True:
    for e in pg.event.get():
        if e.type == pg.QUIT:
            exit()

    display.fill(pg.Color("black"))



    pg.display.update()
    clock.tick(FPS)
