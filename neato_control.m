neato_max_speed = 0.3;
neato_min_speed = -0.3;
wheel_dist = 0.245;

syms u t

u_range = [0, 3.2];

rainbow_road_center_line = [
            0.3960 * cos(2.65 * (u + 1.4)), ...
            -0.99 * sin(u + 1.4)
];

rainbow_road_center_line_vel = [
    diff(ranbow_road_center_line(1)), ...
    diff(rainbow_road_center_line(2))
];

rainbow_road_center_line_speed = magnitude(rainbow_road_center_line_vel);

rainbow_road_center_line_tangent_vec = rainbow_road_center_line_vel ./ ...
                                        rainbow_road_center_line_speed;

rainbow_road_center_line_tangent_vec_deriv = diff( ...
                                    rainbow_road_center_line_tangent_vec);
rainbow_road_center_line_norm_vec = ...
                     rainbow_road_center_line_tangent_vec_deriv ./ ...
                     magnitude(rainbow_road_center_line_tangent_vec_deriv);
