% questions.pl
% Logic for asking questions to the user and processing responses

:- dynamic(answer/2).  % This dynamic predicate will store user answers

% Ask a simple yes/no question with predefined options
ask_question(Question, Options) :-
    write(Question), nl,
    write('Options: '), write(Options), nl,
    read(Answer),
    (member(Answer, Options) -> assertz(answer(Question, Answer)) ;
    write('Invalid choice, try again.'), nl, ask_question(Question, Options)).

% Ask specific questions with predefined answers

% Ask about food intake behavior (for eating disorders)
ask_food_intake :-
    ask_question('How would you describe your typical food intake behavior?', [restricted, normal, excessive]).

% Ask about mentality (for mental health conditions)
ask_mentality :-
    ask_question('How would you describe your mentality regarding your body or self-image?', [positive, negative, neutral]).

% Ask about symptoms (specific conditions)
ask_symptom(Symptom) :-
    ask_question('Do you experience the following symptom: ' + Symptom, [yes, no]).

% Ask about feelings of sadness (for depression)
ask_feelings_of_sadness :-
    ask_question('Do you experience frequent feelings of sadness or hopelessness?', [yes, no]).

% Ask about elevated moods (for bipolar disorder)
ask_elevated_moods :-
    ask_question('Do you experience periods of unusually elevated mood or excitement?', [yes, no]).

% Ask about fatigue (for bipolar disorder)
ask_fatigue :-
    ask_question('Do you often feel fatigued or drained, even after rest?', [yes, no]).

% Ask about aggressive behavior (for bipolar disorder)
ask_aggressive_behavior :-
    ask_question('Do you experience aggressive behavior or irritability?', [yes, no]).

% Ask about abnormal eating habits (for eating disorders)
ask_abnormal_eating_habits :-
    ask_question('Do you engage in any abnormal eating habits such as binge eating or purging?', [yes, no]).

% Ask about strong desire to be thin (for eating disorders)
ask_strong_desire_to_be_thin :-
    ask_question('Do you have a strong desire to be thin or feel pressure to achieve a certain body image?', [yes, no]).

% Ask about traumatic experiences (for PTSD)
ask_trauma :-
    ask_question('Have you experienced any traumatic events, such as war or personal violence?', [yes, no]).
