function distancePlusProche = distance_to_obstacle(position)
    environement

    nb_obstacles = size(centres_obs, 1);
    distances = zeros(nb_obstacles, 1);
    
    for i = 1:nb_obstacles
        distance_centre = norm(position - centres_obs(i, :));

        distance_bord = distance_centre - rayon_obs(i);
        
        % Si la position est à l'intérieur de l'obstacle, la distance est négative
        if distance_bord < 0
            distances(i) = -distance_bord;
        else
            distances(i) = distance_bord;
        end
    end
    
    distancePlusProche = min(distances);
end
