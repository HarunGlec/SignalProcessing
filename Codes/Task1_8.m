imread Read image from graphics file.
A = imread(FILENAME,FMT) reads a grayscale or color image from the file
    specified by the string FILENAME. If the file is not in the current
    directory, or in a directory on the MATLAB path, specify the full 
    pathname.
    
imwrite Write image to graphics file.
imwrite(A,FILENAME,FMT) writes the image A to the file specified by
    FILENAME in the format specified by FMT.
    
imagesc Scale data and display as image.
    imagesc(...) is the same as IMAGE(...) except the data is scaled
    to use the full colormap.
    
    imagesc(...,CLIM) where CLIM = [CLOW CHIGH] can specify the
    scaling.
 
colormap Color look-up table.
    colormap(MAP) sets the current figure's colormap to MAP.
    colormap('default') sets the current figure's colormap to
    the root's default, whose setting is JET.