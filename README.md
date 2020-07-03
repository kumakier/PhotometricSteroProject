# PhotometricSteroProject
Master Thesis at Surrey University

This is an MATLAB implement of an basic photometric stereo algorithm using the least square method.
It looks at the 4 capture images and the caculated light directions. The surface normals is computed using a linear system that captures physics information.
This information is the pixels intensity in proportional to the dot product between the light direciton and the surface normal of the pixel.

Once the surface normal is caculated, the height map is solved capturing the relationship between the surface normal and the vector formed by that pixel and its neighbour.

Together they produce a 3D Reconstruction of the captured image.
