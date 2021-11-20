GDPC                                                                               L   res://.import/background_blue.png-3325b4f04eecdd013a31b5b01f056689.s3tc.stex <      �*      � ����g�J�J�'-<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex k      U      -��`�0��x�5�[   res://Ball.gd.remap  {             �F����"����j   res://Ball.gdc  �      �      ��ʽ�|xw�&E��,��   res://Ball.tscn �
      �      �oaJ֌�Sv��My   res://GrowGradually.gd.remap {      (       s��Y��*�]��   res://GrowGradually.gdc @            ��p� ꄷ��e��nh�   res://Playground.tscn   `      �(      D�9�^�7u45�.e�M>    res://background_blue.png.import�f            "O�q�?�*��&��{   res://default_env.tres  pj      �       um�`�N��<*ỳ�8   res://icon.png  P{      �      G1?��z�c��vN��   res://icon.png.import   �x      �      �����%��(#AB�   res://project.binary@�      �      �?-Qُ���Bi��        GDSC      	   C   �      ��������϶��   ������������Ӷ��   �����϶�   ��������Ѷ��   ��������������ڶ   ����������ݶ   ������������������Ķ   ������������������������Ҷ��   ���������������Ŷ���   ����׶��   ���������������۶���   �����ض�   �����������Ѷ���   ����¶��   ����������������Ҷ��   ���������������϶���   ζ��   ̶��   ��������������������Ҷ��   ���϶���   ����������ƶ   ����������������ƶ��   ���������¶�   �����������Ҷ���   ��������Ҷ��   �������ض���               @�    �������?      forward       back      left      right         pickable                         	                           	      
                     %      &      '      ,      1      2      3      4      5      <      =      G      O      U      W      X      Y      d      e       f   !   o   "   p   #   q   $   r   %   s   &   t   '   }   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   �   6   �   7   �   8   �   9   �   :   �   ;   �   <   �   =   �   >   �   ?   �   @   �   A   �   B   �   C   3YY;�  YY0�  PQV�  �  �  �  W�  T�  P�  QY�  �  �  W�  T�  P�  QY�  �  �  P�  Q�  �  P�  Q�  �  YYY0�  P�	  QV�  �  W�  T�
  T�  �  P�  W�  T�
  T�  R�  �
  T�  R�  �  QY�  �  W�  T�
  T�  �
  T�  Y�  �  &W�  T�  PQV�  �  �  �  Y�  &�  T�  P�  QV�  �  T�  �  �	  �  '�  T�  P�  QV�  �  T�  �  �	  �  &�  T�  P�  QV�  �  T�  �  �	  �  '�  T�  P�  QV�  �  T�  �  �	  YYY0�  P�  QV�  &�  T�  P�  QV�  Y�  �  �  T�  P�  QY�  �  �  T�  PQT�  P�  Q�  �  P�  QY�  �  �  T�
  T�  �
  T�  Y�  �  �  �  �  T�  �  Y` [gd_scene load_steps=7 format=2]

[ext_resource path="res://Ball.gd" type="Script" id=1]
[ext_resource path="res://background_blue.png" type="Texture" id=2]

[sub_resource type="PhysicsMaterial" id=3]
friction = 10.0
rough = true
bounce = 0.05

[sub_resource type="SphereMesh" id=1]

[sub_resource type="SpatialMaterial" id=4]
albedo_texture = ExtResource( 2 )

[sub_resource type="SphereShape" id=2]

[node name="Ball" type="RigidBody"]
mass = 34.95
physics_material_override = SubResource( 3 )
contacts_reported = 153
contact_monitor = true
angular_damp = 1.0
script = ExtResource( 1 )

[node name="MeshInstance" type="MeshInstance" parent="."]
mesh = SubResource( 1 )
material/0 = SubResource( 4 )

[node name="CollisionShape" type="CollisionShape" parent="."]
shape = SubResource( 2 )

[node name="CameraRig" type="Position3D" parent="."]

[node name="Camera" type="Camera" parent="CameraRig"]
transform = Transform( 1, 0, 0, 0, 0.866025, 0.5, 0, -0.5, 0.866025, 0, 3.85, 4.5 )
far = 2296.9

[node name="GroundCheck" type="RayCast" parent="."]
enabled = true
cast_to = Vector3( 0, -1.5, 0 )

[connection signal="body_entered" from="." to="." method="_on_Ball_body_entered"]
      GDSC         %   �      ���Ӷ���   �����϶�   ���������������Ŷ���   ����׶��   �����������Ӷ���   ���������¶�   �������Ӷ���   �������������Ӷ�   ��������Ѷ��   ����Ӷ��   ζ��   ϶��   ̶��      MeshInstance      CollisionShape     	   CameraRig            
                                                    	   	   
   
                                                   +      7      C      D      E      Y      m      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   3YYYYYYYYY0�  PQV�  -YYYY0�  P�  QV�  .�  �  ;�  �  PQT�  PQ�  ;�  �  PQT�  P�  Q�  ;�  �  PQT�  P�  Q�  �  �  �  T�	  T�
  �  T�	  T�
  P�  �  �  Q�  �  T�	  T�  �  T�	  T�  P�  �  �  Q�  �  T�	  T�  �  T�	  T�  P�  �  �  QY�  �  �  �  �  �  �  T�	  T�
  �  T�	  T�
  P�  �  �  Q�  �  T�	  T�  �  T�	  T�  P�  �  �  Q�  �  T�	  T�  �  T�	  T�  P�  �  �  Q�  �  -Y`     [gd_scene load_steps=10 format=2]

[ext_resource path="res://Ball.tscn" type="PackedScene" id=1]
[ext_resource path="res://background_blue.png" type="Texture" id=2]
[ext_resource path="res://GrowGradually.gd" type="Script" id=3]

[sub_resource type="PlaneMesh" id=2]

[sub_resource type="SpatialMaterial" id=4]
albedo_texture = ExtResource( 2 )

[sub_resource type="BoxShape" id=3]

[sub_resource type="PhysicsMaterial" id=7]
rough = true
absorbent = true

[sub_resource type="CylinderShape" id=5]

[sub_resource type="CylinderMesh" id=6]

[node name="Spatial" type="Spatial"]

[node name="ground" type="MeshInstance" parent="."]
transform = Transform( 100, 0, 0, 0, 1, 0, 0, 0, 100, 0.535866, 0.49736, -0.081707 )
mesh = SubResource( 2 )
material/0 = SubResource( 4 )

[node name="Ball" parent="." instance=ExtResource( 1 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 2.79588, 0 )
mass = 11.78

[node name="GrowGradually" type="Node" parent="Ball"]
script = ExtResource( 3 )

[node name="MeshInstance" type="StaticBody" parent="."]
transform = Transform( 10, 0, 0, 0, 1, 0, 0, 0, 10, 0, 0, 0 )

[node name="CollisionShape" type="CollisionShape" parent="MeshInstance"]
transform = Transform( 10, 0, 0, 0, 1, 0, 0, 0, 10, 0, 0, 0 )
shape = SubResource( 3 )

[node name="bodies" type="Node" parent="."]

[node name="RigidBody" type="RigidBody" parent="bodies" groups=["pickable"]]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -0.323032, 0, -32.6292 )
mass = 1.39
physics_material_override = SubResource( 7 )

[node name="CollisionShape" type="CollisionShape" parent="bodies/RigidBody"]
transform = Transform( 0.25, 0, 0, 0, 0.25, 0, 0, 0, 0.25, 0, 1, 0 )
shape = SubResource( 5 )

[node name="MeshInstance" type="MeshInstance" parent="bodies/RigidBody"]
transform = Transform( 0.25, 0, 0, 0, 0.25, 0, 0, 0, 0.25, 0, 1, 0 )
mesh = SubResource( 6 )
material/0 = null

[node name="RigidBody2" type="RigidBody" parent="bodies" groups=["pickable"]]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 5.19212, 0, -28.454 )
mass = 1.39
physics_material_override = SubResource( 7 )

[node name="CollisionShape" type="CollisionShape" parent="bodies/RigidBody2"]
transform = Transform( 0.25, 0, 0, 0, 0.25, 0, 0, 0, 0.25, 0, 1, 0 )
shape = SubResource( 5 )

[node name="MeshInstance" type="MeshInstance" parent="bodies/RigidBody2"]
transform = Transform( 0.25, 0, 0, 0, 0.25, 0, 0, 0, 0.25, 0, 1, 0 )
mesh = SubResource( 6 )
material/0 = null

[node name="RigidBody3" type="RigidBody" parent="bodies" groups=["pickable"]]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 4.74199, 0, -32.6292 )
mass = 1.39
physics_material_override = SubResource( 7 )

[node name="CollisionShape" type="CollisionShape" parent="bodies/RigidBody3"]
transform = Transform( 0.25, 0, 0, 0, 0.25, 0, 0, 0, 0.25, 0, 1, 0 )
shape = SubResource( 5 )

[node name="MeshInstance" type="MeshInstance" parent="bodies/RigidBody3"]
transform = Transform( 0.25, 0, 0, 0, 0.25, 0, 0, 0, 0.25, 0, 1, 0 )
mesh = SubResource( 6 )
material/0 = null

[node name="RigidBody4" type="RigidBody" parent="bodies" groups=["pickable"]]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 10.2571, 0, -28.454 )
mass = 1.39
physics_material_override = SubResource( 7 )

[node name="CollisionShape" type="CollisionShape" parent="bodies/RigidBody4"]
transform = Transform( 0.25, 0, 0, 0, 0.25, 0, 0, 0, 0.25, 0, 1, 0 )
shape = SubResource( 5 )

[node name="MeshInstance" type="MeshInstance" parent="bodies/RigidBody4"]
transform = Transform( 0.25, 0, 0, 0, 0.25, 0, 0, 0, 0.25, 0, 1, 0 )
mesh = SubResource( 6 )
material/0 = null

[node name="RigidBody5" type="RigidBody" parent="bodies" groups=["pickable"]]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 9.91413, 0, -32.6292 )
mass = 1.39
physics_material_override = SubResource( 7 )

[node name="CollisionShape" type="CollisionShape" parent="bodies/RigidBody5"]
transform = Transform( 0.25, 0, 0, 0, 0.25, 0, 0, 0, 0.25, 0, 1, 0 )
shape = SubResource( 5 )

[node name="MeshInstance" type="MeshInstance" parent="bodies/RigidBody5"]
transform = Transform( 0.25, 0, 0, 0, 0.25, 0, 0, 0, 0.25, 0, 1, 0 )
mesh = SubResource( 6 )
material/0 = null

[node name="RigidBody6" type="RigidBody" parent="bodies" groups=["pickable"]]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 15.4293, 0, -28.454 )
mass = 1.39
physics_material_override = SubResource( 7 )

[node name="CollisionShape" type="CollisionShape" parent="bodies/RigidBody6"]
transform = Transform( 0.25, 0, 0, 0, 0.25, 0, 0, 0, 0.25, 0, 1, 0 )
shape = SubResource( 5 )

[node name="MeshInstance" type="MeshInstance" parent="bodies/RigidBody6"]
transform = Transform( 0.25, 0, 0, 0, 0.25, 0, 0, 0, 0.25, 0, 1, 0 )
mesh = SubResource( 6 )
material/0 = null

[node name="RigidBody7" type="RigidBody" parent="bodies" groups=["pickable"]]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 14.9792, 0, -32.6292 )
mass = 1.39
physics_material_override = SubResource( 7 )

[node name="CollisionShape" type="CollisionShape" parent="bodies/RigidBody7"]
transform = Transform( 0.25, 0, 0, 0, 0.25, 0, 0, 0, 0.25, 0, 1, 0 )
shape = SubResource( 5 )

[node name="MeshInstance" type="MeshInstance" parent="bodies/RigidBody7"]
transform = Transform( 0.25, 0, 0, 0, 0.25, 0, 0, 0, 0.25, 0, 1, 0 )
mesh = SubResource( 6 )
material/0 = null

[node name="RigidBody8" type="RigidBody" parent="bodies" groups=["pickable"]]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 20.4943, 0, -28.454 )
mass = 1.39
physics_material_override = SubResource( 7 )

[node name="CollisionShape" type="CollisionShape" parent="bodies/RigidBody8"]
transform = Transform( 0.25, 0, 0, 0, 0.25, 0, 0, 0, 0.25, 0, 1, 0 )
shape = SubResource( 5 )

[node name="MeshInstance" type="MeshInstance" parent="bodies/RigidBody8"]
transform = Transform( 0.25, 0, 0, 0, 0.25, 0, 0, 0, 0.25, 0, 1, 0 )
mesh = SubResource( 6 )
material/0 = null

[node name="RigidBody9" type="RigidBody" parent="bodies" groups=["pickable"]]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -0.323032, 0, -24.4422 )
mass = 1.39
physics_material_override = SubResource( 7 )

[node name="CollisionShape" type="CollisionShape" parent="bodies/RigidBody9"]
transform = Transform( 0.25, 0, 0, 0, 0.25, 0, 0, 0, 0.25, 0, 1, 0 )
shape = SubResource( 5 )

[node name="MeshInstance" type="MeshInstance" parent="bodies/RigidBody9"]
transform = Transform( 0.25, 0, 0, 0, 0.25, 0, 0, 0, 0.25, 0, 1, 0 )
mesh = SubResource( 6 )
material/0 = null

[node name="RigidBody10" type="RigidBody" parent="bodies" groups=["pickable"]]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 5.19212, 0, -20.2669 )
mass = 1.39
physics_material_override = SubResource( 7 )

[node name="CollisionShape" type="CollisionShape" parent="bodies/RigidBody10"]
transform = Transform( 0.25, 0, 0, 0, 0.25, 0, 0, 0, 0.25, 0, 1, 0 )
shape = SubResource( 5 )

[node name="MeshInstance" type="MeshInstance" parent="bodies/RigidBody10"]
transform = Transform( 0.25, 0, 0, 0, 0.25, 0, 0, 0, 0.25, 0, 1, 0 )
mesh = SubResource( 6 )
material/0 = null

[node name="RigidBody11" type="RigidBody" parent="bodies" groups=["pickable"]]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 4.74199, 0, -24.4422 )
mass = 1.39
physics_material_override = SubResource( 7 )

[node name="CollisionShape" type="CollisionShape" parent="bodies/RigidBody11"]
transform = Transform( 0.25, 0, 0, 0, 0.25, 0, 0, 0, 0.25, 0, 1, 0 )
shape = SubResource( 5 )

[node name="MeshInstance" type="MeshInstance" parent="bodies/RigidBody11"]
transform = Transform( 0.25, 0, 0, 0, 0.25, 0, 0, 0, 0.25, 0, 1, 0 )
mesh = SubResource( 6 )
material/0 = null

[node name="RigidBody12" type="RigidBody" parent="bodies" groups=["pickable"]]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 10.2571, 0, -20.2669 )
mass = 1.39
physics_material_override = SubResource( 7 )

[node name="CollisionShape" type="CollisionShape" parent="bodies/RigidBody12"]
transform = Transform( 0.25, 0, 0, 0, 0.25, 0, 0, 0, 0.25, 0, 1, 0 )
shape = SubResource( 5 )

[node name="MeshInstance" type="MeshInstance" parent="bodies/RigidBody12"]
transform = Transform( 0.25, 0, 0, 0, 0.25, 0, 0, 0, 0.25, 0, 1, 0 )
mesh = SubResource( 6 )
material/0 = null

[node name="RigidBody13" type="RigidBody" parent="bodies" groups=["pickable"]]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 9.91413, 0, -24.4422 )
mass = 1.39
physics_material_override = SubResource( 7 )

[node name="CollisionShape" type="CollisionShape" parent="bodies/RigidBody13"]
transform = Transform( 0.25, 0, 0, 0, 0.25, 0, 0, 0, 0.25, 0, 1, 0 )
shape = SubResource( 5 )

[node name="MeshInstance" type="MeshInstance" parent="bodies/RigidBody13"]
transform = Transform( 0.25, 0, 0, 0, 0.25, 0, 0, 0, 0.25, 0, 1, 0 )
mesh = SubResource( 6 )
material/0 = null

[node name="RigidBody14" type="RigidBody" parent="bodies" groups=["pickable"]]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 15.4293, 0, -20.2669 )
mass = 1.39
physics_material_override = SubResource( 7 )

[node name="CollisionShape" type="CollisionShape" parent="bodies/RigidBody14"]
transform = Transform( 0.25, 0, 0, 0, 0.25, 0, 0, 0, 0.25, 0, 1, 0 )
shape = SubResource( 5 )

[node name="MeshInstance" type="MeshInstance" parent="bodies/RigidBody14"]
transform = Transform( 0.25, 0, 0, 0, 0.25, 0, 0, 0, 0.25, 0, 1, 0 )
mesh = SubResource( 6 )
material/0 = null

[node name="RigidBody15" type="RigidBody" parent="bodies" groups=["pickable"]]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 14.9792, 0, -24.4422 )
mass = 1.39
physics_material_override = SubResource( 7 )

[node name="CollisionShape" type="CollisionShape" parent="bodies/RigidBody15"]
transform = Transform( 0.25, 0, 0, 0, 0.25, 0, 0, 0, 0.25, 0, 1, 0 )
shape = SubResource( 5 )

[node name="MeshInstance" type="MeshInstance" parent="bodies/RigidBody15"]
transform = Transform( 0.25, 0, 0, 0, 0.25, 0, 0, 0, 0.25, 0, 1, 0 )
mesh = SubResource( 6 )
material/0 = null

[node name="RigidBody16" type="RigidBody" parent="bodies" groups=["pickable"]]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 20.4943, 0, -20.2669 )
mass = 1.39
physics_material_override = SubResource( 7 )

[node name="CollisionShape" type="CollisionShape" parent="bodies/RigidBody16"]
transform = Transform( 0.25, 0, 0, 0, 0.25, 0, 0, 0, 0.25, 0, 1, 0 )
shape = SubResource( 5 )

[node name="MeshInstance" type="MeshInstance" parent="bodies/RigidBody16"]
transform = Transform( 0.25, 0, 0, 0, 0.25, 0, 0, 0, 0.25, 0, 1, 0 )
mesh = SubResource( 6 )
material/0 = null
               GDST�   �       �߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����������������������������������������������������������������������������������������������������߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����������������������������������������������������������������������������������������������������߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����������������������������������������������������������������������������������������������������߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����������������������������������������������������������������������������������������������������߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����������������������������������������������������������������������������������������������������߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����������������������������������������������������������������������������������������������������߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����������������������������������������������������������������������������������������������������߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����������������������������������������������������������������������������������������������������߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����������������������������������������������������������������������������������������������������߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����������������������������������������������������������������������������������������������������߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����������������������������������������������������������������������������������������������������߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����������������������������������������������������������������������������������������������������߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����������������������������������������������������������������������������������������������������߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����������������������������������������������������������������������������������������������������߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����������������������������������������������������������������������������������������������������߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����������������������������������������������������������������������������������������������������߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����������������������������������������������������������������������������������������������������߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����������������������������������������������������������������������������������������������������߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����������������������������������������������������������������������������������������������������߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����������������������������������������������������������������������������������������������������߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����������������������������������������������������������������������������������������������������߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����������������������������������������������������������������������������������������������������߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����������������������������������������������������������������������������������������������������߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����������������������������������������������������������������������������������������������������߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����������������������������������������������������������������������������������������������������߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����������������������������������������������������������������������������������������������������߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����������������������������������������������������������������������������������������������������߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����������������������������������������������������������������������������������������������������߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����������������������������������������������������������������������������������������������������߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����������������������������������������������������������������������������������������������������߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����������������������������������������������������߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����������������������������������������������������߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����������������������������������������������������߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����������������������������������������������������߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����������������������������������������������������߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����������������������������������������������������߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����������������������������������������������������߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����������������������������������������������������������������������������������������������������߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����������������������������������������������������߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����������������������������������������������������߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����������������������������������������������������߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����������������������������������������������������߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����������������������������������������������������߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����������������������������������������������������߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����������������������������������������������������߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����߷�����������������������������߷�����߷�����߷�����߷�����������������������������߷�����߷�����߷�����߷�����������������������������߷�����߷�����߷�����߷�����������������������������������������������������߷�����߷�����߷�����߷�����������������������������߷�����߷�����߷�����߷�����������������������������߷�����߷�����߷�����߷�����������������������������߷�����߷�����߷�����߷�����߷�����߷�����������������߷�����߷�����������������������������߷�����߷�����������������߷�����߷�����߷�����������������߷������D]EPP�D]E����Y������    [remap]

importer="texture"
type="StreamTexture"
path.s3tc="res://.import/background_blue.png-3325b4f04eecdd013a31b5b01f056689.s3tc.stex"
path.etc="res://.import/background_blue.png-3325b4f04eecdd013a31b5b01f056689.etc.stex"
metadata={
"imported_formats": [ "s3tc", "etc" ],
"vram_texture": true
}

[deps]

source_file="res://background_blue.png"
dest_files=[ "res://.import/background_blue.png-3325b4f04eecdd013a31b5b01f056689.s3tc.stex", "res://.import/background_blue.png-3325b4f04eecdd013a31b5b01f056689.etc.stex" ]

[params]

compress/mode=2
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=true
flags/filter=true
flags/mipmaps=true
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
 [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @           9  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�ݜytTU��?��WK*�=���%�  F����0N��݂:���Q�v��{�[�����E�ӋH���:���B�� YHB*d_*�jyo�(*M�JR!h��S�T��w�߻���ro���� N�\���D�*]��c����z��D�R�[�
5Jg��9E�|JxF׵'�a���Q���BH�~���!����w�A�b
C1�dB�.-�#��ihn�����u��B��1YSB<%�������dA�����C�$+(�����]�BR���Qsu][`
�DV����у�1�G���j�G͕IY! L1�]��� +FS�IY!IP ��|�}��*A��H��R�tQq����D`TW���p\3���M���,�fQ����d��h�m7r�U��f������.��ik�>O�;��xm��'j�u�(o}�����Q�S�-��cBc��d��rI�Ϛ�$I|]�ơ�vJkZ�9>��f����@EuC�~�2�ym�ش��U�\�KAZ4��b�4������;�X婐����@Hg@���o��W�b�x�)����3]j_��V;K����7�u����;o�������;=|��Ŗ}5��0q�$�!?��9�|�5tv�C�sHPTX@t����w�nw��۝�8�=s�p��I}�DZ-̝�ǆ�'�;=����R�PR�ۥu���u��ǻC�sH`��>�p�P ���O3R�������۝�SZ7 �p��o�P!�
��� �l��ހmT�Ƴێ�gA��gm�j����iG���B� ܦ(��cX�}4ۻB��ao��"����� ����G�7���H���æ;,NW?��[��`�r~��w�kl�d4�������YT7�P��5lF�BEc��=<�����?�:]�������G�Μ�{������n�v��%���7�eoݪ��
�QX¬)�JKb����W�[�G ��P$��k�Y:;�����{���a��&�eפ�����O�5,;����yx�b>=fc�* �z��{�fr��7��p���Ôִ�P����t^�]͑�~zs.�3����4��<IG�w�e��e��ih�/ˆ�9�H��f�?����O��.O��;!��]���x�-$E�a1ɜ�u�+7Ȃ�w�md��5���C.��\��X��1?�Nغ/�� ��~��<:k?8��X���!���[���꩓��g��:��E����>��꩓�u��A���	iI4���^v:�^l/;MC��	iI��TM-$�X�;iLH���;iI1�Zm7����P~��G�&g�|BfqV#�M������%��TM��mB�/�)����f����~3m`��������m�Ȉ�Ƽq!cr�pc�8fd���Mۨkl�}P�Л�汻��3p�̤H�>+���1D��i�aۡz�
������Z�Lz|8��.ִQ��v@�1%&���͏�������m���KH�� �p8H�4�9����/*)�aa��g�r�w��F36���(���7�fw����P��&�c����{﹏E7-f�M�).���9��$F�f r �9'1��s2).��G��{���?,�
�G��p�µ�QU�UO�����>��/�g���,�M��5�ʖ�e˃�d����/�M`�=�y=�����f�ӫQU�k'��E�F�+ =΂���
l�&���%%�������F#KY����O7>��;w���l6***B�g)�#W�/�k2�������TJ�'����=!Q@mKYYYdg��$Ib��E�j6�U�,Z�鼌Uvv6YYYԶ��}( ���ߠ#x~�s,X0�����rY��yz�	|r�6l����cN��5ϑ��KBB���5ϡ#xq�7�`=4A�o�xds)�~wO�z�^��m���n�Ds�������e|�0�u��k�ٱ:��RN��w�/!�^�<�ͣ�K1d�F����:�������ˣ����%U�Ą������l{�y����)<�G�y�`}�t��y!��O@� A� Y��sv:K�J��ՎۣQ�܃��T6y�ǯ�Zi
��<�F��1>�	c#�Ǉ��i�L��D�� �u�awe1�e&')�_�Ǝ^V�i߀4�$G�:��r��>h�hݝ������t;)�� &�@zl�Ұր��V6�T�+����0q��L���[t���N&e��Z��ˆ/����(�i啝'i�R�����?:
P].L��S��E�݅�Á�.a6�WjY$F�9P�«����V^7���1Ȓ� �b6�(����0"�k�;�@MC���N�]7 �)Q|s����QfdI���5 ��.f��#1���G���z���>)�N�>�L0T�ۘ5}��Y[�W뿼mj���n���S?�v��ْ|.FE"=�ߑ��q����������p����3�¬8�T�GZ���4ݪ�0�L�Y��jRH��.X�&�v����#�t��7y_#�[�o��V�O����^�����paV�&J�V+V��QY����f+m��(�?/������{�X��:�!:5�G�x���I����HG�%�/�LZ\8/����yLf�Æ>�X�Єǣq���$E������E�Ǣ�����gێ��s�rxO��x孏Q]n���LH����98�i�0==���O$5��o^����>6�a� �*�)?^Ca��yv&���%�5>�n�bŜL:��y�w���/��o�褨A���y,[|=1�VZ�U>,?͑���w��u5d�#�K�b�D�&�:�����l~�S\���[CrTV�$����y��;#�������6�y��3ݸ5��.�V��K���{�,-ւ� k1aB���x���	LL� ����ңl۱������!U��0L�ϴ��O\t$Yi�D�Dm��]|�m���M�3���bT�
�N_����~uiIc��M�DZI���Wgkn����C��!xSv�Pt�F��kڨ��������OKh��L����Z&ip��
ޅ���U�C�[�6��p���;uW8<n'n��nͽQ�
�gԞ�+Z	���{���G�Ĭ� �t�]�p;躆 ��.�ۣ�������^��n�ut�L �W��+ ���hO��^�w�\i� ��:9>3�=��So�2v���U1z��.�^�ߋěN���,���� �f��V�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
[remap]

path="res://Ball.gdc"
 [remap]

path="res://GrowGradually.gdc"
        �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      application/config/name         GamejamSnowball    application/run/main_scene          res://Playground.tscn      application/config/icon         res://icon.png     gdnative/singletons             input/forward`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          unicode           echo          script      
   input/back`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          unicode           echo          script      
   input/left`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          unicode           echo          script         input/right`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          unicode           echo          script      )   physics/common/enable_pause_aware_picking         $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_environment          res://default_env.tres          