   M S B A M L   `   `   `  ���� B  >CppQuiz, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:CppQuizCppQuiz      CppQuiz.App   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     'localclr-namespace:CppQuiz     c _Microsoft.Expression.Drawing, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35=ed4http://schemas.microsoft.com/expression/2010/drawing    �� 	Resources   �� MergedDictionaries �� Source   ScrollBarButton �� 
TargetType �� Property �� Value �� 
TargetType'  !System.Windows.VisualStateManager   VisualStateGroups%  System.Windows.VisualStateGroup   States   System.Windows.VisualState	   
Storyboard
 �� TargetProperty �� 
TargetName8  2System.Windows.Media.Animation.EasingColorKeyFrame �� KeyTime �� Value0  *Microsoft.Expression.Shapes.RegularPolygon  Name   InnerRadius   
PointCount �� Stretch  ScrollBarDisabledBackground �� Color  VerticalScrollBarPageButton ! HorizontalScrollBarPageButton  ScrollBarThumb ! HorizontalScrollBarBackground �� EndPoint �� 
StartPoint � Color � Offset  VerticalScrollBarBackground  ThumbControlTemplate1 �Name  ScrollBarStyle3 J� SnapsToDevicePixels � RowDefinitions �� LineUpCommand J� IsMouseOver ]�Name ]� DecreaseRepeatButton �� PageUpCommand ]� IncreaseRepeatButton  �� PageDownCommand! ]� Thumb 	 SimpleThumbStyle" �� LineDownCommand# J� RenderTransformOrigin$ �� ScaleY% �� ScaleX& �� AngleY' �� AngleX( �� Angle) �� Triggers* P� Property+ P� Value, �� 
TargetName- �� Triggers 
 	scrolfalt. � ColumnDefinitions/ ��Name0 ��Name1 �� CanContentScroll2 �� CanHorizontallyScroll3 �� CanVerticallyScroll4 ��Name4  .System.Windows.Automation.AutomationProperties5   AutomationId6 � Cursor7 �� ScrollableHeight8 � Maximum9 � Minimum*: �� #ComputedVerticalScrollBarVisibility; �� ViewportHeight< �� ViewportSize= � Value> �� Mode? �� RelativeSource@ �� ScrollableWidthA �� Orientation,B �� %ComputedHorizontalScrollBarVisibilityC �� ViewportWidth  ScrollBarStyle2  MiBrushD j� ViewboxE j� ViewportF j� ViewportUnitsG j� ViewboxUnitsH j� TileModeI j� StretchJ L� DrawingK � BrushL � GeometryM �� RelativeTransformN �� CenterYO �� CenterXP �� CenterYQ �� CenterXR �� CenterYS �� CenterX��  �� $ Simple Styles.xaml?�%�  &	        &	 [    &	 n    &	     &	 �    &	 2    &	 �    &	 N    &	 �    7   7  7  7   7  &	
 @	    &	 �    �� " ��.���  �@�OverridesDefaultStyle . ��  � |� .  ��  � �� .  ��  � �� �� " ��.R�� ���	#00000000   CommonStates��.   
Normal��  	MouseOver��.	 �� .���� $*
 $(Shape.Fill).(SolidColorBrush.Color)�$ regularPolygon��.g�  $ 0��$ 	#FF3399FF��  Pressed��.	 �� .���� $*
 $(Shape.Fill).(SolidColorBrush.Color)�$ regularPolygon��.g�  $ 0��$ 	#FF007ACC��  Disabled��.+�  $ regularPolygon�����	#FF646464$��Stretch=�$
��Auto��$ 1Q�$	��3,5q�$ 3Q�$
 Fill=�$��Stretch=�$
��Auto���� $ #F4F4F4���� " ��.���  �@�OverridesDefaultStyle . ��  � ��
 ���� ��  � |� .  ��  � �� .  ��  � �� �� " ��.R��� #��z��#��z��#��z���� " ��.���  �@�OverridesDefaultStyle . ��  � ��
 ���� ��  � |� .  ��  � �� .  ��  � �� �� " ��.R��� #��z��#��z��#��z���� " n�.���  �@�OverridesDefaultStyle . ��  � �� .  ��  � �� �� " n��� $	 0,1&�$	 0,0&�.��� $ #E1E1E1��$ 0Q�� $ #EDEDED��$
 0.20Q�� $ #EDEDED��$
 0.80Q�� $ #E3E3E3��$ 1Q��� $	 1,0&�$	 0,0&�.��� $ #E1E1E1��$ 0Q�� $ #EDEDED��$
 0.20Q�� $ #EDEDED��$
 0.80Q�� $ #E3E3E3��$ 1Q��� " n�.R�� ���	#00666666   CommonStates��.   
Normal��  	MouseOver��.	 �� .���� $0
 *(Panel.Background).(SolidColorBrush.Color)�$
 grid��.g�  $ 0��$ 	#FF666666��  Pressed��.	 �� .���� $0
 *(Panel.Background).(SolidColorBrush.Color)�$
 grid��.g�  $ 0��$ 	#FFAAAAAA��  Disabled��.+�� $
 grid��$	��4,0q�$��Stretch=����	#FF333333�� " ��.���  � ��# �  ��  �@��IsPressAndHoldEnabled .  ��  �@��IsFlicksEnabled .  ��  � ��# � ����  � ��# � r���  � ��# � r���  � �� �� " ��.R�� $ Bg�� .  �� #��� q��� $��0.00001* ��� #��� q�.+��� #��Z #{�z 8��  ]� $ 
PART_Track����. #{�z $��1�� �� #��Z 8��  �� #��Z  8�� ! n� #��� 	 #���  ���	#00F0F0F0�� #��Z" #{�z $��2��8�� $# 0.5,0.5&�z�V� .~��� $$ -1Q�$% 1Q��� $& 0Q�$' 0Q��� $( 0Q�T� ) P� * � {�+ .  . ��� $, Bg��8   � ��- �� " ��.R�� $
 Grid��#��z��. �� $��* ��� $
��Auto � �� $��* ��� $
��Auto �.+��� $/ Corner��$��1��#��� ��$��1���� $!0 PART_ScrollContentPresenter��#1 z��2 .  3 .  #��z��#��z��$��0��#��z��$��0���� $4 PART_VerticalScrollBar��$5 VerticalScrollBar��$6 Arrow��$��1��#8 z7 $9 0Q�$��0��#y�z: #< z; ���	#FF040405#���  = �� *VerticalOffset+$> OneWay=�? �� *TemplatedParent+�� $4 PART_HorizontalScrollBar��$5 HorizontalScrollBar��$6 Arrow��$��0��#8 z@ $9 0Q�$A 
Horizontal=�$��1��#y�zB #< zC #���  = �� *HorizontalOffset+$> OneWay=�? �� *TemplatedParent+L� $D 0,0,8,8�$E 0,0,4,4�$F Absolute=�$G Absolute=�$
H Tile=�$I Uniform=�J I� .��� K �	#FF3E3E40+L ��        �    �� р� �� р�     	� K �	#FF3E3E40+L �� 	=  	= � 	= ��[ р�[ ��[ р�[  	= 	M V� .~��� $	N 0.5Q�$	O 0.5Q��� $	P 0.5Q�$	Q 0.5Q��� $	R 0.5Q�$	S 0.5Q�T� 