function [dx,dy,dz,valid] = envmapSkyAngular2World(dim)
% Converts from the sky angular format to the [x,y,z] world directions
% 
%   [dx,dy,dz,valid] = envmapSkyAngular2World(dim)
%   
%
% Input parameters:
%  - dim: the sky angular environment dimensions
%
% Output parameters:
%  - [dx,dy,dz]: world directions
%
% ----------
% Jean-Francois Lalonde

% Get the desired world coordinates from the output angular map
[u,v] = meshgrid(0:1/(dim-1):1, 0:1/(dim-1):1);

thetaAngular = atan2(-2.*v+1, 2.*u-1); % azimuth
phiAngular = pi/2.*sqrt((2.*u-1).^2 + (2.*v-1).^2); % zenith

dx = sin(phiAngular).*cos(thetaAngular);
dz = sin(phiAngular).*sin(thetaAngular);
dy = cos(phiAngular);

if nargout > 3
    r = (u-0.5).^2 + (v-0.5).^2;
    valid = r <= .25; % .5^2
end

