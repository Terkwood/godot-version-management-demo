GDPC                                                                                  res://TestLoadPck.gd.remap  @      &       JM2���1�(K��h�   res://TestLoadPck.gdc   P      �      ?3�{_�y�����*n   res://TestLoadPck.tscn  0            �L����J�Q�k;��   res://project.binaryp      �       9�*e��Ԅي��my�        GDSC          -        ���ӄ�   ��������   �����������ⶶ��   ����������������   ����������������   �������ض���   �ж�   ���Ӷ���   ����   ���ض���   ���򶶶�   ����   ¶��   ����������¶   ����Ӷ��   �����϶�   ����������Ŷ   ������������������Ӷ   ����������ض   ���¶���   ���������������������¶�   ��������������Ŷ   �����������������ݶ�   �������Ӷ���   �����������Ӷ���   �����¶�   �Ҷ�   ��������϶��   �����Ӷ�   �����Ķ�   ����󶶶   �����������Ѷ���      test-0.2.0.pck        user://version.txt        0.1.0         0.2.0         Failed to open version text !         This is v%s       Changing scene        res://TestLoadPck.tscn     	   All done.         Failed to clean up %s         Failed to write version file !                                                      	   '   
   6      ;      =      @      I      O      R      S      Y      b      l      q      |      }      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,     -   3YY:�  Y:�  �  Y:�  �  Y:�  �  �  Y0�  PQV�  ;�  �  T�  PQ�  &�  T�	  P�  R�  T�
  Q�  V�  �B  P�  Q�  .�  (V�  ;�  �  T�  PQ�  �  T�  PQ�  .�  �  Y0�  PQV�  ;�  �  T�  PQ�  &�  T�  P�  QV�  �  P�  Q�  W�  T�  �  �  PQYY0�  PQV�  &�  PQ�  V�  �  T�  P�  Q�  �?  P�  Q�  �  P�  Q�  �  PQT�  P�  Q�  (V�  W�  T�  �  �  �  ;�  �  T�  PQ�  &�  T�  P�  Q�  V�  �B  P�	  �  QYY0�  P�  V�  QV�  ;�  �  T�  PQ�  &�  T�	  P�  R�  T�  Q�  V�  �B  P�
  Q�  .�  (V�  �  T�  P�  Q�  �  T�  PQY` [gd_scene load_steps=2 format=2]

[ext_resource path="res://TestLoadPck.gd" type="Script" id=1]

[node name="TestLoadPck" type="Node2D"]
script = ExtResource( 1 )

[node name="Prompt" type="TextEdit" parent="."]
margin_left = 88.0
margin_top = 60.0
margin_right = 516.0
margin_bottom = 137.0
rect_scale = Vector2( 2, 2 )
text = "ProjectSettings do not update when a new resource pack is loaded.  We can work around this by keeping track of important data (like a version number) in the \"user://\" directory space."
readonly = true
wrap_enabled = true
__meta__ = {
"_edit_use_anchors_": false
}

[node name="WhatVersion" type="TextEdit" parent="."]
margin_left = 306.0
margin_top = 283.0
margin_right = 411.0
margin_bottom = 318.0
rect_scale = Vector2( 4, 4 )
text = "This is v_._._"
readonly = true
__meta__ = {
"_edit_use_anchors_": false
}

[node name="WaitToLoad" type="Timer" parent="."]
wait_time = 3.0
one_shot = true
autostart = true
[connection signal="timeout" from="WaitToLoad" to="." method="_on_WaitToLoad_timeout"]
           [remap]

path="res://TestLoadPck.gdc"
          ECFG      _global_script_classes             _global_script_class_icons             application/run/main_scene          res://TestLoadPck.tscn        