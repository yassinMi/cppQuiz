   M S B A M L   `   `   `  ���� B  >CppQuiz, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:CppQuizCppQuiz      CppQuiz.App   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     'localclr-namespace:CppQuiz     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006       �� 	Resources   �� MergedDictionaries �� Source   ScrollBarButton �� 
TargetType �� Property �� Value �� 
TargetType'  !System.Windows.VisualStateManager   VisualStateGroups%  System.Windows.VisualStateGroup   States   System.Windows.VisualState	   
Storyboard
 �� TargetProperty �� 
TargetName8  2System.Windows.Media.Animation.EasingColorKeyFrame �� KeyTime �� Value F�Name �� Stretch  ScrollBarDisabledBackground �� Color  VerticalScrollBarPageButton ! HorizontalScrollBarPageButton  ScrollBarThumb ! HorizontalScrollBarBackground �� EndPoint �� 
StartPoint � Color � Offset  VerticalScrollBarBackground  ThumbControlTemplate1 �Name  ScrollBarStyle3 J� SnapsToDevicePixels � RowDefinitions �� LineUpCommand J� IsMouseOver ]�Name ]� DecreaseRepeatButton �� PageUpCommand ]� IncreaseRepeatButton �� PageDownCommand ]� Thumb 	 SimpleThumbStyle  �� LineDownCommand! J� RenderTransformOrigin" �� ScaleY# �� ScaleX$ �� AngleY% �� AngleX& �� Angle' �� Triggers( P� Property) P� Value* �� 
TargetName 
 	scrolfalt+ � ColumnDefinitions, ��Name- ��Name. �� CanContentScroll/ �� CanHorizontallyScroll0 �� CanVerticallyScroll1 ��Name4  .System.Windows.Automation.AutomationProperties2   AutomationId3 � Cursor4 �� ScrollableHeight5 � Maximum6 � Minimum*7 �� #ComputedVerticalScrollBarVisibility8 �� ViewportHeight9 �� ViewportSize: � Value; �� Mode< �� RelativeSource= �� ScrollableWidth> �� Orientation,? �� %ComputedHorizontalScrollBarVisibility@ �� ViewportWidth  ScrollBarStyle2  MiBrushA j� ViewboxB j� ViewportC j� ViewportUnitsD j� ViewboxUnitsE j� TileModeF j� StretchG L� DrawingH � BrushI � GeometryJ �� RelativeTransformK �� CenterYL �� CenterXM �� CenterYN �� CenterXO �� CenterYP �� CenterX��  �� $ Simple Styles.xaml?�%�  &	        &	 Z    &	 m    &	     &	 �    &	 1    &	 �    &	 M    &	 �    7   7  7  7   7  &	
 ;	    &	 �    �� " ��.���  �@�OverridesDefaultStyle . ��  � |� .  ��  � �� .  ��  � �� �� " ��.R�� ���	#00000000   CommonStates��.   
Normal��  	MouseOver��.	 �� .���� $*
 $(Shape.Fill).(SolidColorBrush.Color)�$ regularPolygon��.g�  $ 0��$ 	#FF3399FF��  Pressed��.	 �� .���� $*
 $(Shape.Fill).(SolidColorBrush.Color)�$ regularPolygon��.g�  $ 0��$ 	#FF007ACC��  Disabled��.+�F� $ regularPolygon��'���Ѐ�[ ����������Q��r��h"�q@	���	#FF646464$
��Auto��$	��4,5q�$
 Fill=�$��Stretch=��� $ #F4F4F4���� " ��.���  �@�OverridesDefaultStyle . ��  � ��
 ���� ��  � |� .  ��  � �� .  ��  � �� �� " ��.R��� #��z��#��z��#��z���� " ��.���  �@�OverridesDefaultStyle . ��  � ��
 ���� ��  � |� .  ��  � �� .  ��  � �� �� " ��.R��� #��z��#��z��#��z���� " n�.���  �@�OverridesDefaultStyle . ��  � �� .  ��  � �� �� " n��� $	 0,1&�$	 0,0&�.��� $ #E1E1E1��$ 0Q�� $ #EDEDED��$
 0.20Q�� $ #EDEDED��$
 0.80Q�� $ #E3E3E3��$ 1Q��� $	 1,0&�$	 0,0&�.��� $ #E1E1E1��$ 0Q�� $ #EDEDED��$
 0.20Q�� $ #EDEDED��$
 0.80Q�� $ #E3E3E3��$ 1Q��� " n�.R�� ���	#00666666   CommonStates��.   
Normal��  	MouseOver��.	 �� .���� $0
 *(Panel.Background).(SolidColorBrush.Color)�$
 grid��.g�  $ 0��$ 	#FF666666��  Pressed��.	 �� .���� $0
 *(Panel.Background).(SolidColorBrush.Color)�$
 grid��.g�  $ 0��$ 	#FFAAAAAA��  Disabled��.+�� $
 grid��$	��4,0q�$��Stretch=����	#FF333333�� " ��.���  � ��# �  ��  �@��IsPressAndHoldEnabled .  ��  �@��IsFlicksEnabled .  ��  � ��# � ����  � ��# � r���  � ��# � r���  � �� �� " ��.R�� $ Bg�� .  �� #��� q��� $��0.00001* ��� #��� q�.+��� #��Z #{�z 8��  ]� $ 
PART_Track����. #{�z $��1�� �� #��Z 8��  �� #��Z 8��  n� #��� 	 #���  ���	#00F0F0F0�� #��Z  #{�z $��2��8�� $! 0.5,0.5&�z�V� .~��� $" -1Q�$# 1Q��� $$ 0Q�$% 0Q��� $& 0Q�T� ' P� ( � {�) .  . ��� $* Bg��8   � ���� " ��.R�� $
 Grid��#��z��+ �� $��* ��� $
��Auto � �� $��* ��� $
��Auto �.+��� $, Corner��$��1��#��� ��$��1���� $!- PART_ScrollContentPresenter��#. z��/ .  0 .  #��z��#��z��$��0��#��z��$��0���� $1 PART_VerticalScrollBar��$2 VerticalScrollBar��$3 Arrow��$��1��#5 z4 $6 0Q�$��0��#y�z7 #9 z8 ���	#FF040405#���  : �� *VerticalOffset+$; OneWay=�< �� *TemplatedParent+�� $1 PART_HorizontalScrollBar��$2 HorizontalScrollBar��$3 Arrow��$��0��#5 z= $6 0Q�$> 
Horizontal=�$��1��#y�z? #9 z@ #���  : �� *HorizontalOffset+$; OneWay=�< �� *TemplatedParent+L� $A 0,0,8,8�$B 0,0,4,4�$C Absolute=�$D Absolute=�$
E Tile=�$F Uniform=�G I� .��� H �	#FF3E3E40+I ��        �    �� р� �� р�     	� H �	#FF3E3E40+I �� 	=  	= � 	= ��[ р�[ ��[ р�[  	= 	J V� .~��� $	K 0.5Q�$	L 0.5Q��� $	M 0.5Q�$	N 0.5Q��� $	O 0.5Q�$	P 0.5Q�T� 