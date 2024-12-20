% main.pl
% Entry point for the Mental Health Diagnosis Expert System

% Load the knowledge base, rules, and questions
:- consult('rules.pl').       % Load the rules for diagnosing
:- consult('questions.pl').   % Load the questions to ask the user

% Main function to start the diagnosis process
start_diagnosis :-
    write('Welcome to the Mental Health Diagnosis System!'), nl,
    write('Please answer the following questions to help us identify the condition.'), nl, nl,
    ask_food_intake, nl,  % First question
    ask_mentality, nl,    % Second question
    ask_feelings_of_sadness, nl,
    ask_elevated_moods, nl,
    ask_fatigue, nl,
    ask_aggressive_behavior, nl,
    ask_abnormal_eating_habits, nl,
    ask_strong_desire_to_be_thin, nl,
    ask_trauma, nl,
    diagnose, nl.   % Diagnose and provide results

% Diagnose the condition based on user input
diagnose :-
    write('Diagnosing...'), nl,
    (   find_diagnosis(Diagnosis)
    ->  display_diagnosis(Diagnosis)
    ;   write('No diagnosis found. Please consult a professional for further help.'), nl
    ).

% Display the diagnosed condition with advice
display_diagnosis(Diagnosis) :-
    write('Condition diagnosed: '), write(Diagnosis), nl,
    prevalence(Diagnosis, Prevalence),
    write('Prevalence: '), write(Prevalence), nl,
    provide_advice(Diagnosis).

% Provide personalized advice based on diagnosis
provide_advice(Diagnosis) :-
    advice(Diagnosis), nl,
    severity_advice(Diagnosis), nl,
    self_help_tips(Diagnosis).
