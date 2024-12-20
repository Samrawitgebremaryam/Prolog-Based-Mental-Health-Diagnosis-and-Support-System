% knowledge_base.pl
% Facts about disorders, prevalence, and risk factors

% Prevalence statistics for disorders
prevalence(anxiety, 301000000).
prevalence(depression, 280000000).
prevalence(bipolar_disorder, 40000000).
prevalence(ptsd, high_in_conflict_areas).
prevalence(schizophrenia, 24000000).
prevalence(eating_disorders, 14000000).
prevalence(disruptive_behavior, 40000000).
prevalence(neurodevelopmental_disorders, diverse).

% Risk factors associated with disorders
risk_factors(mental_disorder, [poverty, violence, disability, inequality]).
risk_factors(anxiety, [stressful_life_events]).
risk_factors(depression, [genetic_disposition, trauma]).
risk_factors(bipolar_disorder, [genetic_disposition]).
risk_factors(ptsd, [trauma, conflict]).
risk_factors(schizophrenia, [genetic_disposition]).
risk_factors(eating_disorders, [societal_pressure, low_self_esteem]).
risk_factors(disruptive_behavior, [family_environment, childhood_adversity]).
risk_factors(neurodevelopmental_disorders, [genetic_disposition, prenatal_exposure]).
