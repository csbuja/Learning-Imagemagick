rem this is gimp for the command-line

rem black and white - using gimp for the command line - for writing script - bulk image manipulation -automating something

rem displaying
magick display images\christmas

rem negate
magick convert images/pv.jpg -negate images/pv_n.jpg

rem monochrome is black and white - grayscale is not really black and white - gray spots are just dots
magick convert images/pv.jpg -monochrome images/pv_m.jpg

magick convert images/pv.jpg -colorspace Gray images/pv_grayscale.jpg


rem 0xn  larger n t he more blurry
magick convert images\christmas.jpg -blur 0x5 images\christmas_blur.jpg



rem embossing - high constrast replace with black, low constrast replace with gray
set x="10"
magick convert images\christmas.jpg -emboss %x% images\christmas_embossed_%x%.jpg

set x="20"

rem shade - change the light source
magick convert images\christmas.jpg -shade 120x45 images\christmas_shaded.jpg


rem charcoal higher number the thicker the lines

magick convert images\christmas.jpg -charcoal 5 images\christmas_charc.jpg 


rem brightness - 100 is normal - less than 100 darker - greater tha n100 brighter
magick convert images\christmas_charc.jpg -modulate 200 images\christmas_charc_brighter.jpg

rem edge detection
magick convert images\christmas.jpg -edge 10 images\christmas_edge.jpg

rem does not crop image it builds border out
magick convert images\christmas.jpg -bordercolor green -border 10 images\christmas_border.jpg

rem saturation after comma - saturation is the intensity or colors - making saturation 0 makes it grayscale
magick convert images\pv.jpg -modulate 100,400 images\pv_saturated.png

rem oil painting
magick convert images\pv.jpg -paint 5 images\pv_painted.png

rem solarization - smaller the percent the higher the percentage
magick convert images\christmas.jpg -solarize 40% images\christmas_solarized.png


rem sorted in alphanumerical order - animate a gif
magick convert images\christmas* animated.gif

rem convert d
magick convert animated.gif gif_images\xmas.png


mplayer -vo png nameofvideofile.avi

magick convert *.png animatioooonnn.gif

magick convert images\wai_saturated.png -background black -vignette 1000x3000 images\wai_vin.png
