йщ
о≈
9
Add
x"T
y"T
z"T"
Ttype:
2	
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeintИ
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
{
BiasAdd

value"T	
bias"T
output"T"
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
A
Equal
x"T
y"T
z
"
Ttype:
2	
Р
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
S
HistogramSummary
tag
values"T
summary"
Ttype0:
2		
.
Identity

input"T
output"T"	
Ttype
o
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2
:
Maximum
x"T
y"T
z"T"
Ttype:	
2	Р
К
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
:
Minimum
x"T
y"T
z"T"
Ttype:	
2	Р
<
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
}
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
=
RealDiv
x"T
y"T
z"T"
Ttype:
2	
A
Relu
features"T
activations"T"
Ttype:
2		
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
M
ScalarSummary
tags
values"T
summary"
Ttype:
2		
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
ц
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
9
Sub
x"T
y"T
z"T"
Ttype:
2	
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И"serve*1.4.02v1.4.0-rc1-11-g130a514 Њ

global_step/Initializer/zerosConst*
_class
loc:@global_step*
value	B	 R *
dtype0	*
_output_shapes
: 
П
global_step
VariableV2*
dtype0	*
_output_shapes
: *
shared_name *
_class
loc:@global_step*
	container *
shape: 
≤
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
_output_shapes
: *
T0	*
_class
loc:@global_step
d
	wine_typePlaceholder*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
h
fixed_acidityPlaceholder*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€*
dtype0
k
volatile_acidityPlaceholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
f
citric_acidPlaceholder*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
i
residual_sugarPlaceholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
d
	chloridesPlaceholder*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€*
dtype0
n
free_sulfur_dioxidePlaceholder*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
o
total_sulfur_dioxidePlaceholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
b
densityPlaceholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
]
phPlaceholder*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
d
	sulphatesPlaceholder*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€*
dtype0
b
alcoholPlaceholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
М
Adnn/input_from_feature_columns/input_layer/alcohol/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€
’
=dnn/input_from_feature_columns/input_layer/alcohol/ExpandDims
ExpandDimsalcoholAdnn/input_from_feature_columns/input_layer/alcohol/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:€€€€€€€€€
°
\dnn/input_from_feature_columns/input_layer/alcohol/alcohol_normalize/clip_by_value/Minimum/yConst*
valueB
 *33cA*
dtype0*
_output_shapes
: 
і
Zdnn/input_from_feature_columns/input_layer/alcohol/alcohol_normalize/clip_by_value/MinimumMinimum=dnn/input_from_feature_columns/input_layer/alcohol/ExpandDims\dnn/input_from_feature_columns/input_layer/alcohol/alcohol_normalize/clip_by_value/Minimum/y*
T0*'
_output_shapes
:€€€€€€€€€
Щ
Tdnn/input_from_feature_columns/input_layer/alcohol/alcohol_normalize/clip_by_value/yConst*
valueB
 *ffA*
dtype0*
_output_shapes
: 
Ѕ
Rdnn/input_from_feature_columns/input_layer/alcohol/alcohol_normalize/clip_by_valueMaximumZdnn/input_from_feature_columns/input_layer/alcohol/alcohol_normalize/clip_by_value/MinimumTdnn/input_from_feature_columns/input_layer/alcohol/alcohol_normalize/clip_by_value/y*'
_output_shapes
:€€€€€€€€€*
T0
П
Jdnn/input_from_feature_columns/input_layer/alcohol/alcohol_normalize/sub/yConst*
valueB
 *[г'A*
dtype0*
_output_shapes
: 
°
Hdnn/input_from_feature_columns/input_layer/alcohol/alcohol_normalize/subSubRdnn/input_from_feature_columns/input_layer/alcohol/alcohol_normalize/clip_by_valueJdnn/input_from_feature_columns/input_layer/alcohol/alcohol_normalize/sub/y*'
_output_shapes
:€€€€€€€€€*
T0
У
Ndnn/input_from_feature_columns/input_layer/alcohol/alcohol_normalize/truediv/yConst*
_output_shapes
: *
valueB
 *£Ш?*
dtype0
£
Ldnn/input_from_feature_columns/input_layer/alcohol/alcohol_normalize/truedivRealDivHdnn/input_from_feature_columns/input_layer/alcohol/alcohol_normalize/subNdnn/input_from_feature_columns/input_layer/alcohol/alcohol_normalize/truediv/y*
T0*'
_output_shapes
:€€€€€€€€€
ƒ
8dnn/input_from_feature_columns/input_layer/alcohol/ShapeShapeLdnn/input_from_feature_columns/input_layer/alcohol/alcohol_normalize/truediv*
T0*
out_type0*
_output_shapes
:
Р
Fdnn/input_from_feature_columns/input_layer/alcohol/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
Т
Hdnn/input_from_feature_columns/input_layer/alcohol/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
Т
Hdnn/input_from_feature_columns/input_layer/alcohol/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
ш
@dnn/input_from_feature_columns/input_layer/alcohol/strided_sliceStridedSlice8dnn/input_from_feature_columns/input_layer/alcohol/ShapeFdnn/input_from_feature_columns/input_layer/alcohol/strided_slice/stackHdnn/input_from_feature_columns/input_layer/alcohol/strided_slice/stack_1Hdnn/input_from_feature_columns/input_layer/alcohol/strided_slice/stack_2*
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 
Д
Bdnn/input_from_feature_columns/input_layer/alcohol/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
И
@dnn/input_from_feature_columns/input_layer/alcohol/Reshape/shapePack@dnn/input_from_feature_columns/input_layer/alcohol/strided_sliceBdnn/input_from_feature_columns/input_layer/alcohol/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
Х
:dnn/input_from_feature_columns/input_layer/alcohol/ReshapeReshapeLdnn/input_from_feature_columns/input_layer/alcohol/alcohol_normalize/truediv@dnn/input_from_feature_columns/input_layer/alcohol/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
О
Cdnn/input_from_feature_columns/input_layer/chlorides/ExpandDims/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
џ
?dnn/input_from_feature_columns/input_layer/chlorides/ExpandDims
ExpandDims	chloridesCdnn/input_from_feature_columns/input_layer/chlorides/ExpandDims/dim*'
_output_shapes
:€€€€€€€€€*

Tdim0*
T0
•
`dnn/input_from_feature_columns/input_layer/chlorides/chlorides_normalize/clip_by_value/Minimum/yConst*
_output_shapes
: *
valueB
 *j?*
dtype0
Њ
^dnn/input_from_feature_columns/input_layer/chlorides/chlorides_normalize/clip_by_value/MinimumMinimum?dnn/input_from_feature_columns/input_layer/chlorides/ExpandDims`dnn/input_from_feature_columns/input_layer/chlorides/chlorides_normalize/clip_by_value/Minimum/y*'
_output_shapes
:€€€€€€€€€*
T0
Э
Xdnn/input_from_feature_columns/input_layer/chlorides/chlorides_normalize/clip_by_value/yConst*
valueB
 *Љt<*
dtype0*
_output_shapes
: 
Ќ
Vdnn/input_from_feature_columns/input_layer/chlorides/chlorides_normalize/clip_by_valueMaximum^dnn/input_from_feature_columns/input_layer/chlorides/chlorides_normalize/clip_by_value/MinimumXdnn/input_from_feature_columns/input_layer/chlorides/chlorides_normalize/clip_by_value/y*
T0*'
_output_shapes
:€€€€€€€€€
У
Ndnn/input_from_feature_columns/input_layer/chlorides/chlorides_normalize/sub/yConst*
valueB
 *«uc=*
dtype0*
_output_shapes
: 
≠
Ldnn/input_from_feature_columns/input_layer/chlorides/chlorides_normalize/subSubVdnn/input_from_feature_columns/input_layer/chlorides/chlorides_normalize/clip_by_valueNdnn/input_from_feature_columns/input_layer/chlorides/chlorides_normalize/sub/y*'
_output_shapes
:€€€€€€€€€*
T0
Ч
Rdnn/input_from_feature_columns/input_layer/chlorides/chlorides_normalize/truediv/yConst*
valueB
 *Р≥=*
dtype0*
_output_shapes
: 
ѓ
Pdnn/input_from_feature_columns/input_layer/chlorides/chlorides_normalize/truedivRealDivLdnn/input_from_feature_columns/input_layer/chlorides/chlorides_normalize/subRdnn/input_from_feature_columns/input_layer/chlorides/chlorides_normalize/truediv/y*
T0*'
_output_shapes
:€€€€€€€€€
 
:dnn/input_from_feature_columns/input_layer/chlorides/ShapeShapePdnn/input_from_feature_columns/input_layer/chlorides/chlorides_normalize/truediv*
T0*
out_type0*
_output_shapes
:
Т
Hdnn/input_from_feature_columns/input_layer/chlorides/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Ф
Jdnn/input_from_feature_columns/input_layer/chlorides/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ф
Jdnn/input_from_feature_columns/input_layer/chlorides/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
В
Bdnn/input_from_feature_columns/input_layer/chlorides/strided_sliceStridedSlice:dnn/input_from_feature_columns/input_layer/chlorides/ShapeHdnn/input_from_feature_columns/input_layer/chlorides/strided_slice/stackJdnn/input_from_feature_columns/input_layer/chlorides/strided_slice/stack_1Jdnn/input_from_feature_columns/input_layer/chlorides/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
Ж
Ddnn/input_from_feature_columns/input_layer/chlorides/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
О
Bdnn/input_from_feature_columns/input_layer/chlorides/Reshape/shapePackBdnn/input_from_feature_columns/input_layer/chlorides/strided_sliceDdnn/input_from_feature_columns/input_layer/chlorides/Reshape/shape/1*

axis *
N*
_output_shapes
:*
T0
Э
<dnn/input_from_feature_columns/input_layer/chlorides/ReshapeReshapePdnn/input_from_feature_columns/input_layer/chlorides/chlorides_normalize/truedivBdnn/input_from_feature_columns/input_layer/chlorides/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
Р
Ednn/input_from_feature_columns/input_layer/citric_acid/ExpandDims/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
б
Adnn/input_from_feature_columns/input_layer/citric_acid/ExpandDims
ExpandDimscitric_acidEdnn/input_from_feature_columns/input_layer/citric_acid/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:€€€€€€€€€
©
ddnn/input_from_feature_columns/input_layer/citric_acid/citric_acid_normalize/clip_by_value/Minimum/yConst*
valueB
 *бz‘?*
dtype0*
_output_shapes
: 
»
bdnn/input_from_feature_columns/input_layer/citric_acid/citric_acid_normalize/clip_by_value/MinimumMinimumAdnn/input_from_feature_columns/input_layer/citric_acid/ExpandDimsddnn/input_from_feature_columns/input_layer/citric_acid/citric_acid_normalize/clip_by_value/Minimum/y*
T0*'
_output_shapes
:€€€€€€€€€
°
\dnn/input_from_feature_columns/input_layer/citric_acid/citric_acid_normalize/clip_by_value/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
ў
Zdnn/input_from_feature_columns/input_layer/citric_acid/citric_acid_normalize/clip_by_valueMaximumbdnn/input_from_feature_columns/input_layer/citric_acid/citric_acid_normalize/clip_by_value/Minimum\dnn/input_from_feature_columns/input_layer/citric_acid/citric_acid_normalize/clip_by_value/y*
T0*'
_output_shapes
:€€€€€€€€€
Ч
Rdnn/input_from_feature_columns/input_layer/citric_acid/citric_acid_normalize/sub/yConst*
valueB
 *vЉҐ>*
dtype0*
_output_shapes
: 
є
Pdnn/input_from_feature_columns/input_layer/citric_acid/citric_acid_normalize/subSubZdnn/input_from_feature_columns/input_layer/citric_acid/citric_acid_normalize/clip_by_valueRdnn/input_from_feature_columns/input_layer/citric_acid/citric_acid_normalize/sub/y*
T0*'
_output_shapes
:€€€€€€€€€
Ы
Vdnn/input_from_feature_columns/input_layer/citric_acid/citric_acid_normalize/truediv/yConst*
valueB
 *ђЁ>*
dtype0*
_output_shapes
: 
ї
Tdnn/input_from_feature_columns/input_layer/citric_acid/citric_acid_normalize/truedivRealDivPdnn/input_from_feature_columns/input_layer/citric_acid/citric_acid_normalize/subVdnn/input_from_feature_columns/input_layer/citric_acid/citric_acid_normalize/truediv/y*
T0*'
_output_shapes
:€€€€€€€€€
–
<dnn/input_from_feature_columns/input_layer/citric_acid/ShapeShapeTdnn/input_from_feature_columns/input_layer/citric_acid/citric_acid_normalize/truediv*
T0*
out_type0*
_output_shapes
:
Ф
Jdnn/input_from_feature_columns/input_layer/citric_acid/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Ц
Ldnn/input_from_feature_columns/input_layer/citric_acid/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ц
Ldnn/input_from_feature_columns/input_layer/citric_acid/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
М
Ddnn/input_from_feature_columns/input_layer/citric_acid/strided_sliceStridedSlice<dnn/input_from_feature_columns/input_layer/citric_acid/ShapeJdnn/input_from_feature_columns/input_layer/citric_acid/strided_slice/stackLdnn/input_from_feature_columns/input_layer/citric_acid/strided_slice/stack_1Ldnn/input_from_feature_columns/input_layer/citric_acid/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
И
Fdnn/input_from_feature_columns/input_layer/citric_acid/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
Ф
Ddnn/input_from_feature_columns/input_layer/citric_acid/Reshape/shapePackDdnn/input_from_feature_columns/input_layer/citric_acid/strided_sliceFdnn/input_from_feature_columns/input_layer/citric_acid/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
•
>dnn/input_from_feature_columns/input_layer/citric_acid/ReshapeReshapeTdnn/input_from_feature_columns/input_layer/citric_acid/citric_acid_normalize/truedivDdnn/input_from_feature_columns/input_layer/citric_acid/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
М
Adnn/input_from_feature_columns/input_layer/density/ExpandDims/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
’
=dnn/input_from_feature_columns/input_layer/density/ExpandDims
ExpandDimsdensityAdnn/input_from_feature_columns/input_layer/density/ExpandDims/dim*
T0*'
_output_shapes
:€€€€€€€€€*

Tdim0
°
\dnn/input_from_feature_columns/input_layer/density/density_normalize/clip_by_value/Minimum/yConst*
valueB
 *ГQБ?*
dtype0*
_output_shapes
: 
і
Zdnn/input_from_feature_columns/input_layer/density/density_normalize/clip_by_value/MinimumMinimum=dnn/input_from_feature_columns/input_layer/density/ExpandDims\dnn/input_from_feature_columns/input_layer/density/density_normalize/clip_by_value/Minimum/y*
T0*'
_output_shapes
:€€€€€€€€€
Щ
Tdnn/input_from_feature_columns/input_layer/density/density_normalize/clip_by_value/yConst*
valueB
 *>≥|?*
dtype0*
_output_shapes
: 
Ѕ
Rdnn/input_from_feature_columns/input_layer/density/density_normalize/clip_by_valueMaximumZdnn/input_from_feature_columns/input_layer/density/density_normalize/clip_by_value/MinimumTdnn/input_from_feature_columns/input_layer/density/density_normalize/clip_by_value/y*
T0*'
_output_shapes
:€€€€€€€€€
П
Jdnn/input_from_feature_columns/input_layer/density/density_normalize/sub/yConst*
valueB
 *;£~?*
dtype0*
_output_shapes
: 
°
Hdnn/input_from_feature_columns/input_layer/density/density_normalize/subSubRdnn/input_from_feature_columns/input_layer/density/density_normalize/clip_by_valueJdnn/input_from_feature_columns/input_layer/density/density_normalize/sub/y*
T0*'
_output_shapes
:€€€€€€€€€
У
Ndnn/input_from_feature_columns/input_layer/density/density_normalize/truediv/yConst*
valueB
 *BA;*
dtype0*
_output_shapes
: 
£
Ldnn/input_from_feature_columns/input_layer/density/density_normalize/truedivRealDivHdnn/input_from_feature_columns/input_layer/density/density_normalize/subNdnn/input_from_feature_columns/input_layer/density/density_normalize/truediv/y*
T0*'
_output_shapes
:€€€€€€€€€
ƒ
8dnn/input_from_feature_columns/input_layer/density/ShapeShapeLdnn/input_from_feature_columns/input_layer/density/density_normalize/truediv*
_output_shapes
:*
T0*
out_type0
Р
Fdnn/input_from_feature_columns/input_layer/density/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
Т
Hdnn/input_from_feature_columns/input_layer/density/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
Т
Hdnn/input_from_feature_columns/input_layer/density/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ш
@dnn/input_from_feature_columns/input_layer/density/strided_sliceStridedSlice8dnn/input_from_feature_columns/input_layer/density/ShapeFdnn/input_from_feature_columns/input_layer/density/strided_slice/stackHdnn/input_from_feature_columns/input_layer/density/strided_slice/stack_1Hdnn/input_from_feature_columns/input_layer/density/strided_slice/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
Д
Bdnn/input_from_feature_columns/input_layer/density/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
И
@dnn/input_from_feature_columns/input_layer/density/Reshape/shapePack@dnn/input_from_feature_columns/input_layer/density/strided_sliceBdnn/input_from_feature_columns/input_layer/density/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
Х
:dnn/input_from_feature_columns/input_layer/density/ReshapeReshapeLdnn/input_from_feature_columns/input_layer/density/density_normalize/truediv@dnn/input_from_feature_columns/input_layer/density/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
Т
Gdnn/input_from_feature_columns/input_layer/fixed_acidity/ExpandDims/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
з
Cdnn/input_from_feature_columns/input_layer/fixed_acidity/ExpandDims
ExpandDimsfixed_acidityGdnn/input_from_feature_columns/input_layer/fixed_acidity/ExpandDims/dim*
T0*'
_output_shapes
:€€€€€€€€€*

Tdim0
≠
hdnn/input_from_feature_columns/input_layer/fixed_acidity/fixed_acidity_normalize/clip_by_value/Minimum/yConst*
valueB
 *  xA*
dtype0*
_output_shapes
: 
“
fdnn/input_from_feature_columns/input_layer/fixed_acidity/fixed_acidity_normalize/clip_by_value/MinimumMinimumCdnn/input_from_feature_columns/input_layer/fixed_acidity/ExpandDimshdnn/input_from_feature_columns/input_layer/fixed_acidity/fixed_acidity_normalize/clip_by_value/Minimum/y*'
_output_shapes
:€€€€€€€€€*
T0
•
`dnn/input_from_feature_columns/input_layer/fixed_acidity/fixed_acidity_normalize/clip_by_value/yConst*
valueB
 *33s@*
dtype0*
_output_shapes
: 
е
^dnn/input_from_feature_columns/input_layer/fixed_acidity/fixed_acidity_normalize/clip_by_valueMaximumfdnn/input_from_feature_columns/input_layer/fixed_acidity/fixed_acidity_normalize/clip_by_value/Minimum`dnn/input_from_feature_columns/input_layer/fixed_acidity/fixed_acidity_normalize/clip_by_value/y*
T0*'
_output_shapes
:€€€€€€€€€
Ы
Vdnn/input_from_feature_columns/input_layer/fixed_acidity/fixed_acidity_normalize/sub/yConst*
valueB
 *кДж@*
dtype0*
_output_shapes
: 
≈
Tdnn/input_from_feature_columns/input_layer/fixed_acidity/fixed_acidity_normalize/subSub^dnn/input_from_feature_columns/input_layer/fixed_acidity/fixed_acidity_normalize/clip_by_valueVdnn/input_from_feature_columns/input_layer/fixed_acidity/fixed_acidity_normalize/sub/y*
T0*'
_output_shapes
:€€€€€€€€€
Я
Zdnn/input_from_feature_columns/input_layer/fixed_acidity/fixed_acidity_normalize/truediv/yConst*
valueB
 *5e£?*
dtype0*
_output_shapes
: 
«
Xdnn/input_from_feature_columns/input_layer/fixed_acidity/fixed_acidity_normalize/truedivRealDivTdnn/input_from_feature_columns/input_layer/fixed_acidity/fixed_acidity_normalize/subZdnn/input_from_feature_columns/input_layer/fixed_acidity/fixed_acidity_normalize/truediv/y*'
_output_shapes
:€€€€€€€€€*
T0
÷
>dnn/input_from_feature_columns/input_layer/fixed_acidity/ShapeShapeXdnn/input_from_feature_columns/input_layer/fixed_acidity/fixed_acidity_normalize/truediv*
T0*
out_type0*
_output_shapes
:
Ц
Ldnn/input_from_feature_columns/input_layer/fixed_acidity/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
Ш
Ndnn/input_from_feature_columns/input_layer/fixed_acidity/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ш
Ndnn/input_from_feature_columns/input_layer/fixed_acidity/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
Ц
Fdnn/input_from_feature_columns/input_layer/fixed_acidity/strided_sliceStridedSlice>dnn/input_from_feature_columns/input_layer/fixed_acidity/ShapeLdnn/input_from_feature_columns/input_layer/fixed_acidity/strided_slice/stackNdnn/input_from_feature_columns/input_layer/fixed_acidity/strided_slice/stack_1Ndnn/input_from_feature_columns/input_layer/fixed_acidity/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
К
Hdnn/input_from_feature_columns/input_layer/fixed_acidity/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
Ъ
Fdnn/input_from_feature_columns/input_layer/fixed_acidity/Reshape/shapePackFdnn/input_from_feature_columns/input_layer/fixed_acidity/strided_sliceHdnn/input_from_feature_columns/input_layer/fixed_acidity/Reshape/shape/1*
_output_shapes
:*
T0*

axis *
N
≠
@dnn/input_from_feature_columns/input_layer/fixed_acidity/ReshapeReshapeXdnn/input_from_feature_columns/input_layer/fixed_acidity/fixed_acidity_normalize/truedivFdnn/input_from_feature_columns/input_layer/fixed_acidity/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
Ш
Mdnn/input_from_feature_columns/input_layer/free_sulfur_dioxide/ExpandDims/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
щ
Idnn/input_from_feature_columns/input_layer/free_sulfur_dioxide/ExpandDims
ExpandDimsfree_sulfur_dioxideMdnn/input_from_feature_columns/input_layer/free_sulfur_dioxide/ExpandDims/dim*
T0*'
_output_shapes
:€€€€€€€€€*

Tdim0
є
tdnn/input_from_feature_columns/input_layer/free_sulfur_dioxide/free_sulfur_dioxide_normalize/clip_by_value/Minimum/yConst*
valueB
 * АC*
dtype0*
_output_shapes
: 
р
rdnn/input_from_feature_columns/input_layer/free_sulfur_dioxide/free_sulfur_dioxide_normalize/clip_by_value/MinimumMinimumIdnn/input_from_feature_columns/input_layer/free_sulfur_dioxide/ExpandDimstdnn/input_from_feature_columns/input_layer/free_sulfur_dioxide/free_sulfur_dioxide_normalize/clip_by_value/Minimum/y*'
_output_shapes
:€€€€€€€€€*
T0
±
ldnn/input_from_feature_columns/input_layer/free_sulfur_dioxide/free_sulfur_dioxide_normalize/clip_by_value/yConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Й
jdnn/input_from_feature_columns/input_layer/free_sulfur_dioxide/free_sulfur_dioxide_normalize/clip_by_valueMaximumrdnn/input_from_feature_columns/input_layer/free_sulfur_dioxide/free_sulfur_dioxide_normalize/clip_by_value/Minimumldnn/input_from_feature_columns/input_layer/free_sulfur_dioxide/free_sulfur_dioxide_normalize/clip_by_value/y*
T0*'
_output_shapes
:€€€€€€€€€
І
bdnn/input_from_feature_columns/input_layer/free_sulfur_dioxide/free_sulfur_dioxide_normalize/sub/yConst*
valueB
 *—хA*
dtype0*
_output_shapes
: 
й
`dnn/input_from_feature_columns/input_layer/free_sulfur_dioxide/free_sulfur_dioxide_normalize/subSubjdnn/input_from_feature_columns/input_layer/free_sulfur_dioxide/free_sulfur_dioxide_normalize/clip_by_valuebdnn/input_from_feature_columns/input_layer/free_sulfur_dioxide/free_sulfur_dioxide_normalize/sub/y*
T0*'
_output_shapes
:€€€€€€€€€
Ђ
fdnn/input_from_feature_columns/input_layer/free_sulfur_dioxide/free_sulfur_dioxide_normalize/truediv/yConst*
valueB
 *BxМA*
dtype0*
_output_shapes
: 
л
ddnn/input_from_feature_columns/input_layer/free_sulfur_dioxide/free_sulfur_dioxide_normalize/truedivRealDiv`dnn/input_from_feature_columns/input_layer/free_sulfur_dioxide/free_sulfur_dioxide_normalize/subfdnn/input_from_feature_columns/input_layer/free_sulfur_dioxide/free_sulfur_dioxide_normalize/truediv/y*
T0*'
_output_shapes
:€€€€€€€€€
и
Ddnn/input_from_feature_columns/input_layer/free_sulfur_dioxide/ShapeShapeddnn/input_from_feature_columns/input_layer/free_sulfur_dioxide/free_sulfur_dioxide_normalize/truediv*
T0*
out_type0*
_output_shapes
:
Ь
Rdnn/input_from_feature_columns/input_layer/free_sulfur_dioxide/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Ю
Tdnn/input_from_feature_columns/input_layer/free_sulfur_dioxide/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ю
Tdnn/input_from_feature_columns/input_layer/free_sulfur_dioxide/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
Ldnn/input_from_feature_columns/input_layer/free_sulfur_dioxide/strided_sliceStridedSliceDdnn/input_from_feature_columns/input_layer/free_sulfur_dioxide/ShapeRdnn/input_from_feature_columns/input_layer/free_sulfur_dioxide/strided_slice/stackTdnn/input_from_feature_columns/input_layer/free_sulfur_dioxide/strided_slice/stack_1Tdnn/input_from_feature_columns/input_layer/free_sulfur_dioxide/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
Р
Ndnn/input_from_feature_columns/input_layer/free_sulfur_dioxide/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
ђ
Ldnn/input_from_feature_columns/input_layer/free_sulfur_dioxide/Reshape/shapePackLdnn/input_from_feature_columns/input_layer/free_sulfur_dioxide/strided_sliceNdnn/input_from_feature_columns/input_layer/free_sulfur_dioxide/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
≈
Fdnn/input_from_feature_columns/input_layer/free_sulfur_dioxide/ReshapeReshapeddnn/input_from_feature_columns/input_layer/free_sulfur_dioxide/free_sulfur_dioxide_normalize/truedivLdnn/input_from_feature_columns/input_layer/free_sulfur_dioxide/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
З
<dnn/input_from_feature_columns/input_layer/ph/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€
∆
8dnn/input_from_feature_columns/input_layer/ph/ExpandDims
ExpandDimsph<dnn/input_from_feature_columns/input_layer/ph/ExpandDims/dim*
T0*'
_output_shapes
:€€€€€€€€€*

Tdim0
Ч
Rdnn/input_from_feature_columns/input_layer/ph/ph_normalize/clip_by_value/Minimum/yConst*
valueB
 *ЪЩy@*
dtype0*
_output_shapes
: 
Ы
Pdnn/input_from_feature_columns/input_layer/ph/ph_normalize/clip_by_value/MinimumMinimum8dnn/input_from_feature_columns/input_layer/ph/ExpandDimsRdnn/input_from_feature_columns/input_layer/ph/ph_normalize/clip_by_value/Minimum/y*
T0*'
_output_shapes
:€€€€€€€€€
П
Jdnn/input_from_feature_columns/input_layer/ph/ph_normalize/clip_by_value/yConst*
valueB
 *{.@*
dtype0*
_output_shapes
: 
£
Hdnn/input_from_feature_columns/input_layer/ph/ph_normalize/clip_by_valueMaximumPdnn/input_from_feature_columns/input_layer/ph/ph_normalize/clip_by_value/MinimumJdnn/input_from_feature_columns/input_layer/ph/ph_normalize/clip_by_value/y*
T0*'
_output_shapes
:€€€€€€€€€
Е
@dnn/input_from_feature_columns/input_layer/ph/ph_normalize/sub/yConst*
valueB
 *ВхM@*
dtype0*
_output_shapes
: 
Г
>dnn/input_from_feature_columns/input_layer/ph/ph_normalize/subSubHdnn/input_from_feature_columns/input_layer/ph/ph_normalize/clip_by_value@dnn/input_from_feature_columns/input_layer/ph/ph_normalize/sub/y*
T0*'
_output_shapes
:€€€€€€€€€
Й
Ddnn/input_from_feature_columns/input_layer/ph/ph_normalize/truediv/yConst*
valueB
 *lВ$>*
dtype0*
_output_shapes
: 
Е
Bdnn/input_from_feature_columns/input_layer/ph/ph_normalize/truedivRealDiv>dnn/input_from_feature_columns/input_layer/ph/ph_normalize/subDdnn/input_from_feature_columns/input_layer/ph/ph_normalize/truediv/y*
T0*'
_output_shapes
:€€€€€€€€€
µ
3dnn/input_from_feature_columns/input_layer/ph/ShapeShapeBdnn/input_from_feature_columns/input_layer/ph/ph_normalize/truediv*
T0*
out_type0*
_output_shapes
:
Л
Adnn/input_from_feature_columns/input_layer/ph/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/ph/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/ph/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
я
;dnn/input_from_feature_columns/input_layer/ph/strided_sliceStridedSlice3dnn/input_from_feature_columns/input_layer/ph/ShapeAdnn/input_from_feature_columns/input_layer/ph/strided_slice/stackCdnn/input_from_feature_columns/input_layer/ph/strided_slice/stack_1Cdnn/input_from_feature_columns/input_layer/ph/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask

=dnn/input_from_feature_columns/input_layer/ph/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
щ
;dnn/input_from_feature_columns/input_layer/ph/Reshape/shapePack;dnn/input_from_feature_columns/input_layer/ph/strided_slice=dnn/input_from_feature_columns/input_layer/ph/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
Б
5dnn/input_from_feature_columns/input_layer/ph/ReshapeReshapeBdnn/input_from_feature_columns/input_layer/ph/ph_normalize/truediv;dnn/input_from_feature_columns/input_layer/ph/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
У
Hdnn/input_from_feature_columns/input_layer/residual_sugar/ExpandDims/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
к
Ddnn/input_from_feature_columns/input_layer/residual_sugar/ExpandDims
ExpandDimsresidual_sugarHdnn/input_from_feature_columns/input_layer/residual_sugar/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:€€€€€€€€€
ѓ
jdnn/input_from_feature_columns/input_layer/residual_sugar/residual_sugar_normalize/clip_by_value/Minimum/yConst*
valueB
 *ЌћьA*
dtype0*
_output_shapes
: 
„
hdnn/input_from_feature_columns/input_layer/residual_sugar/residual_sugar_normalize/clip_by_value/MinimumMinimumDdnn/input_from_feature_columns/input_layer/residual_sugar/ExpandDimsjdnn/input_from_feature_columns/input_layer/residual_sugar/residual_sugar_normalize/clip_by_value/Minimum/y*'
_output_shapes
:€€€€€€€€€*
T0
І
bdnn/input_from_feature_columns/input_layer/residual_sugar/residual_sugar_normalize/clip_by_value/yConst*
valueB
 *ЪЩ?*
dtype0*
_output_shapes
: 
л
`dnn/input_from_feature_columns/input_layer/residual_sugar/residual_sugar_normalize/clip_by_valueMaximumhdnn/input_from_feature_columns/input_layer/residual_sugar/residual_sugar_normalize/clip_by_value/Minimumbdnn/input_from_feature_columns/input_layer/residual_sugar/residual_sugar_normalize/clip_by_value/y*
T0*'
_output_shapes
:€€€€€€€€€
Э
Xdnn/input_from_feature_columns/input_layer/residual_sugar/residual_sugar_normalize/sub/yConst*
_output_shapes
: *
valueB
 *ТЖЃ@*
dtype0
Ћ
Vdnn/input_from_feature_columns/input_layer/residual_sugar/residual_sugar_normalize/subSub`dnn/input_from_feature_columns/input_layer/residual_sugar/residual_sugar_normalize/clip_by_valueXdnn/input_from_feature_columns/input_layer/residual_sugar/residual_sugar_normalize/sub/y*'
_output_shapes
:€€€€€€€€€*
T0
°
\dnn/input_from_feature_columns/input_layer/residual_sugar/residual_sugar_normalize/truediv/yConst*
dtype0*
_output_shapes
: *
valueB
 *SСЦ@
Ќ
Zdnn/input_from_feature_columns/input_layer/residual_sugar/residual_sugar_normalize/truedivRealDivVdnn/input_from_feature_columns/input_layer/residual_sugar/residual_sugar_normalize/sub\dnn/input_from_feature_columns/input_layer/residual_sugar/residual_sugar_normalize/truediv/y*'
_output_shapes
:€€€€€€€€€*
T0
ў
?dnn/input_from_feature_columns/input_layer/residual_sugar/ShapeShapeZdnn/input_from_feature_columns/input_layer/residual_sugar/residual_sugar_normalize/truediv*
out_type0*
_output_shapes
:*
T0
Ч
Mdnn/input_from_feature_columns/input_layer/residual_sugar/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Щ
Odnn/input_from_feature_columns/input_layer/residual_sugar/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Щ
Odnn/input_from_feature_columns/input_layer/residual_sugar/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
Ы
Gdnn/input_from_feature_columns/input_layer/residual_sugar/strided_sliceStridedSlice?dnn/input_from_feature_columns/input_layer/residual_sugar/ShapeMdnn/input_from_feature_columns/input_layer/residual_sugar/strided_slice/stackOdnn/input_from_feature_columns/input_layer/residual_sugar/strided_slice/stack_1Odnn/input_from_feature_columns/input_layer/residual_sugar/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Л
Idnn/input_from_feature_columns/input_layer/residual_sugar/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
Э
Gdnn/input_from_feature_columns/input_layer/residual_sugar/Reshape/shapePackGdnn/input_from_feature_columns/input_layer/residual_sugar/strided_sliceIdnn/input_from_feature_columns/input_layer/residual_sugar/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
±
Adnn/input_from_feature_columns/input_layer/residual_sugar/ReshapeReshapeZdnn/input_from_feature_columns/input_layer/residual_sugar/residual_sugar_normalize/truedivGdnn/input_from_feature_columns/input_layer/residual_sugar/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
О
Cdnn/input_from_feature_columns/input_layer/sulphates/ExpandDims/dimConst*
_output_shapes
: *
valueB :
€€€€€€€€€*
dtype0
џ
?dnn/input_from_feature_columns/input_layer/sulphates/ExpandDims
ExpandDims	sulphatesCdnn/input_from_feature_columns/input_layer/sulphates/ExpandDims/dim*'
_output_shapes
:€€€€€€€€€*

Tdim0*
T0
•
`dnn/input_from_feature_columns/input_layer/sulphates/sulphates_normalize/clip_by_value/Minimum/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
Њ
^dnn/input_from_feature_columns/input_layer/sulphates/sulphates_normalize/clip_by_value/MinimumMinimum?dnn/input_from_feature_columns/input_layer/sulphates/ExpandDims`dnn/input_from_feature_columns/input_layer/sulphates/sulphates_normalize/clip_by_value/Minimum/y*
T0*'
_output_shapes
:€€€€€€€€€
Э
Xdnn/input_from_feature_columns/input_layer/sulphates/sulphates_normalize/clip_by_value/yConst*
valueB
 *ЃGa>*
dtype0*
_output_shapes
: 
Ќ
Vdnn/input_from_feature_columns/input_layer/sulphates/sulphates_normalize/clip_by_valueMaximum^dnn/input_from_feature_columns/input_layer/sulphates/sulphates_normalize/clip_by_value/MinimumXdnn/input_from_feature_columns/input_layer/sulphates/sulphates_normalize/clip_by_value/y*'
_output_shapes
:€€€€€€€€€*
T0
У
Ndnn/input_from_feature_columns/input_layer/sulphates/sulphates_normalize/sub/yConst*
_output_shapes
: *
valueB
 *ўѓ?*
dtype0
≠
Ldnn/input_from_feature_columns/input_layer/sulphates/sulphates_normalize/subSubVdnn/input_from_feature_columns/input_layer/sulphates/sulphates_normalize/clip_by_valueNdnn/input_from_feature_columns/input_layer/sulphates/sulphates_normalize/sub/y*
T0*'
_output_shapes
:€€€€€€€€€
Ч
Rdnn/input_from_feature_columns/input_layer/sulphates/sulphates_normalize/truediv/yConst*
valueB
 *uњ>*
dtype0*
_output_shapes
: 
ѓ
Pdnn/input_from_feature_columns/input_layer/sulphates/sulphates_normalize/truedivRealDivLdnn/input_from_feature_columns/input_layer/sulphates/sulphates_normalize/subRdnn/input_from_feature_columns/input_layer/sulphates/sulphates_normalize/truediv/y*'
_output_shapes
:€€€€€€€€€*
T0
 
:dnn/input_from_feature_columns/input_layer/sulphates/ShapeShapePdnn/input_from_feature_columns/input_layer/sulphates/sulphates_normalize/truediv*
T0*
out_type0*
_output_shapes
:
Т
Hdnn/input_from_feature_columns/input_layer/sulphates/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Ф
Jdnn/input_from_feature_columns/input_layer/sulphates/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ф
Jdnn/input_from_feature_columns/input_layer/sulphates/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
В
Bdnn/input_from_feature_columns/input_layer/sulphates/strided_sliceStridedSlice:dnn/input_from_feature_columns/input_layer/sulphates/ShapeHdnn/input_from_feature_columns/input_layer/sulphates/strided_slice/stackJdnn/input_from_feature_columns/input_layer/sulphates/strided_slice/stack_1Jdnn/input_from_feature_columns/input_layer/sulphates/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
Ж
Ddnn/input_from_feature_columns/input_layer/sulphates/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
О
Bdnn/input_from_feature_columns/input_layer/sulphates/Reshape/shapePackBdnn/input_from_feature_columns/input_layer/sulphates/strided_sliceDdnn/input_from_feature_columns/input_layer/sulphates/Reshape/shape/1*
_output_shapes
:*
T0*

axis *
N
Э
<dnn/input_from_feature_columns/input_layer/sulphates/ReshapeReshapePdnn/input_from_feature_columns/input_layer/sulphates/sulphates_normalize/truedivBdnn/input_from_feature_columns/input_layer/sulphates/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
Щ
Ndnn/input_from_feature_columns/input_layer/total_sulfur_dioxide/ExpandDims/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
ь
Jdnn/input_from_feature_columns/input_layer/total_sulfur_dioxide/ExpandDims
ExpandDimstotal_sulfur_dioxideNdnn/input_from_feature_columns/input_layer/total_sulfur_dioxide/ExpandDims/dim*'
_output_shapes
:€€€€€€€€€*

Tdim0*
T0
ї
vdnn/input_from_feature_columns/input_layer/total_sulfur_dioxide/total_sulfur_dioxide_normalize/clip_by_value/Minimum/yConst*
_output_shapes
: *
valueB
 * @ЈC*
dtype0
х
tdnn/input_from_feature_columns/input_layer/total_sulfur_dioxide/total_sulfur_dioxide_normalize/clip_by_value/MinimumMinimumJdnn/input_from_feature_columns/input_layer/total_sulfur_dioxide/ExpandDimsvdnn/input_from_feature_columns/input_layer/total_sulfur_dioxide/total_sulfur_dioxide_normalize/clip_by_value/Minimum/y*
T0*'
_output_shapes
:€€€€€€€€€
≥
ndnn/input_from_feature_columns/input_layer/total_sulfur_dioxide/total_sulfur_dioxide_normalize/clip_by_value/yConst*
valueB
 *  ј@*
dtype0*
_output_shapes
: 
П
ldnn/input_from_feature_columns/input_layer/total_sulfur_dioxide/total_sulfur_dioxide_normalize/clip_by_valueMaximumtdnn/input_from_feature_columns/input_layer/total_sulfur_dioxide/total_sulfur_dioxide_normalize/clip_by_value/Minimumndnn/input_from_feature_columns/input_layer/total_sulfur_dioxide/total_sulfur_dioxide_normalize/clip_by_value/y*
T0*'
_output_shapes
:€€€€€€€€€
©
ddnn/input_from_feature_columns/input_layer/total_sulfur_dioxide/total_sulfur_dioxide_normalize/sub/yConst*
valueB
 *=VиB*
dtype0*
_output_shapes
: 
п
bdnn/input_from_feature_columns/input_layer/total_sulfur_dioxide/total_sulfur_dioxide_normalize/subSubldnn/input_from_feature_columns/input_layer/total_sulfur_dioxide/total_sulfur_dioxide_normalize/clip_by_valueddnn/input_from_feature_columns/input_layer/total_sulfur_dioxide/total_sulfur_dioxide_normalize/sub/y*
T0*'
_output_shapes
:€€€€€€€€€
≠
hdnn/input_from_feature_columns/input_layer/total_sulfur_dioxide/total_sulfur_dioxide_normalize/truediv/yConst*
valueB
 *wыbB*
dtype0*
_output_shapes
: 
с
fdnn/input_from_feature_columns/input_layer/total_sulfur_dioxide/total_sulfur_dioxide_normalize/truedivRealDivbdnn/input_from_feature_columns/input_layer/total_sulfur_dioxide/total_sulfur_dioxide_normalize/subhdnn/input_from_feature_columns/input_layer/total_sulfur_dioxide/total_sulfur_dioxide_normalize/truediv/y*
T0*'
_output_shapes
:€€€€€€€€€
л
Ednn/input_from_feature_columns/input_layer/total_sulfur_dioxide/ShapeShapefdnn/input_from_feature_columns/input_layer/total_sulfur_dioxide/total_sulfur_dioxide_normalize/truediv*
_output_shapes
:*
T0*
out_type0
Э
Sdnn/input_from_feature_columns/input_layer/total_sulfur_dioxide/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Я
Udnn/input_from_feature_columns/input_layer/total_sulfur_dioxide/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Я
Udnn/input_from_feature_columns/input_layer/total_sulfur_dioxide/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
є
Mdnn/input_from_feature_columns/input_layer/total_sulfur_dioxide/strided_sliceStridedSliceEdnn/input_from_feature_columns/input_layer/total_sulfur_dioxide/ShapeSdnn/input_from_feature_columns/input_layer/total_sulfur_dioxide/strided_slice/stackUdnn/input_from_feature_columns/input_layer/total_sulfur_dioxide/strided_slice/stack_1Udnn/input_from_feature_columns/input_layer/total_sulfur_dioxide/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
С
Odnn/input_from_feature_columns/input_layer/total_sulfur_dioxide/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
ѓ
Mdnn/input_from_feature_columns/input_layer/total_sulfur_dioxide/Reshape/shapePackMdnn/input_from_feature_columns/input_layer/total_sulfur_dioxide/strided_sliceOdnn/input_from_feature_columns/input_layer/total_sulfur_dioxide/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
…
Gdnn/input_from_feature_columns/input_layer/total_sulfur_dioxide/ReshapeReshapefdnn/input_from_feature_columns/input_layer/total_sulfur_dioxide/total_sulfur_dioxide_normalize/truedivMdnn/input_from_feature_columns/input_layer/total_sulfur_dioxide/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
Х
Jdnn/input_from_feature_columns/input_layer/volatile_acidity/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€
р
Fdnn/input_from_feature_columns/input_layer/volatile_acidity/ExpandDims
ExpandDimsvolatile_acidityJdnn/input_from_feature_columns/input_layer/volatile_acidity/ExpandDims/dim*'
_output_shapes
:€€€€€€€€€*

Tdim0*
T0
≥
ndnn/input_from_feature_columns/input_layer/volatile_acidity/volatile_acidity_normalize/clip_by_value/Minimum/yConst*
valueB
 *q= ?*
dtype0*
_output_shapes
: 
б
ldnn/input_from_feature_columns/input_layer/volatile_acidity/volatile_acidity_normalize/clip_by_value/MinimumMinimumFdnn/input_from_feature_columns/input_layer/volatile_acidity/ExpandDimsndnn/input_from_feature_columns/input_layer/volatile_acidity/volatile_acidity_normalize/clip_by_value/Minimum/y*'
_output_shapes
:€€€€€€€€€*
T0
Ђ
fdnn/input_from_feature_columns/input_layer/volatile_acidity/volatile_acidity_normalize/clip_by_value/yConst*
valueB
 *
„£=*
dtype0*
_output_shapes
: 
ч
ddnn/input_from_feature_columns/input_layer/volatile_acidity/volatile_acidity_normalize/clip_by_valueMaximumldnn/input_from_feature_columns/input_layer/volatile_acidity/volatile_acidity_normalize/clip_by_value/Minimumfdnn/input_from_feature_columns/input_layer/volatile_acidity/volatile_acidity_normalize/clip_by_value/y*'
_output_shapes
:€€€€€€€€€*
T0
°
\dnn/input_from_feature_columns/input_layer/volatile_acidity/volatile_acidity_normalize/sub/yConst*
valueB
 *ч ≠>*
dtype0*
_output_shapes
: 
„
Zdnn/input_from_feature_columns/input_layer/volatile_acidity/volatile_acidity_normalize/subSubddnn/input_from_feature_columns/input_layer/volatile_acidity/volatile_acidity_normalize/clip_by_value\dnn/input_from_feature_columns/input_layer/volatile_acidity/volatile_acidity_normalize/sub/y*
T0*'
_output_shapes
:€€€€€€€€€
•
`dnn/input_from_feature_columns/input_layer/volatile_acidity/volatile_acidity_normalize/truediv/yConst*
valueB
 *aЯ'>*
dtype0*
_output_shapes
: 
ў
^dnn/input_from_feature_columns/input_layer/volatile_acidity/volatile_acidity_normalize/truedivRealDivZdnn/input_from_feature_columns/input_layer/volatile_acidity/volatile_acidity_normalize/sub`dnn/input_from_feature_columns/input_layer/volatile_acidity/volatile_acidity_normalize/truediv/y*'
_output_shapes
:€€€€€€€€€*
T0
я
Adnn/input_from_feature_columns/input_layer/volatile_acidity/ShapeShape^dnn/input_from_feature_columns/input_layer/volatile_acidity/volatile_acidity_normalize/truediv*
out_type0*
_output_shapes
:*
T0
Щ
Odnn/input_from_feature_columns/input_layer/volatile_acidity/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Ы
Qdnn/input_from_feature_columns/input_layer/volatile_acidity/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ы
Qdnn/input_from_feature_columns/input_layer/volatile_acidity/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
•
Idnn/input_from_feature_columns/input_layer/volatile_acidity/strided_sliceStridedSliceAdnn/input_from_feature_columns/input_layer/volatile_acidity/ShapeOdnn/input_from_feature_columns/input_layer/volatile_acidity/strided_slice/stackQdnn/input_from_feature_columns/input_layer/volatile_acidity/strided_slice/stack_1Qdnn/input_from_feature_columns/input_layer/volatile_acidity/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Н
Kdnn/input_from_feature_columns/input_layer/volatile_acidity/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
£
Idnn/input_from_feature_columns/input_layer/volatile_acidity/Reshape/shapePackIdnn/input_from_feature_columns/input_layer/volatile_acidity/strided_sliceKdnn/input_from_feature_columns/input_layer/volatile_acidity/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
є
Cdnn/input_from_feature_columns/input_layer/volatile_acidity/ReshapeReshape^dnn/input_from_feature_columns/input_layer/volatile_acidity/volatile_acidity_normalize/truedivIdnn/input_from_feature_columns/input_layer/volatile_acidity/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
О
Cdnn/input_from_feature_columns/input_layer/wine_type/ExpandDims/dimConst*
_output_shapes
: *
valueB :
€€€€€€€€€*
dtype0
џ
?dnn/input_from_feature_columns/input_layer/wine_type/ExpandDims
ExpandDims	wine_typeCdnn/input_from_feature_columns/input_layer/wine_type/ExpandDims/dim*'
_output_shapes
:€€€€€€€€€*

Tdim0*
T0
є
:dnn/input_from_feature_columns/input_layer/wine_type/ShapeShape?dnn/input_from_feature_columns/input_layer/wine_type/ExpandDims*
_output_shapes
:*
T0*
out_type0
Т
Hdnn/input_from_feature_columns/input_layer/wine_type/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Ф
Jdnn/input_from_feature_columns/input_layer/wine_type/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ф
Jdnn/input_from_feature_columns/input_layer/wine_type/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
В
Bdnn/input_from_feature_columns/input_layer/wine_type/strided_sliceStridedSlice:dnn/input_from_feature_columns/input_layer/wine_type/ShapeHdnn/input_from_feature_columns/input_layer/wine_type/strided_slice/stackJdnn/input_from_feature_columns/input_layer/wine_type/strided_slice/stack_1Jdnn/input_from_feature_columns/input_layer/wine_type/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
Ж
Ddnn/input_from_feature_columns/input_layer/wine_type/Reshape/shape/1Const*
_output_shapes
: *
value	B :*
dtype0
О
Bdnn/input_from_feature_columns/input_layer/wine_type/Reshape/shapePackBdnn/input_from_feature_columns/input_layer/wine_type/strided_sliceDdnn/input_from_feature_columns/input_layer/wine_type/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
М
<dnn/input_from_feature_columns/input_layer/wine_type/ReshapeReshape?dnn/input_from_feature_columns/input_layer/wine_type/ExpandDimsBdnn/input_from_feature_columns/input_layer/wine_type/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
x
6dnn/input_from_feature_columns/input_layer/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
ј
1dnn/input_from_feature_columns/input_layer/concatConcatV2:dnn/input_from_feature_columns/input_layer/alcohol/Reshape<dnn/input_from_feature_columns/input_layer/chlorides/Reshape>dnn/input_from_feature_columns/input_layer/citric_acid/Reshape:dnn/input_from_feature_columns/input_layer/density/Reshape@dnn/input_from_feature_columns/input_layer/fixed_acidity/ReshapeFdnn/input_from_feature_columns/input_layer/free_sulfur_dioxide/Reshape5dnn/input_from_feature_columns/input_layer/ph/ReshapeAdnn/input_from_feature_columns/input_layer/residual_sugar/Reshape<dnn/input_from_feature_columns/input_layer/sulphates/ReshapeGdnn/input_from_feature_columns/input_layer/total_sulfur_dioxide/ReshapeCdnn/input_from_feature_columns/input_layer/volatile_acidity/Reshape<dnn/input_from_feature_columns/input_layer/wine_type/Reshape6dnn/input_from_feature_columns/input_layer/concat/axis*
N*'
_output_shapes
:€€€€€€€€€*

Tidx0*
T0
≈
@dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/shapeConst*
_output_shapes
:*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
valueB"   @   *
dtype0
Ј
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/minConst*
_output_shapes
: *2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
valueB
 *№ПЊ*
dtype0
Ј
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/maxConst*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
valueB
 *№П>*
dtype0*
_output_shapes
: 
Ю
Hdnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/shape*

seed *
T0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
seed2 *
dtype0*
_output_shapes

:@
Ъ
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/min*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes
: *
T0
ђ
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/sub*
T0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes

:@
Ю
:dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes

:@
«
dnn/hiddenlayer_0/kernel/part_0
VariableV2*
dtype0*
_output_shapes

:@*
shared_name *2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
	container *
shape
:@
У
&dnn/hiddenlayer_0/kernel/part_0/AssignAssigndnn/hiddenlayer_0/kernel/part_0:dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform*
_output_shapes

:@*
use_locking(*
T0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
validate_shape(
Ѓ
$dnn/hiddenlayer_0/kernel/part_0/readIdentitydnn/hiddenlayer_0/kernel/part_0*
T0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes

:@
Ѓ
/dnn/hiddenlayer_0/bias/part_0/Initializer/zerosConst*
dtype0*
_output_shapes
:@*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
valueB@*    
ї
dnn/hiddenlayer_0/bias/part_0
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0
ю
$dnn/hiddenlayer_0/bias/part_0/AssignAssigndnn/hiddenlayer_0/bias/part_0/dnn/hiddenlayer_0/bias/part_0/Initializer/zeros*
use_locking(*
T0*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
validate_shape(*
_output_shapes
:@
§
"dnn/hiddenlayer_0/bias/part_0/readIdentitydnn/hiddenlayer_0/bias/part_0*
T0*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
_output_shapes
:@
s
dnn/hiddenlayer_0/kernelIdentity$dnn/hiddenlayer_0/kernel/part_0/read*
T0*
_output_shapes

:@
«
dnn/hiddenlayer_0/MatMulMatMul1dnn/input_from_feature_columns/input_layer/concatdnn/hiddenlayer_0/kernel*
T0*'
_output_shapes
:€€€€€€€€€@*
transpose_a( *
transpose_b( 
k
dnn/hiddenlayer_0/biasIdentity"dnn/hiddenlayer_0/bias/part_0/read*
_output_shapes
:@*
T0
Я
dnn/hiddenlayer_0/BiasAddBiasAdddnn/hiddenlayer_0/MatMuldnn/hiddenlayer_0/bias*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€@
k
dnn/hiddenlayer_0/ReluReludnn/hiddenlayer_0/BiasAdd*
T0*'
_output_shapes
:€€€€€€€€€@
[
dnn/zero_fraction/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 
В
dnn/zero_fraction/EqualEqualdnn/hiddenlayer_0/Reludnn/zero_fraction/zero*'
_output_shapes
:€€€€€€€€€@*
T0
x
dnn/zero_fraction/CastCastdnn/zero_fraction/Equal*'
_output_shapes
:€€€€€€€€€@*

DstT0*

SrcT0

h
dnn/zero_fraction/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
Н
dnn/zero_fraction/MeanMeandnn/zero_fraction/Castdnn/zero_fraction/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
†
2dnn/dnn/hiddenlayer_0/fraction_of_zero_values/tagsConst*
_output_shapes
: *>
value5B3 B-dnn/dnn/hiddenlayer_0/fraction_of_zero_values*
dtype0
Ђ
-dnn/dnn/hiddenlayer_0/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_0/fraction_of_zero_values/tagsdnn/zero_fraction/Mean*
T0*
_output_shapes
: 
Е
$dnn/dnn/hiddenlayer_0/activation/tagConst*1
value(B& B dnn/dnn/hiddenlayer_0/activation*
dtype0*
_output_shapes
: 
У
 dnn/dnn/hiddenlayer_0/activationHistogramSummary$dnn/dnn/hiddenlayer_0/activation/tagdnn/hiddenlayer_0/Relu*
_output_shapes
: *
T0
≈
@dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/shapeConst*
_output_shapes
:*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
valueB"@       *
dtype0
Ј
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/minConst*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
valueB
 *  АЊ*
dtype0*
_output_shapes
: 
Ј
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/maxConst*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
valueB
 *  А>*
dtype0*
_output_shapes
: 
Ю
Hdnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/shape*
T0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
seed2 *
dtype0*
_output_shapes

:@ *

seed 
Ъ
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes
: 
ђ
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/sub*
_output_shapes

:@ *
T0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0
Ю
:dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes

:@ 
«
dnn/hiddenlayer_1/kernel/part_0
VariableV2*
dtype0*
_output_shapes

:@ *
shared_name *2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
	container *
shape
:@ 
У
&dnn/hiddenlayer_1/kernel/part_0/AssignAssigndnn/hiddenlayer_1/kernel/part_0:dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform*
use_locking(*
T0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
validate_shape(*
_output_shapes

:@ 
Ѓ
$dnn/hiddenlayer_1/kernel/part_0/readIdentitydnn/hiddenlayer_1/kernel/part_0*
T0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes

:@ 
Ѓ
/dnn/hiddenlayer_1/bias/part_0/Initializer/zerosConst*
_output_shapes
: *0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
valueB *    *
dtype0
ї
dnn/hiddenlayer_1/bias/part_0
VariableV2*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
ю
$dnn/hiddenlayer_1/bias/part_0/AssignAssigndnn/hiddenlayer_1/bias/part_0/dnn/hiddenlayer_1/bias/part_0/Initializer/zeros*
use_locking(*
T0*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
validate_shape(*
_output_shapes
: 
§
"dnn/hiddenlayer_1/bias/part_0/readIdentitydnn/hiddenlayer_1/bias/part_0*
T0*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
_output_shapes
: 
s
dnn/hiddenlayer_1/kernelIdentity$dnn/hiddenlayer_1/kernel/part_0/read*
T0*
_output_shapes

:@ 
ђ
dnn/hiddenlayer_1/MatMulMatMuldnn/hiddenlayer_0/Reludnn/hiddenlayer_1/kernel*
T0*'
_output_shapes
:€€€€€€€€€ *
transpose_a( *
transpose_b( 
k
dnn/hiddenlayer_1/biasIdentity"dnn/hiddenlayer_1/bias/part_0/read*
_output_shapes
: *
T0
Я
dnn/hiddenlayer_1/BiasAddBiasAdddnn/hiddenlayer_1/MatMuldnn/hiddenlayer_1/bias*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€ 
k
dnn/hiddenlayer_1/ReluReludnn/hiddenlayer_1/BiasAdd*
T0*'
_output_shapes
:€€€€€€€€€ 
]
dnn/zero_fraction_1/zeroConst*
_output_shapes
: *
valueB
 *    *
dtype0
Ж
dnn/zero_fraction_1/EqualEqualdnn/hiddenlayer_1/Reludnn/zero_fraction_1/zero*
T0*'
_output_shapes
:€€€€€€€€€ 
|
dnn/zero_fraction_1/CastCastdnn/zero_fraction_1/Equal*'
_output_shapes
:€€€€€€€€€ *

DstT0*

SrcT0

j
dnn/zero_fraction_1/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
У
dnn/zero_fraction_1/MeanMeandnn/zero_fraction_1/Castdnn/zero_fraction_1/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
†
2dnn/dnn/hiddenlayer_1/fraction_of_zero_values/tagsConst*>
value5B3 B-dnn/dnn/hiddenlayer_1/fraction_of_zero_values*
dtype0*
_output_shapes
: 
≠
-dnn/dnn/hiddenlayer_1/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_1/fraction_of_zero_values/tagsdnn/zero_fraction_1/Mean*
T0*
_output_shapes
: 
Е
$dnn/dnn/hiddenlayer_1/activation/tagConst*
_output_shapes
: *1
value(B& B dnn/dnn/hiddenlayer_1/activation*
dtype0
У
 dnn/dnn/hiddenlayer_1/activationHistogramSummary$dnn/dnn/hiddenlayer_1/activation/tagdnn/hiddenlayer_1/Relu*
_output_shapes
: *
T0
≈
@dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/shapeConst*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
valueB"       *
dtype0*
_output_shapes
:
Ј
>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/minConst*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
valueB
 *уµЊ*
dtype0*
_output_shapes
: 
Ј
>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/maxConst*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
valueB
 *уµ>*
dtype0*
_output_shapes
: 
Ю
Hdnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/shape*

seed *
T0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
seed2 *
dtype0*
_output_shapes

: 
Ъ
>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes
: 
ђ
>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/sub*
T0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes

: 
Ю
:dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes

: 
«
dnn/hiddenlayer_2/kernel/part_0
VariableV2*
_output_shapes

: *
shared_name *2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
	container *
shape
: *
dtype0
У
&dnn/hiddenlayer_2/kernel/part_0/AssignAssigndnn/hiddenlayer_2/kernel/part_0:dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform*
use_locking(*
T0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
validate_shape(*
_output_shapes

: 
Ѓ
$dnn/hiddenlayer_2/kernel/part_0/readIdentitydnn/hiddenlayer_2/kernel/part_0*
T0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes

: 
Ѓ
/dnn/hiddenlayer_2/bias/part_0/Initializer/zerosConst*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0*
valueB*    *
dtype0*
_output_shapes
:
ї
dnn/hiddenlayer_2/bias/part_0
VariableV2*
dtype0*
_output_shapes
:*
shared_name *0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0*
	container *
shape:
ю
$dnn/hiddenlayer_2/bias/part_0/AssignAssigndnn/hiddenlayer_2/bias/part_0/dnn/hiddenlayer_2/bias/part_0/Initializer/zeros*
use_locking(*
T0*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0*
validate_shape(*
_output_shapes
:
§
"dnn/hiddenlayer_2/bias/part_0/readIdentitydnn/hiddenlayer_2/bias/part_0*
T0*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0*
_output_shapes
:
s
dnn/hiddenlayer_2/kernelIdentity$dnn/hiddenlayer_2/kernel/part_0/read*
_output_shapes

: *
T0
ђ
dnn/hiddenlayer_2/MatMulMatMuldnn/hiddenlayer_1/Reludnn/hiddenlayer_2/kernel*
T0*'
_output_shapes
:€€€€€€€€€*
transpose_a( *
transpose_b( 
k
dnn/hiddenlayer_2/biasIdentity"dnn/hiddenlayer_2/bias/part_0/read*
T0*
_output_shapes
:
Я
dnn/hiddenlayer_2/BiasAddBiasAdddnn/hiddenlayer_2/MatMuldnn/hiddenlayer_2/bias*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€*
T0
k
dnn/hiddenlayer_2/ReluReludnn/hiddenlayer_2/BiasAdd*'
_output_shapes
:€€€€€€€€€*
T0
]
dnn/zero_fraction_2/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ж
dnn/zero_fraction_2/EqualEqualdnn/hiddenlayer_2/Reludnn/zero_fraction_2/zero*'
_output_shapes
:€€€€€€€€€*
T0
|
dnn/zero_fraction_2/CastCastdnn/zero_fraction_2/Equal*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0

j
dnn/zero_fraction_2/ConstConst*
_output_shapes
:*
valueB"       *
dtype0
У
dnn/zero_fraction_2/MeanMeandnn/zero_fraction_2/Castdnn/zero_fraction_2/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
†
2dnn/dnn/hiddenlayer_2/fraction_of_zero_values/tagsConst*>
value5B3 B-dnn/dnn/hiddenlayer_2/fraction_of_zero_values*
dtype0*
_output_shapes
: 
≠
-dnn/dnn/hiddenlayer_2/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_2/fraction_of_zero_values/tagsdnn/zero_fraction_2/Mean*
T0*
_output_shapes
: 
Е
$dnn/dnn/hiddenlayer_2/activation/tagConst*1
value(B& B dnn/dnn/hiddenlayer_2/activation*
dtype0*
_output_shapes
: 
У
 dnn/dnn/hiddenlayer_2/activationHistogramSummary$dnn/dnn/hiddenlayer_2/activation/tagdnn/hiddenlayer_2/Relu*
T0*
_output_shapes
: 
Ј
9dnn/logits/kernel/part_0/Initializer/random_uniform/shapeConst*+
_class!
loc:@dnn/logits/kernel/part_0*
valueB"      *
dtype0*
_output_shapes
:
©
7dnn/logits/kernel/part_0/Initializer/random_uniform/minConst*+
_class!
loc:@dnn/logits/kernel/part_0*
valueB
 *0њ*
dtype0*
_output_shapes
: 
©
7dnn/logits/kernel/part_0/Initializer/random_uniform/maxConst*+
_class!
loc:@dnn/logits/kernel/part_0*
valueB
 *0?*
dtype0*
_output_shapes
: 
Й
Adnn/logits/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform9dnn/logits/kernel/part_0/Initializer/random_uniform/shape*
_output_shapes

:*

seed *
T0*+
_class!
loc:@dnn/logits/kernel/part_0*
seed2 *
dtype0
ю
7dnn/logits/kernel/part_0/Initializer/random_uniform/subSub7dnn/logits/kernel/part_0/Initializer/random_uniform/max7dnn/logits/kernel/part_0/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes
: 
Р
7dnn/logits/kernel/part_0/Initializer/random_uniform/mulMulAdnn/logits/kernel/part_0/Initializer/random_uniform/RandomUniform7dnn/logits/kernel/part_0/Initializer/random_uniform/sub*
_output_shapes

:*
T0*+
_class!
loc:@dnn/logits/kernel/part_0
В
3dnn/logits/kernel/part_0/Initializer/random_uniformAdd7dnn/logits/kernel/part_0/Initializer/random_uniform/mul7dnn/logits/kernel/part_0/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes

:
є
dnn/logits/kernel/part_0
VariableV2*
dtype0*
_output_shapes

:*
shared_name *+
_class!
loc:@dnn/logits/kernel/part_0*
	container *
shape
:
ч
dnn/logits/kernel/part_0/AssignAssigndnn/logits/kernel/part_03dnn/logits/kernel/part_0/Initializer/random_uniform*
T0*+
_class!
loc:@dnn/logits/kernel/part_0*
validate_shape(*
_output_shapes

:*
use_locking(
Щ
dnn/logits/kernel/part_0/readIdentitydnn/logits/kernel/part_0*
_output_shapes

:*
T0*+
_class!
loc:@dnn/logits/kernel/part_0
†
(dnn/logits/bias/part_0/Initializer/zerosConst*
_output_shapes
:*)
_class
loc:@dnn/logits/bias/part_0*
valueB*    *
dtype0
≠
dnn/logits/bias/part_0
VariableV2*
_output_shapes
:*
shared_name *)
_class
loc:@dnn/logits/bias/part_0*
	container *
shape:*
dtype0
в
dnn/logits/bias/part_0/AssignAssigndnn/logits/bias/part_0(dnn/logits/bias/part_0/Initializer/zeros*
use_locking(*
T0*)
_class
loc:@dnn/logits/bias/part_0*
validate_shape(*
_output_shapes
:
П
dnn/logits/bias/part_0/readIdentitydnn/logits/bias/part_0*
T0*)
_class
loc:@dnn/logits/bias/part_0*
_output_shapes
:
e
dnn/logits/kernelIdentitydnn/logits/kernel/part_0/read*
_output_shapes

:*
T0
Ю
dnn/logits/MatMulMatMuldnn/hiddenlayer_2/Reludnn/logits/kernel*
T0*'
_output_shapes
:€€€€€€€€€*
transpose_a( *
transpose_b( 
]
dnn/logits/biasIdentitydnn/logits/bias/part_0/read*
T0*
_output_shapes
:
К
dnn/logits/BiasAddBiasAdddnn/logits/MatMuldnn/logits/bias*'
_output_shapes
:€€€€€€€€€*
T0*
data_formatNHWC
]
dnn/zero_fraction_3/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 
В
dnn/zero_fraction_3/EqualEqualdnn/logits/BiasAdddnn/zero_fraction_3/zero*
T0*'
_output_shapes
:€€€€€€€€€
|
dnn/zero_fraction_3/CastCastdnn/zero_fraction_3/Equal*

SrcT0
*'
_output_shapes
:€€€€€€€€€*

DstT0
j
dnn/zero_fraction_3/ConstConst*
_output_shapes
:*
valueB"       *
dtype0
У
dnn/zero_fraction_3/MeanMeandnn/zero_fraction_3/Castdnn/zero_fraction_3/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
Т
+dnn/dnn/logits/fraction_of_zero_values/tagsConst*
_output_shapes
: *7
value.B, B&dnn/dnn/logits/fraction_of_zero_values*
dtype0
Я
&dnn/dnn/logits/fraction_of_zero_valuesScalarSummary+dnn/dnn/logits/fraction_of_zero_values/tagsdnn/zero_fraction_3/Mean*
_output_shapes
: *
T0
w
dnn/dnn/logits/activation/tagConst**
value!B Bdnn/dnn/logits/activation*
dtype0*
_output_shapes
: 
Б
dnn/dnn/logits/activationHistogramSummarydnn/dnn/logits/activation/tagdnn/logits/BiasAdd*
_output_shapes
: *
T0
g
dnn/head/logits/ShapeShapednn/logits/BiasAdd*
out_type0*
_output_shapes
:*
T0
b
 dnn/head/logits/assert_rank/rankConst*
value	B :*
dtype0*
_output_shapes
: 
R
Jdnn/head/logits/assert_rank/assert_type/statically_determined_correct_typeNoOp
C
;dnn/head/logits/assert_rank/static_checks_determined_all_okNoOp
Ђ
#dnn/head/logits/strided_slice/stackConst<^dnn/head/logits/assert_rank/static_checks_determined_all_ok*
valueB:*
dtype0*
_output_shapes
:
≠
%dnn/head/logits/strided_slice/stack_1Const<^dnn/head/logits/assert_rank/static_checks_determined_all_ok*
valueB:*
dtype0*
_output_shapes
:
≠
%dnn/head/logits/strided_slice/stack_2Const<^dnn/head/logits/assert_rank/static_checks_determined_all_ok*
valueB:*
dtype0*
_output_shapes
:
…
dnn/head/logits/strided_sliceStridedSlicednn/head/logits/Shape#dnn/head/logits/strided_slice/stack%dnn/head/logits/strided_slice/stack_1%dnn/head/logits/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
Ю
dnn/head/logits/assert_equal/xConst<^dnn/head/logits/assert_rank/static_checks_determined_all_ok*
dtype0*
_output_shapes
: *
value	B :
Л
"dnn/head/logits/assert_equal/EqualEqualdnn/head/logits/assert_equal/xdnn/head/logits/strided_slice*
_output_shapes
: *
T0
£
"dnn/head/logits/assert_equal/ConstConst<^dnn/head/logits/assert_rank/static_checks_determined_all_ok*
valueB *
dtype0*
_output_shapes
: 
§
 dnn/head/logits/assert_equal/AllAll"dnn/head/logits/assert_equal/Equal"dnn/head/logits/assert_equal/Const*
_output_shapes
: *

Tidx0*
	keep_dims( 
К
*dnn/head/logits/assert_equal/Assert/AssertAssert dnn/head/logits/assert_equal/Alldnn/head/logits/Shape*

T
2*
	summarize
ћ
dnn/head/logitsIdentitydnn/logits/BiasAdd<^dnn/head/logits/assert_rank/static_checks_determined_all_ok+^dnn/head/logits/assert_equal/Assert/Assert*
T0*'
_output_shapes
:€€€€€€€€€
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
Д
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_7a8a4a12b42144ee8037f0eb617107d2/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
\
save/ShardedFilename/shardConst*
_output_shapes
: *
value	B : *
dtype0
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
©
save/SaveV2/tensor_namesConst*№
value“Bѕ	Bdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBdnn/hiddenlayer_2/biasBdnn/hiddenlayer_2/kernelBdnn/logits/biasBdnn/logits/kernelBglobal_step*
dtype0*
_output_shapes
:	
…
save/SaveV2/shape_and_slicesConst*y
valuepBn	B64 0,64B12 64 0,12:0,64B32 0,32B64 32 0,64:0,32B16 0,16B32 16 0,32:0,16B1 0,1B16 1 0,16:0,1B *
dtype0*
_output_shapes
:	
£
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices"dnn/hiddenlayer_0/bias/part_0/read$dnn/hiddenlayer_0/kernel/part_0/read"dnn/hiddenlayer_1/bias/part_0/read$dnn/hiddenlayer_1/kernel/part_0/read"dnn/hiddenlayer_2/bias/part_0/read$dnn/hiddenlayer_2/kernel/part_0/readdnn/logits/bias/part_0/readdnn/logits/kernel/part_0/readglobal_step*
dtypes
2		
С
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
_output_shapes
: *
T0*'
_class
loc:@save/ShardedFilename
Э
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
T0*

axis *
N*
_output_shapes
:
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints*
T0*
_output_shapes
: 
z
save/RestoreV2/tensor_namesConst*+
value"B Bdnn/hiddenlayer_0/bias*
dtype0*
_output_shapes
:
o
save/RestoreV2/shape_and_slicesConst*
valueBB64 0,64*
dtype0*
_output_shapes
:
Т
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
_output_shapes
:@*
dtypes
2
ƒ
save/AssignAssigndnn/hiddenlayer_0/bias/part_0save/RestoreV2*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
~
save/RestoreV2_1/tensor_namesConst*-
value$B"Bdnn/hiddenlayer_0/kernel*
dtype0*
_output_shapes
:
y
!save/RestoreV2_1/shape_and_slicesConst*$
valueBB12 64 0,12:0,64*
dtype0*
_output_shapes
:
Ь
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
_output_shapes

:@*
dtypes
2
–
save/Assign_1Assigndnn/hiddenlayer_0/kernel/part_0save/RestoreV2_1*
use_locking(*
T0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
validate_shape(*
_output_shapes

:@
|
save/RestoreV2_2/tensor_namesConst*
_output_shapes
:*+
value"B Bdnn/hiddenlayer_1/bias*
dtype0
q
!save/RestoreV2_2/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueBB32 0,32
Ш
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
_output_shapes
: *
dtypes
2
»
save/Assign_2Assigndnn/hiddenlayer_1/bias/part_0save/RestoreV2_2*
use_locking(*
T0*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
validate_shape(*
_output_shapes
: 
~
save/RestoreV2_3/tensor_namesConst*-
value$B"Bdnn/hiddenlayer_1/kernel*
dtype0*
_output_shapes
:
y
!save/RestoreV2_3/shape_and_slicesConst*
dtype0*
_output_shapes
:*$
valueBB64 32 0,64:0,32
Ь
save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
_output_shapes

:@ *
dtypes
2
–
save/Assign_3Assigndnn/hiddenlayer_1/kernel/part_0save/RestoreV2_3*
_output_shapes

:@ *
use_locking(*
T0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
validate_shape(
|
save/RestoreV2_4/tensor_namesConst*+
value"B Bdnn/hiddenlayer_2/bias*
dtype0*
_output_shapes
:
q
!save/RestoreV2_4/shape_and_slicesConst*
valueBB16 0,16*
dtype0*
_output_shapes
:
Ш
save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
_output_shapes
:*
dtypes
2
»
save/Assign_4Assigndnn/hiddenlayer_2/bias/part_0save/RestoreV2_4*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
~
save/RestoreV2_5/tensor_namesConst*
_output_shapes
:*-
value$B"Bdnn/hiddenlayer_2/kernel*
dtype0
y
!save/RestoreV2_5/shape_and_slicesConst*$
valueBB32 16 0,32:0,16*
dtype0*
_output_shapes
:
Ь
save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
_output_shapes

: *
dtypes
2
–
save/Assign_5Assigndnn/hiddenlayer_2/kernel/part_0save/RestoreV2_5*
use_locking(*
T0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
validate_shape(*
_output_shapes

: 
u
save/RestoreV2_6/tensor_namesConst*$
valueBBdnn/logits/bias*
dtype0*
_output_shapes
:
o
!save/RestoreV2_6/shape_and_slicesConst*
valueBB1 0,1*
dtype0*
_output_shapes
:
Ш
save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
_output_shapes
:*
dtypes
2
Ї
save/Assign_6Assigndnn/logits/bias/part_0save/RestoreV2_6*
T0*)
_class
loc:@dnn/logits/bias/part_0*
validate_shape(*
_output_shapes
:*
use_locking(
w
save/RestoreV2_7/tensor_namesConst*&
valueBBdnn/logits/kernel*
dtype0*
_output_shapes
:
w
!save/RestoreV2_7/shape_and_slicesConst*"
valueBB16 1 0,16:0,1*
dtype0*
_output_shapes
:
Ь
save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes

:
¬
save/Assign_7Assigndnn/logits/kernel/part_0save/RestoreV2_7*
use_locking(*
T0*+
_class!
loc:@dnn/logits/kernel/part_0*
validate_shape(*
_output_shapes

:
q
save/RestoreV2_8/tensor_namesConst* 
valueBBglobal_step*
dtype0*
_output_shapes
:
j
!save/RestoreV2_8/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ц
save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
_output_shapes
:*
dtypes
2	
†
save/Assign_8Assignglobal_stepsave/RestoreV2_8*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: *
use_locking(
®
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8
-
save/restore_allNoOp^save/restore_shard

initNoOp

init_all_tablesNoOp
+

group_depsNoOp^init^init_all_tables
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
Ж
save_1/StringJoin/inputs_1Const*
_output_shapes
: *<
value3B1 B+_temp_e3e439b48f214aa0ac41d4f2f3922ecc/part*
dtype0
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_1/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
^
save_1/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
Е
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
Ђ
save_1/SaveV2/tensor_namesConst*№
value“Bѕ	Bdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBdnn/hiddenlayer_2/biasBdnn/hiddenlayer_2/kernelBdnn/logits/biasBdnn/logits/kernelBglobal_step*
dtype0*
_output_shapes
:	
Ћ
save_1/SaveV2/shape_and_slicesConst*y
valuepBn	B64 0,64B12 64 0,12:0,64B32 0,32B64 32 0,64:0,32B16 0,16B32 16 0,32:0,16B1 0,1B16 1 0,16:0,1B *
dtype0*
_output_shapes
:	
Ђ
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slices"dnn/hiddenlayer_0/bias/part_0/read$dnn/hiddenlayer_0/kernel/part_0/read"dnn/hiddenlayer_1/bias/part_0/read$dnn/hiddenlayer_1/kernel/part_0/read"dnn/hiddenlayer_2/bias/part_0/read$dnn/hiddenlayer_2/kernel/part_0/readdnn/logits/bias/part_0/readdnn/logits/kernel/part_0/readglobal_step*
dtypes
2		
Щ
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
£
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*

axis *
N*
_output_shapes
:*
T0
Г
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(
В
save_1/IdentityIdentitysave_1/Const^save_1/control_dependency^save_1/MergeV2Checkpoints*
T0*
_output_shapes
: 
|
save_1/RestoreV2/tensor_namesConst*+
value"B Bdnn/hiddenlayer_0/bias*
dtype0*
_output_shapes
:
q
!save_1/RestoreV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueBB64 0,64
Ъ
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
_output_shapes
:@*
dtypes
2
»
save_1/AssignAssigndnn/hiddenlayer_0/bias/part_0save_1/RestoreV2*
_output_shapes
:@*
use_locking(*
T0*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
validate_shape(
А
save_1/RestoreV2_1/tensor_namesConst*-
value$B"Bdnn/hiddenlayer_0/kernel*
dtype0*
_output_shapes
:
{
#save_1/RestoreV2_1/shape_and_slicesConst*$
valueBB12 64 0,12:0,64*
dtype0*
_output_shapes
:
§
save_1/RestoreV2_1	RestoreV2save_1/Constsave_1/RestoreV2_1/tensor_names#save_1/RestoreV2_1/shape_and_slices*
_output_shapes

:@*
dtypes
2
‘
save_1/Assign_1Assigndnn/hiddenlayer_0/kernel/part_0save_1/RestoreV2_1*
use_locking(*
T0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
validate_shape(*
_output_shapes

:@
~
save_1/RestoreV2_2/tensor_namesConst*+
value"B Bdnn/hiddenlayer_1/bias*
dtype0*
_output_shapes
:
s
#save_1/RestoreV2_2/shape_and_slicesConst*
valueBB32 0,32*
dtype0*
_output_shapes
:
†
save_1/RestoreV2_2	RestoreV2save_1/Constsave_1/RestoreV2_2/tensor_names#save_1/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
: 
ћ
save_1/Assign_2Assigndnn/hiddenlayer_1/bias/part_0save_1/RestoreV2_2*
use_locking(*
T0*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
validate_shape(*
_output_shapes
: 
А
save_1/RestoreV2_3/tensor_namesConst*-
value$B"Bdnn/hiddenlayer_1/kernel*
dtype0*
_output_shapes
:
{
#save_1/RestoreV2_3/shape_and_slicesConst*$
valueBB64 32 0,64:0,32*
dtype0*
_output_shapes
:
§
save_1/RestoreV2_3	RestoreV2save_1/Constsave_1/RestoreV2_3/tensor_names#save_1/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes

:@ 
‘
save_1/Assign_3Assigndnn/hiddenlayer_1/kernel/part_0save_1/RestoreV2_3*
_output_shapes

:@ *
use_locking(*
T0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
validate_shape(
~
save_1/RestoreV2_4/tensor_namesConst*
_output_shapes
:*+
value"B Bdnn/hiddenlayer_2/bias*
dtype0
s
#save_1/RestoreV2_4/shape_and_slicesConst*
valueBB16 0,16*
dtype0*
_output_shapes
:
†
save_1/RestoreV2_4	RestoreV2save_1/Constsave_1/RestoreV2_4/tensor_names#save_1/RestoreV2_4/shape_and_slices*
_output_shapes
:*
dtypes
2
ћ
save_1/Assign_4Assigndnn/hiddenlayer_2/bias/part_0save_1/RestoreV2_4*
_output_shapes
:*
use_locking(*
T0*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0*
validate_shape(
А
save_1/RestoreV2_5/tensor_namesConst*-
value$B"Bdnn/hiddenlayer_2/kernel*
dtype0*
_output_shapes
:
{
#save_1/RestoreV2_5/shape_and_slicesConst*
_output_shapes
:*$
valueBB32 16 0,32:0,16*
dtype0
§
save_1/RestoreV2_5	RestoreV2save_1/Constsave_1/RestoreV2_5/tensor_names#save_1/RestoreV2_5/shape_and_slices*
_output_shapes

: *
dtypes
2
‘
save_1/Assign_5Assigndnn/hiddenlayer_2/kernel/part_0save_1/RestoreV2_5*
T0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
validate_shape(*
_output_shapes

: *
use_locking(
w
save_1/RestoreV2_6/tensor_namesConst*$
valueBBdnn/logits/bias*
dtype0*
_output_shapes
:
q
#save_1/RestoreV2_6/shape_and_slicesConst*
_output_shapes
:*
valueBB1 0,1*
dtype0
†
save_1/RestoreV2_6	RestoreV2save_1/Constsave_1/RestoreV2_6/tensor_names#save_1/RestoreV2_6/shape_and_slices*
_output_shapes
:*
dtypes
2
Њ
save_1/Assign_6Assigndnn/logits/bias/part_0save_1/RestoreV2_6*
use_locking(*
T0*)
_class
loc:@dnn/logits/bias/part_0*
validate_shape(*
_output_shapes
:
y
save_1/RestoreV2_7/tensor_namesConst*
dtype0*
_output_shapes
:*&
valueBBdnn/logits/kernel
y
#save_1/RestoreV2_7/shape_and_slicesConst*"
valueBB16 1 0,16:0,1*
dtype0*
_output_shapes
:
§
save_1/RestoreV2_7	RestoreV2save_1/Constsave_1/RestoreV2_7/tensor_names#save_1/RestoreV2_7/shape_and_slices*
_output_shapes

:*
dtypes
2
∆
save_1/Assign_7Assigndnn/logits/kernel/part_0save_1/RestoreV2_7*
use_locking(*
T0*+
_class!
loc:@dnn/logits/kernel/part_0*
validate_shape(*
_output_shapes

:
s
save_1/RestoreV2_8/tensor_namesConst* 
valueBBglobal_step*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_8/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ю
save_1/RestoreV2_8	RestoreV2save_1/Constsave_1/RestoreV2_8/tensor_names#save_1/RestoreV2_8/shape_and_slices*
_output_shapes
:*
dtypes
2	
§
save_1/Assign_8Assignglobal_stepsave_1/RestoreV2_8*
_output_shapes
: *
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(
Љ
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8
1
save_1/restore_allNoOp^save_1/restore_shard"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8" 
global_step

global_step:0"≠
	variablesЯЬ
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0
ў
!dnn/hiddenlayer_0/kernel/part_0:0&dnn/hiddenlayer_0/kernel/part_0/Assign&dnn/hiddenlayer_0/kernel/part_0/read:0"&
dnn/hiddenlayer_0/kernel@  "@2<dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform:0
√
dnn/hiddenlayer_0/bias/part_0:0$dnn/hiddenlayer_0/bias/part_0/Assign$dnn/hiddenlayer_0/bias/part_0/read:0"!
dnn/hiddenlayer_0/bias@ "@21dnn/hiddenlayer_0/bias/part_0/Initializer/zeros:0
ў
!dnn/hiddenlayer_1/kernel/part_0:0&dnn/hiddenlayer_1/kernel/part_0/Assign&dnn/hiddenlayer_1/kernel/part_0/read:0"&
dnn/hiddenlayer_1/kernel@   "@ 2<dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform:0
√
dnn/hiddenlayer_1/bias/part_0:0$dnn/hiddenlayer_1/bias/part_0/Assign$dnn/hiddenlayer_1/bias/part_0/read:0"!
dnn/hiddenlayer_1/bias  " 21dnn/hiddenlayer_1/bias/part_0/Initializer/zeros:0
ў
!dnn/hiddenlayer_2/kernel/part_0:0&dnn/hiddenlayer_2/kernel/part_0/Assign&dnn/hiddenlayer_2/kernel/part_0/read:0"&
dnn/hiddenlayer_2/kernel   " 2<dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform:0
√
dnn/hiddenlayer_2/bias/part_0:0$dnn/hiddenlayer_2/bias/part_0/Assign$dnn/hiddenlayer_2/bias/part_0/read:0"!
dnn/hiddenlayer_2/bias "21dnn/hiddenlayer_2/bias/part_0/Initializer/zeros:0
ґ
dnn/logits/kernel/part_0:0dnn/logits/kernel/part_0/Assigndnn/logits/kernel/part_0/read:0"
dnn/logits/kernel  "25dnn/logits/kernel/part_0/Initializer/random_uniform:0
†
dnn/logits/bias/part_0:0dnn/logits/bias/part_0/Assigndnn/logits/bias/part_0/read:0"
dnn/logits/bias "2*dnn/logits/bias/part_0/Initializer/zeros:0" 
legacy_init_op


group_deps"„
	summaries…
∆
/dnn/dnn/hiddenlayer_0/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_0/activation:0
/dnn/dnn/hiddenlayer_1/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_1/activation:0
/dnn/dnn/hiddenlayer_2/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_2/activation:0
(dnn/dnn/logits/fraction_of_zero_values:0
dnn/dnn/logits/activation:0"Ё
trainable_variables≈¬
ў
!dnn/hiddenlayer_0/kernel/part_0:0&dnn/hiddenlayer_0/kernel/part_0/Assign&dnn/hiddenlayer_0/kernel/part_0/read:0"&
dnn/hiddenlayer_0/kernel@  "@2<dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform:0
√
dnn/hiddenlayer_0/bias/part_0:0$dnn/hiddenlayer_0/bias/part_0/Assign$dnn/hiddenlayer_0/bias/part_0/read:0"!
dnn/hiddenlayer_0/bias@ "@21dnn/hiddenlayer_0/bias/part_0/Initializer/zeros:0
ў
!dnn/hiddenlayer_1/kernel/part_0:0&dnn/hiddenlayer_1/kernel/part_0/Assign&dnn/hiddenlayer_1/kernel/part_0/read:0"&
dnn/hiddenlayer_1/kernel@   "@ 2<dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform:0
√
dnn/hiddenlayer_1/bias/part_0:0$dnn/hiddenlayer_1/bias/part_0/Assign$dnn/hiddenlayer_1/bias/part_0/read:0"!
dnn/hiddenlayer_1/bias  " 21dnn/hiddenlayer_1/bias/part_0/Initializer/zeros:0
ў
!dnn/hiddenlayer_2/kernel/part_0:0&dnn/hiddenlayer_2/kernel/part_0/Assign&dnn/hiddenlayer_2/kernel/part_0/read:0"&
dnn/hiddenlayer_2/kernel   " 2<dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform:0
√
dnn/hiddenlayer_2/bias/part_0:0$dnn/hiddenlayer_2/bias/part_0/Assign$dnn/hiddenlayer_2/bias/part_0/read:0"!
dnn/hiddenlayer_2/bias "21dnn/hiddenlayer_2/bias/part_0/Initializer/zeros:0
ґ
dnn/logits/kernel/part_0:0dnn/logits/kernel/part_0/Assigndnn/logits/kernel/part_0/read:0"
dnn/logits/kernel  "25dnn/logits/kernel/part_0/Initializer/random_uniform:0
†
dnn/logits/bias/part_0:0dnn/logits/bias/part_0/Assigndnn/logits/bias/part_0/read:0"
dnn/logits/bias "2*dnn/logits/bias/part_0/Initializer/zeros:0*µ
predict©
'
alcohol
	alcohol:0€€€€€€€€€
+
	wine_type
wine_type:0€€€€€€€€€
5
residual_sugar#
residual_sugar:0€€€€€€€€€
/
citric_acid 
citric_acid:0€€€€€€€€€
?
free_sulfur_dioxide(
free_sulfur_dioxide:0€€€€€€€€€

ph
ph:0€€€€€€€€€
+
	chlorides
chlorides:0€€€€€€€€€
A
total_sulfur_dioxide)
total_sulfur_dioxide:0€€€€€€€€€
9
volatile_acidity%
volatile_acidity:0€€€€€€€€€
'
density
	density:0€€€€€€€€€
+
	sulphates
sulphates:0€€€€€€€€€
3
fixed_acidity"
fixed_acidity:0€€€€€€€€€7
predictions(
dnn/head/logits:0€€€€€€€€€tensorflow/serving/predict