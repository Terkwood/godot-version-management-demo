GDPC                                                                                  res://TestLoadPck.gd.remap  `
      &       JM2���1�(K��h�   res://TestLoadPck.gdc   P      �      "�_����g<cv�   res://TestLoadPck.tscn  �      q       ���{�Fb�����X   res://project.binary�
      �       9�*e��Ԅي��my�        GDSC      
   $   �      ���ӄ�   ��������   �����������ⶶ��   �������ض���   �ж�   ���Ӷ���   ����   ���ض���   ���򶶶�   ����   ¶��   ����������¶   ����Ӷ��   �����϶�   ������������������Ӷ   ����������ض   ���¶���   ���������������������¶�   ��������������Ŷ   �����������������ݶ�   �������Ӷ���   �����������Ӷ���   �����¶�   �����Ķ�   ����󶶶   �����������Ѷ���      test-0.2.0.pck        user://version.txt        Failed to open version text !         0.2.0         This is v%s       0.1.0         Changing scene        res://TestLoadPck.tscn     	   All done.         Failed to write version file !                                                   ,   	   1   
   3      6      ?      E      H      I      O      T      _      `      f      n      u      z      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   3YY:�  Y:�  �  �  Y0�  PQV�  ;�  �  T�  PQ�  &�  T�  P�  R�  T�  Q�	  V�  �B  P�  Q�  .�  (V�  ;�
  �  T�  PQ�  �  T�  PQ�  .�
  �  Y0�  PQV�  �  P�  Q�  W�  T�  �  �  PQYY0�  PQV�  &�  PQ�  V�  �  T�  P�  Q�  �?  P�  Q�  �  PQT�  P�  Q�  (V�  W�  T�  �  YY0�  P�  V�  QV�  ;�  �  T�  PQ�  &�  T�  P�  R�  T�  Q�	  V�  �B  P�	  Q�  .�  (V�  �  T�  P�  Q�  �  T�  PQY`          [gd_scene load_steps=2 format=2]

[ext_resource path="res://TestLoadPck.gd" type="Script" id=1]

[node name="TestLoadPck" type="Node2D"]
script = ExtResource( 1 )

[node name="Prompt" type="TextEdit" parent="."]
margin_left = 88.0413
margin_top = 139.191
margin_right = 516.041
margin_bottom = 176.191
rect_scale = Vector2( 2, 2 )
text = "Do project settings update when a new resource pack is loaded ?"
readonly = true
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
autostart = true
[connection signal="timeout" from="WaitToLoad" to="." method="_on_WaitToLoad_timeout"]
               [remap]

path="res://TestLoadPck.gdc"
          ECFG      _global_script_classes             _global_script_class_icons             application/run/main_scene          res://TestLoadPck.tscn        