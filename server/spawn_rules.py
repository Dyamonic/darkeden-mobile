"""Race-independent monster exclusions matching map safe areas and portals."""
import math

def contains_polygon(points,x,y):
    inside=False
    for a,b in zip(points,points[1:]+points[:1]):
        cross=(b[0]-a[0])*(y-a[1])-(b[1]-a[1])*(x-a[0])
        if abs(cross)<1e-9 and min(a[0],b[0])<=x<=max(a[0],b[0]) and min(a[1],b[1])<=y<=max(a[1],b[1]):return True
        if (a[1]>y)!=(b[1]>y) and x<(b[0]-a[0])*(y-a[1])/(b[1]-a[1])+a[0]:inside=not inside
    return inside

def exclusion_mask(width,height,rectangles,polygons,portals,whole=False):
    mask=bytearray([1 if whole else 0])*(width*height)
    if whole:return mask
    for rect in [r for r in (rectangles or []) if int(r['Flag'])&0x17]+list(portals or []):
        top=max(0,int(rect['Top']));bottom=min(height-1,int(rect['Bottom']))
        if bottom<top:continue
        for m in range(max(0,int(rect['Left'])),min(width-1,int(rect['Right']))+1):
            mask[m*height+top:m*height+bottom+1]=b'\1'*(bottom-top+1)
    for points in polygons:
        if len(points)<3:continue
        for m in range(max(0,math.floor(min(p[0] for p in points))),min(width-1,math.ceil(max(p[0] for p in points)))+1):
            for n in range(max(0,math.floor(min(p[1] for p in points))),min(height-1,math.ceil(max(p[1] for p in points)))+1):
                if not mask[m*height+n] and contains_polygon(points,m,n):mask[m*height+n]=1
    return mask
