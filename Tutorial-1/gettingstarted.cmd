rem chdir

rem chdir

rem magick convert images\pv.jpg -paint 20 pv_p.jpg
rem magick convert images\christmas.jpg -paint 20 christmas_p.jpg
rem magick convert images\waikiki.jpg -paint 3 images\waikiki_p.jpg

rem christmas + swirl!
magick convert images\christmas.jpg -paint 20 -swirl 180 christmas_ps.jpg

rem order of args doesnt matte
magick convert images\christmas.jpg -swirl 180 -paint 20 images\christmas_sp.jpg

rem reverse direction
magick convert images\christmas.jpg -swirl -360 -paint 20 images\christmas_neg_sp.jpg

rem place on top
magick convert images\christmas_p.jpg -gravity center images\waikiki.jpg -composite -matte images\output.png

rem image resize
magick images\waikiki.jpg -resize x300 images\waikiki_resized.jpg

magick images\christmas_neg_sp.jpg -resize 700x550 images\christmas_neg_sp_smaller.jpg

rem place swirling christmas on otherway swirling christmas
magick convert images\christmas_neg_sp.jpg -gravity center images\christmas_neg_sp_smaller.jpg -composite -matte images\output2.png
magick convert images\output2.png -paint 10 -swirl 30 images\output2_s.png


