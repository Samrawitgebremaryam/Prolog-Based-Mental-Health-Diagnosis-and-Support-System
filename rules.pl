% rules.pl
% Rules for diagnosing disorders and providing advice

% Rule to diagnose disorders based on symptoms and other conditions
find_diagnosis(anorexia_nervosa) :- 
    food_amount(restricted),
    symptom(abnormal_eating_habits),
    mentality(strong_desire_to_be_thin).

find_diagnosis(bulimia_nervosa) :- 
    food_amount(excessive),
    symptom(abnormal_eating_habits),
    mentality(strong_desire_to_be_thin).

find_diagnosis(depression) :-
    symptom(feelings_of_sadness),
    severity(moderate_or_severe).

find_diagnosis(bipolar_disorder) :-
    symptom(elevated_moods),
    symptom(fatigue),
    symptom(aggressive_behavior).

% Severity-based advice
severity(mild) :- 
    write('For mild conditions, therapy, and lifestyle changes may help significantly.').

severity(moderate) :- 
    write('For moderate conditions, seeking professional help is recommended. Therapy can be very beneficial.').

severity(severe) :- 
    write('For severe conditions, immediate professional help is necessary. Consider seeing a mental health provider.').

% Provide personalized advice based on diagnosis
advice(depression) :-
    write('For severe depression, immediate help is crucial. Please contact a mental health professional or a helpline.').

advice(anxiety) :-
    write('For anxiety, cognitive-behavioral therapy (CBT) can be highly effective. Practice relaxation techniques regularly.').

% Self-help tips based on diagnosis
self_help_tips(depression) :-
    write('Self-help Tips for Depression:'), nl,
    write('- Establish a routine, even if it feels hard at first.'), nl,
    write('- Engage in physical activities like walking or yoga.'), nl,
    write('- Reach out to a trusted friend or family member.'), nl.

self_help_tips(anxiety) :-
    write('Self-help Tips for Anxiety:'), nl,
    write('- Practice breathing exercises to calm your nervous system.'), nl,
    write('- Limit caffeine and sugar intake as they can trigger anxiety.'), nl,
    write('- Write down your worries to reduce mental clutter.'), nl.
