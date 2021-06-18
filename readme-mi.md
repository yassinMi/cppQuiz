15-06-2021 8:49
Both A *time managment challenge*, and a little game for my c++ training 
# cpp quiz desctop app with .NET c-sharp. let's get it done within 24 hours!
** the timer will start when I finish up writing down the general note regardng the conception and goals of the app in a fairly detailed maneer for you not to get lost, but the real project planing, if any, is on you're own responsability,

goals:
- get the app(game) working as folow:
  the user(player/quiz author) can create .cppq files, a cppq file would contain one signle question, 
  all question have the form of : what would be the output of this program ,
  answers could be free (meaning the player will have to type the answer string) or in a  multiple-choice fashion, (3-5 radio boxes and this is not necessary, lets stick to the one format mentioned before),
- the app will feature a cpp compiler, as it's the only safe way to find out the correct answers
- a folder with some cppq files in it is what defines a quiz, which is merly a combination of questions put together in a certain order, questions files should be named as 1.cppq, 2.cppq 3.cppa .. and so on, you can put as much question as you like ,
 messing up the order will result in errors, 
 quiz folder's name is the quize name, folders could be imorted from the app, (also a 'factory' set of quizes made by me will be available in the start window, they may possibly be extendable by the user through manimulating what's in the Factory directory)
# cppq files
- the app won't support any libraries besides the basic ones that it automatically includes(iostream,cmath,iomanip,..), the code in cppq file should not involve any include derictives or even the main function declaration, only what's inside the main body, also the visible code for the player will look exactly the same 
***example: 1.cppq*** 
```cpp 
int a=1, b2, c=3;
cout<<a<<b<<c <<flush ;
```
as you might have assumemd the return statment is automatically added, as well as using namespace std

a program may fail to compile, this should be approprately handled by the app, in fact there would be a "the program will not compile" checkBox next to the answer bar aailable for the playe, that said the author may write code that causes compilation error deliberately 

the user's answer should not get trimmed or anything, white spaces count, and the string read from the stdout is strictly compared with the one the user has typed, there's only a wrong answer and a correct answer nothing in between

the evaluation doesn't occur in quiz time, all evaluations, including compilations are executed after the user finishes taking the quiz

the previous answers should be ediable for the user at any time during the test (next and back buttons)

# the End Screen
after the user answers and/or skips all the available questions, the answers get evaluated, then a ressults screen appears, presenting the correct and wrong answers all together (use colors and descent UI here), showing what the user answer was and what the corect ones are for every question, (preferably these items should have a reduced and extended form, to enhance the UI )

the total score then is presented on top of the same screen, taking different forms (make the percentage form look big): 
|88% (15/17)
|15 correct, 1 skiped, 1 wrong
the score is simply computed giving 1 full point for correct answesr and 0 for sikiped/wrong ones



  
- no themes, extensive UI is required but remember, this is a game, it should at leat feel like one, animations are highely appreciated and avoid using a menu bar or the default windows widgets.

- that said ,when it coms to presenting the code you probably don't wanna go full white, at least the reserved words should look highlighted in some way, and maybe strings and operators too (: if you really have the time for that


ill start the timer (thus the work) when i feel like it, but i'll make sure to stick to the deadline and do the best, the product will be delivered at 24h as is(a nice installer and file associations and icons all these count! and adds to the overall value), and then we can see how good you did, yes the project accepts further develepment but that's not going to count in the challenge -10:19 rn



OK LETS DO THIS, timer start now at 11:04, tomorow at 11:04 we well see what we did



# DONE 11:10AM 
here i am, yes i cheated 4 mins but ok
i'm not proud of my work nyway, the text editor- like part was fun and i think i did great job there as it only took me litle time
this version is kinda distrubitable the only thing it needs is g++ in your path, but it's totally uncomplete
even the finish screen is not there, a total failre
but tbh i only worked like half of the time i definitely could do better

anw, i'll leav it for now, back to studdy




