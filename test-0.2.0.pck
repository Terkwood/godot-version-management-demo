GDPC                                                                                  res://TestLoadPck.gd.remap  P      &       JM2���1�(K��h�   res://TestLoadPck.gdc   P      �	      �u��i�h%���5�   res://TestLoadPck.tscn  @            �L����J�Q�k;��   res://project.binary�      �       ��G�N9�#��6�yu        GDSC   (      I   u     ���ӄ�   ��������   �����������ⶶ��   ���������������񶶶�   ����������������   ����������������   �������ض���   ������������������Ѷ   ��������������Ŷ   ��¶   ���������������Ӷ���   �ж�   ���Ӷ���   ����   ���ض���   ���򶶶�   ����   ¶��   ����������¶   ����Ӷ��   �����϶�   ����   ���������������������Ѷ�   ����������Ŷ   ������������������Ӷ   ����������ض   ���¶���   ���������������������¶�   �����������������ݶ�   �������Ӷ���   �����������Ӷ���   �����¶�   �Ҷ�   ��������϶��   �����Ӷ�   �����Ķ�   ��¶   ���Ӷ���   ����󶶶   �����������Ѷ���      test-0.2.0.pck        user://version.txt        application/config/version        0.1.0         0.2.0         Failed to open version text !          A   ProjectSettings version missing, setting it up for the first time         ProjectSettings %s: %s        This is v%s    +   Still on the first version.  Changing scene       res://TestLoadPck.tscn     	   All done.         Failed to clean up %s         Failed to write version file !                           	      
                     	      
                !      '      ,      -      3      ;      <      B      K      Z      _      a      d      m      s      v      w      }      ~      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   �   6     7     8     9     :      ;   !  <   *  =   3  >   9  ?   :  @   ;  A   D  B   M  C   \  D   a  E   c  F   f  G   m  H   s  I   3YY:�  YYY:�  �  YY:�  �  YY:�  �  Y:�  �  �  Y0�  PQV�  .�  PQYY0�  PQV�  .�  T�	  P�  QYY0�
  PQV�  ;�  �  T�  PQ�  &�  T�  P�  R�  T�  Q�  V�  �B  P�  Q�  .�  (V�  ;�  �  T�  PQ�  �  T�  PQ�  .�  �  Y0�  PQV�  �  ;�  �  PQ�  &�  �  V�  �?  P�  Q�  �  P�  Q�  (V�  �?  P�  L�  R�  PQMQ�  �  �  ;�  �  T�  PQ�  &�  T�  P�  QV�  �  P�  QYY�  W�  T�  �	  �  PQYY0�  PQV�  &�  PQ�  V�  �  T�  P�  Q�  �?  P�
  Q�  �  P�  Q�  �  P�  Q�  �  PQT�  P�  Q�  (V�  W�  T�  �  �  �  ;�   �!  T�  PQ�  &�   T�"  P�  Q�  V�  �B  P�  �  QYY0�  P�#  V�  QV�  �  T�$  P�  R�  Q�  �  T�%  PQ�  YY0�  P�#  V�  QV�  ;�  �  T�  PQ�  &�  T�  P�  R�  T�&  Q�  V�  �B  P�  Q�  .�  (V�  �  T�'  P�#  Q�  �  T�  PQY`[gd_scene load_steps=2 format=2]

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
          ECFG      _global_script_classes             _global_script_class_icons             application/run/main_scene          res://TestLoadPck.tscn     application/config/version         0.2.0       