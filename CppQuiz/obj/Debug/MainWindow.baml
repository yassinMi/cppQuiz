   M S B A M L   `   `   `  ����B  >CppQuiz, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:CppQuizCppQuiz  5   	       CppQuiz.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:CppQuiz     5   	   c _Microsoft.Expression.Drawing, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35=ed4http://schemas.microsoft.com/expression/2010/drawing  5   	   $��429.8��5      $��618.325��6)   &   System.Windows.Media.TextOptions    TextFormattingMode$  Display=�69    J� SnapsToDevicePixels .  � UseLayoutRounding . ���	#FF1A1A1D � 
ResizeMode$ CanMinimize=�6�    � Icon$C =media/cpp-16-white-lightblue-transparant-bg-black-counter.png��6�    � 	Resources 5	         CppQuiz.EvalToBrush   EvalToBrush"   CppQuiz.EqualityToVisibility  EqualityToVisibility)   #CppQuiz.BooleanToVisibilityReversed  BooleanToVisibilityReversed   BooleanToVisibilityConverter   CppQuiz.InvertBoolean  InvertBoolean  ButtonSimpleTemplate �� 
TargetType � 	Resources  Key �� TargetProperty	 �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame
 O� KeyTime O� Value ��Name J� Opacity �� Triggers :� RoutedEvent P� Property P� Value N� ExitActions ��Name  UnFocus N� EnterActions 	 Focus 	 ButtonControlTemplate1 
 	menustyle �� 
TargetType �� BasedOn �� Property  SimpleButtonFocusVisual �� Value  NormalBrush  NormalBorderBrush �Name �� Padding �� 
TargetName  DisabledBackgroundBrush  DisabledBorderBrush  DisabledForegroundBrush  userInputTBsTYLE-  'System.Windows.Input.KeyboardNavigation �� CornerRadius ��Name  SimpleScrollViewer  AnimateResults  QuizCardButton � Cursor �� EndPoint  �� 
StartPoint! � Color" � Offset# � RowDefinitions$ ��Name% �� RelativeSource& �� StringFormat  ButtonControlAugments' ��Name( J� RenderTransformOrigin  quizzesCardsLstItemTemplate) �� DataType8  2System.Windows.Media.Animation.EasingColorKeyFrame* �� KeyTime+ �� Value, �� FallbackValue- �� Triggers 	 Hover  UnHover % !quizzesCardsLstItemsPanelTemplate. K� IsItemsHost  miLightblueSelectionFram/ �� Color 2 .quizzesCardsListGeneraedItemsCounainerTemplate0 �� AncestorType1 ]� 
Conditions2 �� Property3 �� Value  simpleListBoxWithWrapPanel  WindowBackgroundBrush  SolidBorderBrush  	scrolfalt��%,  &	        &	      &	 &     &	 9     &	 L     &	 _     7  7  &		 n    7  7  &	
 }    &	 (
    &	 �    &	 t    &	 �    7  7  &	 �    7  7  &	 r#    &	 �#    &	 �#    &	 (      5   
   6     5   
   6%     5   
   6,   �� 5   
   6'     5   
   6   �� 5   
   " ��67    5      ���� 5      	Focus .��5      U� $ (UIElement.Opacity)�64   $	 border��6d   .\�5        $
 0:0:0.1��6/   $ 1Q�6A   5      5      �� 5      UnFocus .��5      U� $ (UIElement.Opacity)�64   $	 border��6d   .\�5        $
 0:0:0.1��6/   $
 0.75Q�6A   5      5      5      .R�5      �� $ border��6   #��z��6%   #��z��6Q   $��1q�6{   $
 0.75Q�6�   ._�5      �� $��Center=�6#   $��Center=�6@   5       5       :� 5!      $ FrameworkElement.Loaded��6   P� 5"       �@J�IsMouseOver .  5#      �� 5$      $ UnFocus_BeginStoryboard��6*   8��  6K    5&      �� 5'      $ Focus_BeginStoryboard��6*   8�� 6I   5)      5+      �� 5,   
   " ��69    5-      ���� 5.      	Focus .��5/      U� $ (UIElement.Opacity)�64   $	 border��6d   .\�50        $
 0:0:0.1��6/   $ 1Q�6A   51      52      �� 53      UnFocus .��54      U� $ (UIElement.Opacity)�64   $	 border��6d   .\�55        $
 0:0:0.1��6/   $
 0.75Q�6A   56      57      58      .R�59      �� $ border��6   #��z��6%   #��z��6Q   $��0q�6{   $
 0.75Q�6�   ._�5:      �� $��Center=�6#   $��Center=�6@   5;       5<      :� 5=      $ FrameworkElement.Loaded��6   P� 5>       �@J�IsMouseOver .  5?      �� 5@      $ UnFocus_BeginStoryboard��6*   8��  6K    5B      �� 5C      $ Focus_BeginStoryboard��6*   8�� 6I   5E      5G      �� 5H   
   " ��6"    6?   Z� .�5I      ��  �@�FocusVisualStyle# �  61   �� 5J       � ��# �  6+   �� 5K       � ��# �  6,   �� 5L       � �� 5M      �� 5N      " ��6&   .R�5Q      � $
 Grid��6   .+�5R      �� $ Border��6%   #��z��65   #��z��6_   #��z��6�   # z��6�   �� 5V      #��z��6/   #��z��6r   #��z��6�   ��. 6�   5W       5Z      P� 5[       �@J�IsMouseOver . . �5\   "   �� $ Border��6?    � �� �	#FF3636366S   5]      P� 5^       � �� . . �5_   "   �� $ Border��6?    � �� �	#FF1D1D1D6S   �� 5`   "   $ Border��6@    � �� �	#FFBDBDBD6T   5a      P� 5b       � {� . 6;   P� 5c       � {� .  . �5d   "   �� # �  6?   $ Border��6q    � ���� 5e   "   # �  6@   $ Border��6n    � ���� 5f   "   # �  6?    � ��5g      5i      5k      5l      �� 5m   
   " ��6)   .�5n      ��  �@ TabNavigation$
 None=�6A   �� 5o       �@�FocusVisualStyle 61   Z� �� 5p       �@J�	AllowDrop . 6*   �� 5q       � �� 5r      �� 5s      " ��6&   .R�5t      � .+�5u      �� $ Border��6%   #��z��65   #��z��6_   $��1q�6�   $ 2q�6�   $ 0��6�   ._�5x   "   �� $ PART_ContentHost��6:   $��0q�6/   #���  6T   #��z��6�   $��Stretch=�6�   $��Stretch=�6�   5z      5{       5|      P� 5}       � {� .  . �5~   "   �� $ Border��6H    �@J�Opacity$	 0.3Q�6<   6H   �� 5   "    � �� �	#FF4D4D4D6?   5�      5�      5�      5�      �� 5�   
   .��5�      U� $ (UIElement.Opacity)�6,   $	 CorrectAnswersLBL��6\   .\�5�        $
 0��6'   $ 0Q�63     5�      $
 0:0:0.2��6'   $ 1Q�69   5�      U� 5�      $ (UIElement.Opacity)�6,   $	 WrongAnswersLBL��6\   .\�5�        $
 0��6'   $ 0Q�63     5�      $
 0:0:0.2��6'   $ 0Q�69     5�      $
 0:0:0.4��6'   $ 1Q�69   5�      U� 5�      $ (UIElement.Opacity)�6,   $	 
SkippedLBL��6\   .\�5�        $
 0��6'   $ 0Q�63     5�      $
 0:0:0.4��6'   $ 0Q�69     5�      $
 0:0:0.6��6'   $ 1Q�69   5�      U� 5�      $ (UIElement.Opacity)�6,   $	 ScoreVisual��6\   .\�5�        $
 0��6'   $ 0Q�63     5�      $
 0:0:0.6��6'   $ 0Q�69     5�      $
 0:0:0.7��6'   $	 0.4Q�69     5�      $
 0:0:0.8��6'   $	 0.8Q�69     5�      $
 0:0:1��6'   $ 1Q�67   5�      5�      �� 5�   
   " ��6'    6D   Z� .�5�      ��  �@�FocusVisualStyle# �  61   �� 5�       � ��# �  6+   �� 5�       � ��# �  6,   �� 5�       � �� 5�      �� 5�      " ��6&   .R�5�      � $
 Grid��6   .+�5�      �� $ border��6%   $
��Auto��65   $
��Auto��6B   ���	#FF838383$��1q�6h   $��0q�6|   $
 Hand��6�   ��5�   "   �� 5�   &   $	 1,0&�6:   $	  0,0&�6I   .��5�   *   � $! 	#991A1A1D��67   $" 0Q�6I   � 5�   *   $! 	#99161616��67   $" 0.495Q�6I   � 5�   *   $! 	#99161616��67   $" 0.977Q�6I   5�   '   ._�5�   "   � # 5�   &   �� 5�   *   $��38 �68   �� 5�   *   $
��Auto �68   .+�5�   &   �� #��z��67   $
��10,0q�6z   #��z��6�   ��. 6�   �� 5�   &   $$ textBlock4_Copy��60   $
��Wrap=�6I   ���	#FFBBBBBB$  Display=�6�   $��Center=�6  $��Center=�6  $��0q�69  $��1��6D  $��12(�6Q  $��Segoe UI)�6_  ��6]   �� *Tag+% �� *TemplatedParent+$& {0} questions��6_  5�   #   5�      5�       5�      P� 5�       �@J�IsKeyboardFocused . 6C   P� 5�       �@J�IsMouseOver . . �5�   "   �� $ border��6@    � �� �	#FFA7C7C66T   5�      P� 5�       � �� . 6;   P� 5�       � {� . 6;   P� 5�       � {� .  . �5�   "   �� # �  6?    � ��5�      5�      5�      5�      �� 5�   
   " ��68    5�      ���� 5�      	Focus .��5�      U� $ (UIElement.Opacity)�64   $	 border��6d   .\�5�        $
 0:0:0.1��6/   $ 1Q�6A   5�      U� 5�      $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�64   $	 contentPresenter��6�   .\�5�        $
 0��6/   $
 1.08Q�6;   5�      U� 5�      $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�64   $	 contentPresenter��6�   .\�5�        $
 0��6/   $
 1.08Q�6;   5�      5�      �� 5�      UnFocus .��5�      U� $ (UIElement.Opacity)�64   $	 border��6d   .\�5�        $
 0:0:0.1��6/   $
 0.75Q�6A   5�      U� 5�      $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�64   $	 contentPresenter��6�   .\�5�        $
 0��6/   $ 1Q�6;   5�      U� 5�      $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�64   $	 contentPresenter��6�   .\�5�        $
 0��6/   $ 1Q�6;   5�      5�      5�      .R�5�      �� $ border��6   #��z��6%   #��z��6Q   $��1q�6{   $
 0.75Q�6�   ._�5�      �� $' contentPresenter��6#   $��Center=�6=   $��Center=�6Z   $( 0.5,0.5&�6u   z�5�      V� 5�      .~�5�      �� �� 5�      �� 5�      T� 5�      5�      5�      5�       5�      :� 5�      $ FrameworkElement.Loaded��6   P� 5�       �@J�IsMouseOver .  5�      �� 5�      $ UnFocus_BeginStoryboard��6*   8��  6K    5�      �� 5�      $ Focus_BeginStoryboard��6*   8�� 6I   5�      :� 5�      $ UIElement.MouseEnter��6   5�      �� 5   
   $) local:QuizHeader��6<    5     ���� 5     	Hover .��5     �� $6 0(TextElement.Foreground).(SolidColorBrush.Color)�63   $	 titleLBL��6�   .g�5       $* 0:0:0.1��6.   $+ 	#FFF7F7F7��6@   5     5     �� 5     UnHover .��5     �� $6 0(TextElement.Foreground).(SolidColorBrush.Color)�63   $	 titleLBL��6�   .g�5	       $* 0:0:0.2��6.   $+ 	#FFDEDCDC��6@   5
     5     5     .R�5     � $��0q�6   .+�5     �� $ border��6   $
��Auto��6)   $
��Auto��66   ���	#FF838383$��0q�6\   $��0q�6p   $
 Hand��6{   ��5     �� 5     $	 1,0&�6.   $	  0,0&�6=   .��5     � $! 	#991A1A1D��6+   $" 0Q�6=   � 5     $! 	#99161616��6+   $" 0.495Q�6=   � 5     $! 	#99161616��6+   $" 0.977Q�6=   5     ._�5     � $��
10,2,10,10q�6   # 5     �� 5     $��38 �6,   �� 5     $
��Auto �6,   .+�5     �� $$ titleLBL��6$   $
��Wrap=�66   ���	#FFDEDCDC$  Ideal=�6�   $��Center=�6�   $��Center=�6�   $��0q�6�   $��0��6�   $��16(�6  $��Segoe UI)�6  ��6J   �� *Name+$, TITLE��6  �� 5     $$ questonsCountLbl��6$   $
��Wrap=�6>   ���	#FFBBBBBB$  Display=�6�   $��Center=�6�   $��Center=�6  $��0q�6#  $��1��6.  $��12(�6;  $��Segoe UI)�6I  $��20��6_  ��6R   �� *QuestionsCount+$, n questions��$& {0} questions��6_  5     5     5      - 5!     :� 5"     $ UIElement.MouseEnter��6   .[�5#     �� $ Hover_BeginStoryboard��6&   8��  6E   5$     :� 5%     $ UIElement.MouseLeave��6   .[�5&     �� $ UnHover_BeginStoryboard��6&   8�� 6G   5'     5)     �� 5*  
   .R�5+     � . . 6   5,     �� 5-  
   $/ 	#FF69CFE6��6;   �� 5.  
   " ��6G   .�5/     ��  � ��
 ���� 6+   �� 50      � �� 6;   �� *HorizontalContentAlignment+% �� "0 ���� 51      � �� 69   �� *VerticalContentAlignment+% �� "0 ���� 52      � ��$ 2,0,0,0q�6(   �� 53      � �� 54     �� 55     " ��6&   .R�56     �� $ Bd��6!   $��1q�6-   
������ # z��6Z    . ���	#FF959595$��10q�6�   ._�57     �� #��z��6/   # z 6r   #��z��6�   58      59     P� 5:      �@��
IsSelected . . �5;  "   �� $ Bd��6@   # �  6P    � ��5<     ]� 5=     1 5>  "   �� 5?  &   2 �@��
IsSelected3 .  6F   �� 5@  &   2 �@J�IsMouseOver3 . 6G   ./�5B  "   �� # � .�6?    � ���� 5C  "   $ Bd��6?    � �� �	#003838386O   �� 5D  "   $ Bd��6@    � �� �	#FFEEEEEE6P   5E     ]� 5F     1 5G  "   �� 5H  &   2 �@J�IsMouseOver3 . 6G   �� 5I  &   2 �@��
IsSelected3 . 6O   ./�5K  "   �� $ Bd��6@   # �  6P    � ��5L     5N     5P     5Q     �� 5R  
   " ��63   .�5S     ��  �@J�SnapsToDevicePixels . 64   �� 5T      � ��# �  6+   �� 5U      � ��# �  6,   �� 5V      � ��$
 Auto=�6K   �� 5W      � ��$
 Auto=�6I   �� 5X      � �� . 6>   �� 5Y      � �� 5Z     �� 5[     " ��6&   .R�5\     � .+�5]     �� $ Border��6%   #��z��65   #��z��6a   �� 5^     $��1q�6+   #���  66   |�.  #��z��6u   #���  6�   $��Disabled=�6�   $��Stretch=�6�   .��5a  "   � $��2q�6,   . . 67   5c     5d      5e     P� 5f      � {� .  . �5g  "   �� # �  6?   $ Border��6q    � ���� 5h  "   # �  6@   $ Border��6n    � ��5i     P� 5j      �@��
IsGrouping . . �5k  "   ��  � �� .  6R   5l     5n     5p     5q     5r     4 � Title$4 CppQuiz (v0.1.1)��5s  2   5 � Triggers5 5t     :� 5u  
   $ FrameworkElement.Loaded��6   .��5w     � .+�5x  
   � -   5        $ mainQuizView��5x     y�6%   �� *CurrentView+6 �� ConverterParameter$
6 quiz��7 �� 	Converter#7 [ # 5y     �� 5z     $��39 �6    �� 5{     $��62 �6    �� 5|     $
��107* �6    �� 5}     $	��77* �6    �� 5~     $��37 �6    .+�5�     � -   5        $ backgroundImg_Copy��5�     $��0q�6/   $��3��6:   $��1��6K   $
 0.04Q�6X   .+�5�     �� -   5        8 ��Name$8 image3��5�     $��0q�6(   $��Center=�63   $	��256��6N   $<��6media/cpp-256-white-lightblue-trans-bg-augmented-c.png��6[   $��Center=�6�   5�     � 5�     -   5        $ 
QuizHeader��5�     9 � ColumnDefinitions9 5�     �� 5�     $
��140* �6'   �� 5�     $	��13* �6'   .+�5�     �� -   5        $$ 
textBlock1��5�     $
��Left=�60   $��10,2.775,0,3.225q�6K   $
��Wrap=�6e   $��18.667(�6�   $��Center=�6�   $��Clear Sans Medium)�6�   ���	#FFA7C7C6$  Ideal=�6  ��6y   �� *CurrentQuiz.Name+$, CPP QUIZ��6  �� 5�     -   5        : ��Name$: 
MenuButton��5�     #��� 	 6F   ���	#FF202425���	#FFAECDCC���	#FFA7C7C6$��0q�6�   $��SimHei)�6�   $
��Bold"�6�   $��14.667(�6�   $��0q�6  $��1��6  $��Center=�6'  $��Center=�6D  $��32��6_  $��32��6j  .��5�     �� -   5        $8 image��5�     $��30��6+   $��30��67   $"��media/menu-30-light-blue.png��6B   5�     � 5�     $��1��6   $��0��6'   $��Right=�61   .+�5�     � -   5        ; �Name$; 	menuPopup��5�     $��Right=�6/   $	��Top=�6K   $��1��6c   $
��Left=�6s   < � VerticalOffset$< 40��6�   $��Slide=�6�   = � 	StaysOpen= .  .��5�     �� ���	#FF101011$	��147��6<   .+�5�     �� -	   5        $: 
HomeButton��5�  %   $
��Home��69   $	��1,2q�6H   $��32��6U   #��� 
 6a   ���	#FF1C1C1C���	#FF727272
�������6�   �� 5�     -
   5        $: loadQuizButton��5�  %   $��	Load quiz��6=   $	��1,2q�6Q   $��32��6^   #��� 
 6�   ���	#FF1C1C1C���	#FF727272
�������6  �� 5�     -   5        $: aboutButton��5�  %   $��About��6:   $	��1,2q�6J   $��32��6W   #��� 
 6c   ���	#FF1C1C1C���	#FF727272
�������6�   5�     5�     5�     5�     � 5�     -   5        $ ResultsPanel��5�     $	��0,4q�6)   $��1��66   y�6C   �� *CurrentQuiz.IsEvaluated+#7 [ $, 	Collapsed��9 5�     �� 5�     $	��157 �6'   �� 5�     $��92 �6'   �� 5�     $��82 �6'   �� 5�     �� 5�     $	��105 �6'   .+�5�     �� -   5        $: RetryButton��5�     $��RETRY��6H   #���  6X   ���	#FF202425���	#FFAECDCC���	#FFA7C7C6$��2q�6�   $��SimHei)�6�   $
��Bold"�6�   $��14.667(�6  $��13,12,14,12q�6  $��4��62  �� 5�     -   5        $$ CorrectAnswersLBL��5�     $��1��67   $��0q�6G   $
��Wrap=�6R   ���	#FF99F577$��Center=�6�   $
��Left=�6�   ��6f   �� *CurrentQuiz.Score.Correct+$, 
Correct: -��$& Correct: {0:D}��6�   �� 5�     -   5        $$ WrongAnswersLBL��5�     $��2��65   $��0q�6E   $
��Wrap=�6P   ���	#FFF5834D$
��Left=�6�   $��Center=�6�   ��6d   �� *CurrentQuiz.Score.Wrong+$, Wrong: -��$& Wrong: {0:D}��6�   �� 5�     -   5        $$ 
SkippedLBL��5�     $��3��60   $��0q�6@   $
��Wrap=�6K   ���	#FFF5834D$
��Left=�6�   $��Center=�6�   ��6_   �� *CurrentQuiz.Score.Skiped+$, 	Skiped: -��$& Skiped: {0:D}��6�   � 5�     -   5        $ ScoreVisual��5�     $��0q�6,   $��48��67   $��48��6C   $��Center=�6N   $��Center=�6k   .+�5�     %	  Microsoft.Expression.Shapes.Arc	  -   5        > 	 Name$> bgRing��5�     ? 	  ArcThickness$? 5Q�6-   @ 	  ArcThicknessUnit$@ Pixel=�6>   A 	  EndAngle$	A 360Q�6W   ���	#33BBBBBB$��Center=�6w   $��0q�6�   B �� Stretch$
B None=�6�   C 	  
StartAngle$C 0Q�6�   $��48��6�   $��48��6�   $��Center=�6�   	  5�     -   5        $> 	frontRing��5�     $? 5Q�60   $@ Pixel=�6A   ���	#FF7EC764$��Center=�6�   $��0q�6�   $
B None=�6�   $C 0Q�6�   $��48��6�   $��48��6�   $��Center=�6   A 6Z   �� *CurrentQuiz.Score.Arc+D �� Mode$D OneWay=�6   �� 5�     -   5        $$ percentScoreLBL��5�      $��0q�69   $
��Wrap=�6D   ���	#FF7EC764$��Center=�6�   $��Center=�6�   $��13.333(�6�   ��6X   �� *CurrentQuiz.Score.Percent+$D OneWay=�$& {0:F0}%��6�   5�     5�     � 5�     -   5        $ TopPanel��5�     $	��0,4q�6%   $��1��62   y�6?   �� *CurrentQuiz.IsEvaluated+#7 [ 9 5�     �� 5�     $	��157 �6'   �� 5�     $��92 �6'   �� 5�     $��82 �6'   �� 5�     �� 5�     $	��105 �6'   .+�5�     �� -   5        $: FinishButton��5�     $��FINISH��6J   #���  6[   ���	#FF202425���	#FFAECDCC���	#FFA7C7C6$��2q�6�   $��SimHei)�6�   $
��Bold"�6�   $��14.667(�6  $��13,12,14,12q�6   $��4��65  {�6�  �� *CurrentQuiz.CanEvaluate+5�     �� 5�     -   5        $ QuestionHearder��5�     $
��10,0q�6.   $��2��6<   $��22��6I   $	��Top=�6U   $��	0,0,0,0.5q�6�   ��5�     �� 5�     $	 1,0&�6*   $	  0,0&�69   .��5�     � $! 	#FF333333��6'   $" 0Q�69   � 5�     $" 0.672Q�6'   5�     ._�5�     � $	��Top=�6   .+�5�     �� -   5        $$ 	textBlock��5�      $
��Wrap=�63   $(��"What is the output of this program��6G   ���	#FF9C9C9C$��16(�6�   $��SimHei)�6�   $
��Left=�6�   $	��Top=�6�   $��30,0,0,0q�6�   �� 5�     -   5        $$ questionNumberLabel��5�      $
��Wrap=�6=   $��SimHei)�6�   $��16(�6�   ���	#FF9C9C9C$
��Left=�6�   $	��Top=�6�   $��0q�6  ��6Q   �� *CurrentQuiz.CurrentIndexInc+$, 1.��$& {0:d}.��6  5�     5�     � 5�     -   5        $ codeSection��5�     $��0,40,0,0q�6(   $��2��6:   ���	#001A1A1D.+�5�     �� $��50��6   #���  6.   $
��Auto=�6U   $��0,0,10,0q�6x   .��5�     �� -   5        E ��Name$E CodeRTB��5�  "   $��Consolas)�63    . ���	#001A1A1D���	#FFEEEEEE$��0q�6�   $��40��6�   $	��Top=�6�   ��6�   Z� 6�   5�     5�     �� 5�     -   5        $ AnswerHeader��5�     $
��10,0q�6+   $��3��69   $	��Top=�6F   $��	0,0,0,0.5q�6^   $��22��6z   ��5�     �� 5�     $	 1,0&�6*   $	  0,0&�69   .��5�     � $! 	#FF3F3F3F��6'   � 5�     $" 0.987Q�6'   $! 	#003E3E40��66   5�     ._�5�     �� $��0q�6   F �� Orientation$F 
Horizontal=�6(   .+�5�     �� -   5        $$ 
textBlock3��5�      $
��Wrap=�64   $��YOUR ANSWER:��6H   $��0q�6\   ���	#FF9C9C9C$��16(�6~   $��SimHei)�6�   $��Center=�6�   $
��Left=�6  �� 5�     -   5        $$ textBlock3_Copy��5�      $
��Wrap=�69   $��10,0,0,0q�6y   ���	#FFE4E1E1$��Consolas)�6�   $��Center=�6�   $
��Left=�6�   ��6M   �� *CurrentQuestion.UserAnswer+6�   �� 5�     -   5        $
$ eval��5�      $
��Wrap=�6.   $��Shruti)�6�   $��Center=�6�   $��10,0,0,0q�6  $
��Left=�6�  ��6B   �� *CurrentQuestion.Evaluation+$& ({0})����6�   �� *CurrentQuestion.Evaluation+#7 [  y�6  �� *CurrentQuiz.IsEvaluated+#7 [ 6�  5�     5�     � 5�     -    5        $ AnswerSection��5�     $��3��6*   ���	#00232323$��0,20,0,0q�6N   $	��Top=�6`   .+�5�     �� -!   5        G ��Name$G UserAnswerTB��5�     $��
10,10,0,10q�6V   ���	#FF333333���	#FF1A1A1D$��1q�6�   ���	#FFE6E4E4$	��396��6�   $
��Left=�6�   $��32��6�   #���  6�   $��10,1,1,1q�6%  $��Consolas)�6�  ��6_  �� *!CurrentQuestion.UserAnswer.Text+{�6�  �� *	IsChecked+#7 [ H �� ElementName$H wontCompileCHK���� 5�     -"   5        I ��Name$I wontCompileCHK��5�     $��Compilation error��63   $��Right=�6O   $��0,0,10,0q�6k   $	��160��6}   ���	#FFA7C7C6$��Shruti)�6�   $��16(�6�      SimpleCheckBox#���   6�   $��Center=�6�   $��20��6  $��6,0,0,0q�6  
���   ���6$  Z� J d� 	IsCheckedJ 6N  �� *.,CurrentQuestion.UserAnswer.WillFailToCompile+6�  5�     �� 5�     -#   5        $ CorrectAnswerSection��5�     $��
10,0,10,10q�63   $��3��6G   $��Bottom=�6T   $��	0,0,0,0.5q�6o   $��22��6�   y�6�   �� *CurrentQuiz.IsEvaluated+#7 [ ��5�     �� 5�     $	 1,0&�6*   $	  0,0&�69   .��5�     � $! 	#FF3F3F3F��6'   � 5�     $" 0.987Q�6'   $! 	#003E3E40��66   5�     ._�5�     �� $F 
Horizontal=�6   .+�5�     �� -$   5        $$ 
textBlock4��5�      $
��Wrap=�64   $��CORRECT ANSWER:��6H   ���	#FF9C9C9C$��16(�6v   $��SimHei)�6�   $
��Left=�6�   $��Center=�6�   $	��0,2q�6�   �� 5�     -%   5        $$ textBlock4_Copy��5�      $
��Wrap=�69   ���	#FFEAEAEA$��Consolas)�6�   $��Center=�6�   $��10,0,0,0q�6�   $
��Left=�6�   ��6M   �� *CurrentQuestion.CorrectAnswer+6�   5�     5�     �� 5�     -&   5        $ BottomConrols��5�     $��4��6,   
������ $��	0,0.5,0,0q�6�   ��5�     �� 5�     $	 1,0&�6*   $	  0,0&�69   .��5�     � $! 	#FF333333��6'   $
" 0.51Q�69   � 5�     $! 	#00A6ECE9��6'   $" 1Q�69   � 5�     $! 	#0059B6B2��6'   $" 0.019Q�69   5�     ._�5�     � 9 5�     �� 5�     �� 5�     $	��166 �6+   .+�5�     �� -'   5        $ NavBar��5�     $��0q�6-   ���	#FF333333$��0,3,0,1q�6Y   ._�5�     � 9 5�     �� 5�  "   $��10 �63   �� 5�  "   .+�5�     A� -(   5        K A�Name$K uniGrid��5�  *   $��1,0,0,0q�6;   L A� Columns$L 4��6L   $��1��6X   $
��Left=�6h   .+�5�  "   
   CppQuiz.Dash
  -)   5        M 
 Name$M dash1��5�  -   $��0q�6<   $��Center=�6b   $��Center=�6   
  5�  "   -*   5        $M 
dash1_Copy��5�  -   $��0q�6A   $��Center=�6L   $��Center=�6i   
  5�  "   -+   5        $M dash1_Copy1��5�  -   $��0q�6B   $��Center=�6M   $��Center=�6j   
  5�  "   -,   5        $M dash1_Copy2��5�  -   $��0q�6B   $��Center=�6M   $��Center=�6j   5�     5�     5�     �� 5�     --   5        $: 
nextButton��5�     $��NEXT >>��6J   $��Right=�6b   $��78��6~   #���  6�   ���	#FF202425���	#FFAECDCC���	#FFA7C7C6$��2q�6  $��SimHei)�6  $
��Bold"�6*  $��14.667(�6<  $��0,3,4,3q�6N  $��1��6_  �� 5�     -.   5        $: 
backButton��5�     $��<< BACK��6J   $	��0,3q�6b   #���  6o   ���	#FF202425���	#FFB1D1D0���	#FFA7C7C6$��SimHei)�6�   $��14.667(�6�   $
��Bold"�6  $��1��6   $��78��60  $
��Left=�6;  5�     5�     � 5�     -/   5        $; processingPopup��5�     $��0q�6-   $��Center=�68   .��5      �� ���	#FF151515$	��100��60   $( 0.005,0.019&�6=   $	��240��6a   ���	#FF333333$��1q�6�   ._�5     � $��0q�6   # 5     �� 5     �� 5     .+�5     �� -0   5        $$ compiling_progress_info��5  $   $��10,0,0,0q�6E   $
��Wrap=�6W   $
��Left=�6�   $��Center=�6  ���	#FFA7C7C6��6k   �� *&$CurrentQuiz.EvaluationProgress.AsStr+$, Compiling .. ��$D OneWay=�$& Compiling .. ({0})��6&  � 5     $��10,16,10,20q�6&   $��1��6;   N � ValueN 6H   �� *(&CurrentQuiz.EvaluationProgress.Percent+$D OneWay=�5     5	     5
     5     � 5  
   -1   5        $ HomeView��5     y�6!   �� *CurrentView+$
6 home��#7 [ # 5     �� 5     $��39 �6    �� 5     $��62 �6    �� 5     $	��85* �6    �� 5     $	��47* �6    �� 5     $��37 �6    .+�5     � -2   5        $ backgroundImg��5     $��0q�6*   $��3��65   $��1��6F   $	 0.2Q�6S   .+�5     �� -3   5        $8 image2��5     $��0q�6(   $��Center=�63   $	��256��6N   $<��6media/cpp-256-white-lightblue-trans-bg-augmented-c.png��6[   $��Center=�6�   5     � 5     -4   5        $ QuizHeader1��5     9 5     �� 5     $
��140* �6'   �� 5     $	��13* �6'   .+�5     �� -5   5        $$ 
textBlock2��5     $
��Left=�60   $��10,2.775,0,3.225q�6K   $
��Wrap=�6e   $��18.667(�6�   $��Center=�6�   $��Clear Sans Medium)�6�   ���	#FFA7C7C6$  Ideal=�6  ��6y   �� *CurrentQuiz.Name+$, CPP QUIZ��6  �� 5     -6   5        $: MenuButton1��5     #��� 	 6G   ���	#FF202425���	#FFAECDCC���	#FFA7C7C6$��0q�6�   $��SimHei)�6�   $
��Bold"�6�   $��14.667(�6�   $��0q�6  $��1��6  $��Center=�6(  $��Center=�6E  $��32��6`  $��32��6k  .��5     �� -7   5        $8 image1��5     $��30��6,   $��30��68   $"��media/menu-30-light-blue.png��6C   5     � 5      $��1��6   $��0��6'   $��Right=�61   .+�5!     � -8   5        $; 
menuPopup1��5!     $��Right=�60   $	��Top=�6L   $��1��6d   $
��Left=�6t   $< 40��6�   $��Slide=�6�   = .  .��5"     �� ���	#FF101011$	��147��6<   .+�5#     �� -9   5        $: loadQuizButton1��5#  %   $��	Load quiz��6>   $	��1,2q�6R   $��32��6_   #��� 
 6�   ���	#FF1C1C1C���	#FF727272
�������6  �� 5$     -:   5        $: aboutButton1��5$  %   $��About��6;   $	��1,2q�6K   $��32��6X   #��� 
 6d   ���	#FF1C1C1C���	#FF727272
�������6�   5%     5&     5'     5(     �� 5)     -;   5        O ��Name$O quizzesCardsList��5)     $��0q�60   $��1��6;   #���  6H   #���  6}   #���  6�   
������ #���  6  ���	#00888888$��Disabled=�6�  $��Hidden=�6�  $��3��6�  �� 5*     -<   5        $ BottomConrols1��5*     $��4��6-   
������ $��	0,0.5,0,0q�6�   ��5+     �� 5,     $	 1,0&�6*   $	  0,0&�69   .��5-     � $! 	#FF333333��6'   $
" 0.51Q�69   � 5.     $! 	#00A6ECE9��6'   $" 1Q�69   � 5/     $! 	#0059B6B2��6'   $" 0.019Q�69   50     ._�52     � 9 53     �� 54     �� 55     $	��166 �6+   .+�57     �� -=   5        $: StartQuizButton��57     $��
START QUIZ��6T   $��Right=�6i   $	��110��6�   #���  6�   ���	#FF202425���	#FFAECDCC���	#FFA7C7C6$��2q�6
  $��SimHei)�6  $
��Bold"�62  $��14.667(�6D  $��0,3,4,3q�6V  $��1��6g  {�6�  �� *SelectedItems.Count+$H quizzesCardsList��$D OneWay=�58     59     5:     5;     5<     