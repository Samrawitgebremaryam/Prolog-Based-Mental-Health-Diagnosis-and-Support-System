% questions.pl
% File containing the questions for the user

% Ask multiple-choice questions
ask_multiple_choice(Question, Options) :-
    write(Question), nl,
    write('Options: '), write(Options), nl,
    read(Answer),
    (   member(Answer, Options) ->
        assertz(answer(Question, Answer)),  % Store the answer
        !  % Continue to the next question
    ;   write('Invalid choice, try again.'), nl,
        ask_multiple_choice(Question, Options)  % Repeat if invalid
    ).

% Question about food intake behavior
ask_food_intake :-
    ask_multiple_choice('How would you describe your typical food intake behavior?', [restricted, normal, excessive]).

% Question about mentality
ask_mentality :-
    ask_multiple_choice('How would you describe your mentality?', [normal, stressed, anxious]).

% Additional questions can follow the same structure
ask_feelings_of_sadness :-
    ask_multiple_choice('Do you often feel sad?', [yes, no]).

ask_elevated_moods :-
    ask_multiple_choice('Do you experience elevated moods?', [yes, no]).

ask_fatigue :-
    ask_multiple_choice('Do you often feel fatigued?', [yes, no]).

ask_aggressive_behavior :-
    ask_multiple_choice('Do you have aggressive behavior?', [yes, no]).

ask_abnormal_eating_habits :-
    ask_multiple_choice('Do you have abnormal eating habits?', [yes, no]).

ask_strong_desire_to_be_thin :-
    ask_multiple_choice('Do you have a strong desire to be thin?', [yes, no]).

ask_trauma :-
    ask_multiple_choice('Have you experienced any major trauma?', [yes, no]).
