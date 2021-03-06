%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function envMap = envmapAngular2LatLong(angularEnvMap, dim)
%   Converts an environment map from the angular format to the lat-long format
%
% Input parameters:
%  - angularEnvMap: environment map in angular format
%  - dim: dimensions of the output environment map (dim x 2*dim)
%
% Output parameters:
%  - envMap: environment map in lat-long format
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function envMap = envmapAngular2LatLong(angularEnvMap, dim)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Copyright 2006-2009 Jean-Francois Lalonde
% Carnegie Mellon University
% Do not distribute
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Get the 3-D directions
[dxLatLong, dyLatLong, dzLatLong] = envmapLatLong2World(dim);

%% Get the angular environment map representation
envMap = envmapWorld2Angular(angularEnvMap, dxLatLong, dyLatLong, dzLatLong);
