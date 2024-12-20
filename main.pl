% main.pl
% Entry point for the Mental Health Diagnosis Expert System

% Load the knowledge base, rules, and questions
:- consult('knowledge_base.pl').
:- consult('rules.pl').
:- consult('questions.pl').

% Main function to start the diagnosis process
start_diagnosis :-
    write('Welcome to the Mental Health Diagnosis System!'), nl,
    write('Please answer the following questions to help us identify the condition.'), nl, nl,
    ask_food_intake, nl,
    ask_mentality, nl,
    ask_feelings_of_sadness, nl,
    ask_elevated_moods, nl,
    ask_fatigue, nl,
    ask_aggressive_behavior, nl,
    ask_abnormal_eating_habits, nl,
    ask_strong_desire_to_be_thin, nl,
    ask_trauma, nl,
    diagnose, nl.

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
