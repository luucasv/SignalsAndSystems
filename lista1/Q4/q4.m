systems_info = zeros(3, 4);

systems_info(1, 1) = isInvariant(@sa, 100);
systems_info(1, 2) = isLinear(@sa, 100);
systems_info(1, 3) = isCausal(@sa, 100);
%systems_info(1, 4) = isStable(@sa, 100);

systems_info(2, 1) = isInvariant(@sb, 100);
systems_info(2, 2) = isLinear(@sb, 100);
systems_info(2, 3) = isCausal(@sb, 100);
%systems_info(2, 4) = isStable(@sb, 100);

systems_info(3, 1) = isInvariant(@sc, 100);
systems_info(3, 2) = isLinear(@sc, 100);
systems_info(3, 3) = isCausal(@sc, 100);
%systems_info(3, 4) = isStable(@sc, 100);

systems_info

tab = {"-" "Linear", "Invariante no tempo", "Causal", "Estavel";...
		"system_a", systems_info(1, 1), systems_info(1, 2), systems_info(1, 3), systems_info(1, 4);...
		"system_b", systems_info(2, 1), systems_info(2, 2), systems_info(2, 3), systems_info(2, 4);...
		"system_c", systems_info(3, 1), systems_info(3, 2), systems_info(3, 3), systems_info(3, 4);}
