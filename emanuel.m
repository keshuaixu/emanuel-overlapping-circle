% R = radii of the circles
% d = distance between two centers
syms R d positive;

theta = acos((d / 2) / R) * 2;

% https://en.wikipedia.org/wiki/Circular_segment
area_circular_segment = (R^2 / 2) * (theta - sin(theta));

% the area you are looking for
overlapped_area = simplify(2 * area_circular_segment)

%%
overlapped_area_fun = matlabFunction(overlapped_area, 'Vars',[R d]);

% plug in the R below
R_val = 1;
d_vals = linspace(R_val / 2, R_val * 2, 1000);

plot(d_vals, overlapped_area_fun(R_val, d_vals));
xlabel('distance between centers (radius = 1)')
ylabel('overlapped area')





