using HorizonSideRobots

r=Robot(16,16; animate=true)

#ЭТО КРЕСТИК СТРОИТ
#= function mark_kross(r::Robot) 
    for side in (HorizonSide(i) for i=0:3)
        putmarkers!(r,side)
        move_by_markers(r,inverse(side))
    end
    putmarker!(r)
end

putmarkers!(r::Robot,side::HorizonSide) = 
while isborder(r,side)==false 
    move!(r,side)
    putmarker!(r)
end

move_by_markers(r::Robot,side::HorizonSide) = 
while ismarker(r)==true 
    move!(r,side) 
end

inverse(side::HorizonSide) = HorizonSide(mod(Int(side)+2, 4)) 

function gocentre(r::Robot)
    for i in (1:8)
    move!(r,HorizonSide(3))
    move!(r,HorizonSide(0))
    end
end

gocentre(r)
mark_kross(r)=#

#ЭТО ГРАНИЦУ СТРОИТ
#=function gobok(r::Robot)
    while isborder(r,HorizonSide(3))==false
    move!(r,HorizonSide(3))
    end
end

function buildp(r::Robot) 
hz = 0
while hz < 4 
    if isborder(r,HorizonSide(hz))==false
        move!(r,HorizonSide(hz))
        putmarker!(r)
    else
        hz += 1
    end
end
end

gobok(r)
buildp(r)=#

#ЭТО ЛЕСЕНКУ СТРОИТЬ ИСКОСОКОВУЮ

#=function build_lesenka(r::Robot)
    while isborder(r,HorizonSide(3))==false
        putmarker!(r)
        move!(r,HorizonSide(3))
        move!(r,HorizonSide(0))
    end
    putmarker!(r)
    while isborder(r,HorizonSide(2))==false
        move!(r,HorizonSide(2))
    end
    putmarker!(r)
    while isborder(r,HorizonSide(1))==false
        move!(r,HorizonSide(1))
        move!(r,HorizonSide(0))
        putmarker!(r)
    end
end

build_lesenka(r)=#

#ДЕЛАЛ ШОБОЛОВ ДМИТРИЙ КМБО-06-22