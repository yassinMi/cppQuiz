   M S B A M L   `   `   `  ���� B  >CppQuiz, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:CppQuizCppQuiz      CppQuiz.MainWindow   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     'localclr-namespace:CppQuiz     c _Microsoft.Expression.Drawing, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35=ed4http://schemas.microsoft.com/expression/2010/drawing  -   $��429.8��$��618.325��&   System.Windows.Media.TextOptions    TextFormattingMode$  Display=� J� SnapsToDevicePixels .  � UseLayoutRounding . ���	#FF1A1A1D � 
ResizeMode$ CanMinimize=� � Icon$C =media/cpp-16-white-lightblue-transparant-bg-black-counter.png�� � 	Resources    
CppQuiz.MI   
MiInstance   CppQuiz.EvalToBrush  EvalToBrush"   CppQuiz.EqualityToVisibility  EqualityToVisibility)   #CppQuiz.BooleanToVisibilityReversed  BooleanToVisibilityReversed   BooleanToVisibilityConverter   CppQuiz.InvertBoolean  InvertBoolean  ButtonSimpleTemplate �� 
TargetType � 	Resources  Key �� TargetProperty	 �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame
 O� KeyTime O� Value ��Name J� Opacity �� Triggers :� RoutedEvent P� Property P� Value N� ExitActions ��Name  UnFocus N� EnterActions 		 Focus 
 ButtonControlTemplate1  	menustyle �� 
TargetType �� BasedOn �� Property  SimpleButtonFocusVisual �� Value  NormalBrush  NormalBorderBrush �Name �� Padding �� 
TargetName  DisabledBackgroundBrush  DisabledBorderBrush  DisabledForegroundBrush  userInputTBsTYLE-  'System.Windows.Input.KeyboardNavigation �� CornerRadius ��Name  SimpleScrollViewer  AnimateResults  QuizCardButton � Cursor �� EndPoint  �� 
StartPoint! � Color" � Offset# � RowDefinitions$ ��Name% �� RelativeSource& �� StringFormat  ButtonControlAugments' ��Name( J� RenderTransformOrigin  quizzesCardsLstItemTemplate) �� DataType8	  2System.Windows.Media.Animation.EasingColorKeyFrame* �� KeyTime+ �� Value, �� FallbackValue- �� Triggers 	 Hover  UnHover % !quizzesCardsLstItemsPanelTemplate. K� IsItemsHost  miLightblueSelectionFram/ �� Color 2 .quizzesCardsListGeneraedItemsCounainerTemplate0 �� AncestorType1 ]� 
Conditions2 �� Property3 �� Value  simpleListBoxWithWrapPanel  WindowBackgroundBrush  SolidBorderBrush   	scrolfalt��%�  &	        &	      &	 
     &	      &	      &	      &	      7  7 	 &	
 �    7  7 	 &	 �    &	 �    &	 W    &	 �	    &	 �    7  7 	 &	 *    7  7  &	 �    &	 �    &	 �    &	 K            ��   �� " �� ���� 	Focus .��U� $ (UIElement.Opacity)�$	 border��.\�  $
 0:0:0.1��$ 1Q��� UnFocus .��U� $ (UIElement.Opacity)�$	 border��.\�  $
 0:0:0.1��$
 0.75Q�.R��� $ border��#��z��#��z��$��1q�$
 0.75Q�._��� $��Center=�$��Center=� :� $ FrameworkElement.Loaded��P�  �@J�IsMouseOver .  �� $ UnFocus_BeginStoryboard��8��   �� $ Focus_BeginStoryboard��8�� �� " �� ���� 	Focus .��U� $ (UIElement.Opacity)�$	 border��.\�  $
 0:0:0.1��$ 1Q��� UnFocus .��U� $ (UIElement.Opacity)�$	 border��.\�  $
 0:0:0.1��$
 0.75Q�.R��� $ border��#��z��#��z��$��0q�$
 0.75Q�._��� $��Center=�$��Center=� :� $ FrameworkElement.Loaded��P�  �@J�IsMouseOver .  �� $ UnFocus_BeginStoryboard��8��   �� $ Focus_BeginStoryboard��8�� �� " �� Z� .���  �@�FocusVisualStyle# �  ��  � ��# �  ��  � ��# �  ��  � �� �� " ��.R�� $
 Grid��.+��� $ Border��#��z��#��z��#��z��# z���� #��z��#��z��#��z����.  P�  �@J�IsMouseOver . . ��� $ Border�� � �� �	#FF363636P�  � �� . . ��� $ Border�� � �� �	#FF1D1D1D�� $ Border�� � �� �	#FFBDBDBDP�  � {� . P�  � {� .  . ��� # �  $ Border�� � ���� # �  $ Border�� � ���� # �   � ���� " ��.���  �@ TabNavigation$
 None=���  �@�FocusVisualStyle Z� ��  �@J�	AllowDrop . ��  � �� �� " ��.R�� .+��� $ Border��#��z��#��z��$��1q�$ 2q�$ 0��._��� $ PART_ContentHost��$��0q�#���  #��z��$��Stretch=�$��Stretch=� P�  � {� .  . ��� $ Border�� �@J�Opacity$	 0.3Q���  � �� �	#FF4D4D4D�� .��U� $ (UIElement.Opacity)�$	 CorrectAnswersLBL��.\�  $
 0��$ 0Q�  $
 0:0:0.2��$ 1Q�U� $ (UIElement.Opacity)�$	 WrongAnswersLBL��.\�  $
 0��$ 0Q�  $
 0:0:0.2��$ 0Q�  $
 0:0:0.4��$ 1Q�U� $ (UIElement.Opacity)�$	 
SkippedLBL��.\�  $
 0��$ 0Q�  $
 0:0:0.4��$ 0Q�  $
 0:0:0.6��$ 1Q�U� $ (UIElement.Opacity)�$	 ScoreVisual��.\�  $
 0��$ 0Q�  $
 0:0:0.6��$ 0Q�  $
 0:0:0.7��$	 0.4Q�  $
 0:0:0.8��$	 0.8Q�  $
 0:0:1��$ 1Q��� " �� Z� .���  �@�FocusVisualStyle# �  ��  � ��# �  ��  � ��# �  ��  � �� �� " ��.R�� $
 Grid��.+��� $ border��$
��Auto��$
��Auto�����	#FF838383$��1q�$��0q�$
 Hand������ $	 1,0&�$	  0,0&�.��� $! 	#991A1A1D��$" 0Q�� $! 	#99161616��$" 0.495Q�� $! 	#99161616��$" 0.977Q�._�� # �� $��38 ��� $
��Auto �.+��� #��z��$
��10,0q�#��z����. �� $$ textBlock4_Copy��$
��Wrap=����	#FFBBBBBB$  Display=�$��Center=�$��Center=�$��0q�$��1��$��12(�$��Segoe UI)����� *Tag+% �� *TemplatedParent+$& {0} questions�� P�  �@J�IsKeyboardFocused . P�  �@J�IsMouseOver . . ��� $ border�� � �� �	#FFA7C7C6P�  � �� . P�  � {� . P�  � {� .  . ��� # �   � ���� " �� ���� 	Focus .��U� $ (UIElement.Opacity)�$	 border��.\�  $
 0:0:0.1��$ 1Q�U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�$	 contentPresenter��.\�  $
 0��$
 1.08Q�U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�$	 contentPresenter��.\�  $
 0��$
 1.08Q��� UnFocus .��U� $ (UIElement.Opacity)�$	 border��.\�  $
 0:0:0.1��$
 0.75Q�U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�$	 contentPresenter��.\�  $
 0��$ 1Q�U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�$	 contentPresenter��.\�  $
 0��$ 1Q�.R��� $ border��#��z��#��z��$��1q�$
 0.75Q�._��� $' contentPresenter��$��Center=�$��Center=�$( 0.5,0.5&�z�V� .~��� �� �� T�  :� $ FrameworkElement.Loaded��P�  �@J�IsMouseOver .  �� $ UnFocus_BeginStoryboard��8��   �� $ Focus_BeginStoryboard��8�� :� $ UIElement.MouseEnter���� $) local:QuizHeader�� ���� 	Hover .���� $6 0(TextElement.Foreground).(SolidColorBrush.Color)�$	 titleLBL��.g�	  $* 0:0:0.1��$+ 	#FFF7F7F7���� UnHover .���� $6 0(TextElement.Foreground).(SolidColorBrush.Color)�$	 titleLBL��.g�	  $* 0:0:0.2��$+ 	#FFDEDCDC��.R�� $��0q�.+��� $ border��$
��Auto��$
��Auto�����	#FF838383$��0q�$��0q�$
 Hand������ $	 1,0&�$	  0,0&�.��� $! 	#991A1A1D��$" 0Q�� $! 	#99161616��$" 0.495Q�� $! 	#99161616��$" 0.977Q�._�� $��
10,2,10,10q�# �� $��38 ��� $
��Auto �.+��� $$ titleLBL��$
��Wrap=����	#FFDEDCDC$  Ideal=�$��Center=�$��Center=�$��0q�$��0��$��16(�$��Segoe UI)����� *Name+$, TITLE���� $$ questonsCountLbl��$
��Wrap=����	#FFBBBBBB$  Display=�$��Center=�$��Center=�$��0q�$��1��$��12(�$��Segoe UI)�$��20������ *QuestionsCount+$, n questions��$& {0} questions��- :� $ UIElement.MouseEnter��.[��� $ Hover_BeginStoryboard��8��  :� $ UIElement.MouseLeave��.[��� $ UnHover_BeginStoryboard��8�� �� .R�� . . �� $/ 	#FF69CFE6���� " ��.���  � ��
 ���� ��  � �� �� *HorizontalContentAlignment+% �� "0 ����  � �� �� *VerticalContentAlignment+% �� "0 ����  � ��$ 2,0,0,0q���  � �� �� " ��.R��� $ Bd��$��1q�
������ # z�� . ���	#FF959595$��10q�._��� #��z��# z #��z�� P�  �@��
IsSelected . . ��� $ Bd��# �   � ��]� 1 �� 2 �@��
IsSelected3 .  �� 2 �@J�IsMouseOver3 . ./��� # � .� � ���� $ Bd�� � �� �	#00383838�� $ Bd�� � �� �	#FFEEEEEE]� 1 �� 2 �@J�IsMouseOver3 . �� 2 �@��
IsSelected3 . ./��� $ Bd��# �   � ���� " ��.���  �@J�SnapsToDevicePixels . ��  � ��# �  ��  � ��# �  ��  � ��$
 Auto=���  � ��$
 Auto=���  � �� . ��  � �� �� " ��.R�� .+��� $ Border��#��z��#��z���� $��1q�#���  |�.  #��z��#���   $��Disabled=�$��Stretch=�.��� $��2q�. .  P�  � {� .  . ��� # �  $ Border�� � ���� # �  $ Border�� � ��P�  �@��
IsGrouping . . ���  � �� .  4 � Title4 �� 5 �� Path$5 APP_VERSION�6 �� Source#6 [  $& CppQuiz (v{0})��7 � Triggers7 :� $ FrameworkElement.Loaded��.��� .+�� -   $ mainQuizView��y��� *CurrentView+8 �� ConverterParameter$
8 quiz��9 �� 	Converter#9 [ # �� $��39 ��� $��62 ��� $
��107* ��� $	��77* ��� $��37 �.+�� -   $ backgroundImg_Copy��$��0q�$��3��$��1��$
 0.04Q�.+��� -   : ��Name$: image3��$��0q�$��Center=�$	��256��$<��6media/cpp-256-white-lightblue-trans-bg-augmented-c.png��$��Center=�� -   $ 
QuizHeader��; � ColumnDefinitions; �� $
��140* ��� $	��13* �.+��� -   $$ 
textBlock1��$
��Left=�$��10,2.775,0,3.225q�$
��Wrap=�$��18.667(�$��Center=�$��Clear Sans Medium)����	#FFA7C7C6$  Ideal=����� *CurrentQuiz.Name+$, CPP QUIZ���� -   < ��Name$< 
MenuButton��#��� 
 ���	#FF202425���	#FFAECDCC���	#FFA7C7C6$��0q�$��SimHei)�$
��Bold"�$��14.667(�$��0q�$��1��$��Center=�$��Center=�$��32��$��32��.���� -   $: image��$��30��$��30��$"��media/menu-30-light-blue.png��� $��1��$��0��$��Right=�.+�� -	   = �Name$= 	menuPopup��$��Right=�$	��Top=�$��1��$
��Left=�> � VerticalOffset$> 40��$��Slide=�? � 	StaysOpen? .  .���� ���	#FF101011$	��147��.+��� -
   $< 
HomeButton��$
��Home��$	��1,2q�$��32��#���  ���	#FF1C1C1C���	#FF727272
��������� -   $< loadQuizButton��$��	Load quiz��$	��1,2q�$��32��#���  ���	#FF1C1C1C���	#FF727272
��������� -   $< aboutButton��$��About��$	��1,2q�$��32��#���  ���	#FF1C1C1C���	#FF727272
�������� -   $ ResultsPanel��$	��0,4q�$��1��y��� *CurrentQuiz.IsEvaluated+#9 [ $, 	Collapsed��; �� $	��157 ��� $��92 ��� $��82 ��� �� $	��105 �.+��� -   $< RetryButton��$��RETRY��#���  ���	#FF202425���	#FFAECDCC���	#FFA7C7C6$��2q�$��SimHei)�$
��Bold"�$��14.667(�$��13,12,14,12q�$��4���� -   $$ CorrectAnswersLBL��$��1��$��0q�$
��Wrap=����	#FF99F577$��Center=�$
��Left=����� *CurrentQuiz.Score.Correct+$, 
Correct: -��$& Correct: {0:D}���� -   $$ WrongAnswersLBL��$��2��$��0q�$
��Wrap=����	#FFF5834D$
��Left=�$��Center=����� *CurrentQuiz.Score.Wrong+$, Wrong: -��$& Wrong: {0:D}���� -   $$ 
SkippedLBL��$��3��$��0q�$
��Wrap=����	#FFF5834D$
��Left=�$��Center=����� *CurrentQuiz.Score.Skiped+$, 	Skiped: -��$& Skiped: {0:D}��� -   $ ScoreVisual��$��0q�$��48��$��48��$��Center=�$��Center=�.+�%
  Microsoft.Expression.Shapes.Arc
  -   @ 
 Name$@ bgRing��A 
  ArcThickness$A 5Q�B 
  ArcThicknessUnit$B Pixel=�C 
  EndAngle$	C 360Q����	#33BBBBBB$��Center=�$��0q�D �� Stretch$
D None=�E 
  
StartAngle$E 0Q�$��48��$��48��$��Center=�
  -   $@ 	frontRing��$A 5Q�$B Pixel=����	#FF7EC764$��Center=�$��0q�$
D None=�$E 0Q�$��48��$��48��$��Center=�C �� *CurrentQuiz.Score.Arc+F �� Mode$F OneWay=��� -   $$ percentScoreLBL��$��0q�$
��Wrap=����	#FF7EC764$��Center=�$��Center=�$��13.333(����� *CurrentQuiz.Score.Percent+$F OneWay=�$& {0:F0}%��� -   $ TopPanel��$	��0,4q�$��1��y��� *CurrentQuiz.IsEvaluated+#9 [ ; �� $	��157 ��� $��92 ��� $��82 ��� �� $	��105 �.+��� -   $< FinishButton��$��FINISH��#���  ���	#FF202425���	#FFAECDCC���	#FFA7C7C6$��2q�$��SimHei)�$
��Bold"�$��14.667(�$��13,12,14,12q�$��4��{��� *CurrentQuiz.CanEvaluate+�� -   $ QuestionHearder��$
��10,0q�$��2��$��22��$	��Top=�$��	0,0,0,0.5q����� $	 1,0&�$	  0,0&�.��� $! 	#FF333333��$" 0Q�� $" 0.672Q�._�� $	��Top=�.+��� -   $$ 	textBlock��$
��Wrap=�$(��"What is the output of this program�����	#FF9C9C9C$��16(�$��SimHei)�$
��Left=�$	��Top=�$��30,0,0,0q��� -   $$ questionNumberLabel��$
��Wrap=�$��SimHei)�$��16(����	#FF9C9C9C$
��Left=�$	��Top=�$��0q����� *CurrentQuiz.CurrentIndexInc+$, 1.��$& {0:d}.��� -   $ codeSection��$��0,40,0,0q�$��2�����	#001A1A1D.+��� $��50��#���   $
��Auto=�$��0,0,10,0q�.���� -   G ��Name$G CodeRTB��$��Consolas)� . ���	#001A1A1D���	#FFEEEEEE$��0q�$��40��$	��Top=���Z� �� -   $ AnswerHeader��$
��10,0q�$��3��$	��Top=�$��	0,0,0,0.5q�$��22������ $	 1,0&�$	  0,0&�.��� $! 	#FF3F3F3F��� $" 0.987Q�$! 	#003E3E40��._��� $��0q�H �� Orientation$H 
Horizontal=�.+��� -   $$ 
textBlock3��$
��Wrap=�$��YOUR ANSWER:��$��0q����	#FF9C9C9C$��16(�$��SimHei)�$��Center=�$
��Left=��� -   $$ textBlock3_Copy��$
��Wrap=�$��10,0,0,0q����	#FFE4E1E1$��Consolas)�$��Center=�$
��Left=����� *CurrentQuestion.UserAnswer+�� -    $
$ eval��$
��Wrap=�$��Shruti)�$��Center=�$��10,0,0,0q�$
��Left=����� *CurrentQuestion.Evaluation+$& ({0})������ *CurrentQuestion.Evaluation+#9 [ y��� *CurrentQuiz.IsEvaluated+#9 [ � -!   $ AnswerSection��$��3�����	#00232323$��0,20,0,0q�$	��Top=�.+��� -"   I ��Name$I UserAnswerTB��$��
10,10,0,10q����	#FF333333���	#FF1A1A1D$��1q����	#FFE6E4E4$	��396��$
��Left=�$��32��#���  $��10,1,1,1q�$��Consolas)����� *!CurrentQuestion.UserAnswer.Text+{��� *	IsChecked+#9 [ J �� ElementName$J wontCompileCHK���� -#   K ��Name$K wontCompileCHK��$��Compilation error��$��Right=�$��0,0,10,0q�$	��160�����	#FFA7C7C6$��Shruti)�$��16(� ! SimpleCheckBox#��� ! $��Center=�$��20��$��6,0,0,0q�
���   ���Z� L d� 	IsCheckedL �� *.,CurrentQuestion.UserAnswer.WillFailToCompile+�� -$   $ CorrectAnswerSection��$��
10,0,10,10q�$��3��$��Bottom=�$��	0,0,0,0.5q�$��22��y��� *CurrentQuiz.IsEvaluated+#9 [ ���� $	 1,0&�$	  0,0&�.��� $! 	#FF3F3F3F��� $" 0.987Q�$! 	#003E3E40��._��� $H 
Horizontal=�.+��� -%   $$ 
textBlock4��$
��Wrap=�$��CORRECT ANSWER:�����	#FF9C9C9C$��16(�$��SimHei)�$
��Left=�$��Center=�$	��0,2q��� -&   $$ textBlock4_Copy��$
��Wrap=����	#FFEAEAEA$��Consolas)�$��Center=�$��10,0,0,0q�$
��Left=����� *CurrentQuestion.CorrectAnswer+�� -'   $ BottomConrols��$��4��
������ $��	0,0.5,0,0q����� $	 1,0&�$	  0,0&�.��� $! 	#FF333333��$
" 0.51Q�� $! 	#00A6ECE9��$" 1Q�� $! 	#0059B6B2��$" 0.019Q�._�� ; �� �� $	��166 �.+��� -(   $ NavBar��$��0q����	#FF333333$��0,3,0,1q�._�� ; �� $��10 ��� .+�A� -)   M A�Name$M uniGrid��$��1,0,0,0q�N A� Columns$N 4��$��1��$
��Left=�.+�   CppQuiz.Dash  -*   O  Name$O dash1��$��0q�$��Center=�$��Center=�  -+   $O 
dash1_Copy��$��0q�$��Center=�$��Center=�  -,   $O dash1_Copy1��$��0q�$��Center=�$��Center=�  --   $O dash1_Copy2��$��0q�$��Center=�$��Center=��� -.   $< 
nextButton��$��NEXT >>��$��Right=�$��78��#���  ���	#FF202425���	#FFAECDCC���	#FFA7C7C6$��2q�$��SimHei)�$
��Bold"�$��14.667(�$��0,3,4,3q�$��1���� -/   $< 
backButton��$��<< BACK��$	��0,3q�#���  ���	#FF202425���	#FFB1D1D0���	#FFA7C7C6$��SimHei)�$��14.667(�$
��Bold"�$��1��$��78��$
��Left=�� -0   $= processingPopup��$��0q�$��Center=�.���� ���	#FF151515$	��100��$( 0.005,0.019&�$	��240�����	#FF333333$��1q�._�� $��0q�# �� �� .+��� -1   $$ compiling_progress_info��$��10,0,0,0q�$
��Wrap=�$
��Left=�$��Center=����	#FFA7C7C6���� *&$CurrentQuiz.EvaluationProgress.AsStr+$, Compiling .. ��$F OneWay=�$& Compiling .. ({0})��� $��10,16,10,20q�$��1��P � ValueP �� *(&CurrentQuiz.EvaluationProgress.Percent+$F OneWay=�� -2   $ HomeView��y��� *CurrentView+$
8 home��#9 [ # �� $��39 ��� $��62 ��� $	��85* ��� $	��47* ��� $��37 �.+�� -3   $ backgroundImg��$��0q�$��3��$��1��$	 0.2Q�.+��� -4   $: image2��$��0q�$��Center=�$	��256��$<��6media/cpp-256-white-lightblue-trans-bg-augmented-c.png��$��Center=�� -5   $ QuizHeader1��; �� $
��140* ��� $	��13* �.+��� -6   $$ 
textBlock2��$
��Left=�$��10,2.775,0,3.225q�$
��Wrap=�$��18.667(�$��Center=�$��Clear Sans Medium)����	#FFA7C7C6$  Ideal=����� *CurrentQuiz.Name+$, CPP QUIZ���� -7   $< MenuButton1��#��� 
 ���	#FF202425���	#FFAECDCC���	#FFA7C7C6$��0q�$��SimHei)�$
��Bold"�$��14.667(�$��0q�$��1��$��Center=�$��Center=�$��32��$��32��.���� -8   $: image1��$��30��$��30��$"��media/menu-30-light-blue.png��� $��1��$��0��$��Right=�.+�� -9   $= 
menuPopup1��$��Right=�$	��Top=�$��1��$
��Left=�$> 40��$��Slide=�? .  .���� ���	#FF101011$	��147��.+��� -:   $< loadQuizButton1��$��	Load quiz��$	��1,2q�$��32��#���  ���	#FF1C1C1C���	#FF727272
��������� -;   $< aboutButton1��$��About��$	��1,2q�$��32��#���  ���	#FF1C1C1C���	#FF727272
��������� -<   Q ��Name$Q quizzesCardsList��$��0q�$��1��#���  #���  #���  
������ #���  ���	#00888888$��Disabled=�$��Hidden=�$��3���� -=   $ BottomConrols1��$��4��
������ $��	0,0.5,0,0q����� $	 1,0&�$	  0,0&�.��� $! 	#FF333333��$
" 0.51Q�� $! 	#00A6ECE9��$" 1Q�� $! 	#0059B6B2��$" 0.019Q�._�� ; �� �� $	��166 �.+��� ->   $< StartQuizButton��$��
START QUIZ��$��Right=�$	��110��#���  ���	#FF202425���	#FFAECDCC���	#FFA7C7C6$��2q�$��SimHei)�$
��Bold"�$��14.667(�$��0,3,4,3q�$��1��{��� *SelectedItems.Count+$J quizzesCardsList��$F OneWay=�