ЏГ
Џ
:
Add
x"T
y"T
z"T"
Ttype:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
s
	AssignAdd
ref"T

value"T

output_ref"T" 
Ttype:
2	"
use_lockingbool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
8
Const
output"dtype"
valuetensor"
dtypetype
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
.
Identity

input"T
output"T"	
Ttype
N
IsVariableInitialized
ref"dtype
is_initialized
"
dtypetype
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
;
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
;
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
E
NotEqual
x"T
y"T
z
"
Ttype:
2	

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
6
Pow
x"T
y"T
z"T"
Ttype:

2	

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
D
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
-
Sqrt
x"T
y"T"
Ttype:

2
1
Square
x"T
y"T"
Ttype:

2	
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.10.02
b'unknown'кв
p
layer_1_inputPlaceholder*'
_output_shapes
:џџџџџџџџџ	*
shape:џџџџџџџџџ	*
dtype0
m
layer_1/random_uniform/shapeConst*
_output_shapes
:*
valueB"	   2   *
dtype0
_
layer_1/random_uniform/minConst*
_output_shapes
: *
valueB
 *dFЃО*
dtype0
_
layer_1/random_uniform/maxConst*
_output_shapes
: *
valueB
 *dFЃ>*
dtype0
Ј
$layer_1/random_uniform/RandomUniformRandomUniformlayer_1/random_uniform/shape*
seedБџх)*
dtype0*
_output_shapes

:	2*
seed2є*
T0
z
layer_1/random_uniform/subSublayer_1/random_uniform/maxlayer_1/random_uniform/min*
_output_shapes
: *
T0

layer_1/random_uniform/mulMul$layer_1/random_uniform/RandomUniformlayer_1/random_uniform/sub*
_output_shapes

:	2*
T0
~
layer_1/random_uniformAddlayer_1/random_uniform/mullayer_1/random_uniform/min*
_output_shapes

:	2*
T0

layer_1/kernel
VariableV2*
_output_shapes

:	2*
	container *
shape
:	2*
shared_name *
dtype0
М
layer_1/kernel/AssignAssignlayer_1/kernellayer_1/random_uniform*
_output_shapes

:	2*
validate_shape(*
use_locking(*!
_class
loc:@layer_1/kernel*
T0
{
layer_1/kernel/readIdentitylayer_1/kernel*
_output_shapes

:	2*!
_class
loc:@layer_1/kernel*
T0
Z
layer_1/ConstConst*
_output_shapes
:2*
valueB2*    *
dtype0
x
layer_1/bias
VariableV2*
_output_shapes
:2*
	container *
shape:2*
shared_name *
dtype0
Љ
layer_1/bias/AssignAssignlayer_1/biaslayer_1/Const*
_output_shapes
:2*
validate_shape(*
use_locking(*
_class
loc:@layer_1/bias*
T0
q
layer_1/bias/readIdentitylayer_1/bias*
_output_shapes
:2*
_class
loc:@layer_1/bias*
T0

layer_1/MatMulMatMullayer_1_inputlayer_1/kernel/read*
transpose_a( *'
_output_shapes
:џџџџџџџџџ2*
transpose_b( *
T0

layer_1/BiasAddBiasAddlayer_1/MatMullayer_1/bias/read*'
_output_shapes
:џџџџџџџџџ2*
data_formatNHWC*
T0
W
layer_1/ReluRelulayer_1/BiasAdd*'
_output_shapes
:џџџџџџџџџ2*
T0
m
layer_2/random_uniform/shapeConst*
_output_shapes
:*
valueB"2   d   *
dtype0
_
layer_2/random_uniform/minConst*
_output_shapes
: *
valueB
 *ЭЬLО*
dtype0
_
layer_2/random_uniform/maxConst*
_output_shapes
: *
valueB
 *ЭЬL>*
dtype0
Ј
$layer_2/random_uniform/RandomUniformRandomUniformlayer_2/random_uniform/shape*
seedБџх)*
dtype0*
_output_shapes

:2d*
seed2Ње*
T0
z
layer_2/random_uniform/subSublayer_2/random_uniform/maxlayer_2/random_uniform/min*
_output_shapes
: *
T0

layer_2/random_uniform/mulMul$layer_2/random_uniform/RandomUniformlayer_2/random_uniform/sub*
_output_shapes

:2d*
T0
~
layer_2/random_uniformAddlayer_2/random_uniform/mullayer_2/random_uniform/min*
_output_shapes

:2d*
T0

layer_2/kernel
VariableV2*
_output_shapes

:2d*
	container *
shape
:2d*
shared_name *
dtype0
М
layer_2/kernel/AssignAssignlayer_2/kernellayer_2/random_uniform*
_output_shapes

:2d*
validate_shape(*
use_locking(*!
_class
loc:@layer_2/kernel*
T0
{
layer_2/kernel/readIdentitylayer_2/kernel*
_output_shapes

:2d*!
_class
loc:@layer_2/kernel*
T0
Z
layer_2/ConstConst*
_output_shapes
:d*
valueBd*    *
dtype0
x
layer_2/bias
VariableV2*
_output_shapes
:d*
	container *
shape:d*
shared_name *
dtype0
Љ
layer_2/bias/AssignAssignlayer_2/biaslayer_2/Const*
_output_shapes
:d*
validate_shape(*
use_locking(*
_class
loc:@layer_2/bias*
T0
q
layer_2/bias/readIdentitylayer_2/bias*
_output_shapes
:d*
_class
loc:@layer_2/bias*
T0

layer_2/MatMulMatMullayer_1/Relulayer_2/kernel/read*
transpose_a( *'
_output_shapes
:џџџџџџџџџd*
transpose_b( *
T0

layer_2/BiasAddBiasAddlayer_2/MatMullayer_2/bias/read*'
_output_shapes
:џџџџџџџџџd*
data_formatNHWC*
T0
W
layer_2/ReluRelulayer_2/BiasAdd*'
_output_shapes
:џџџџџџџџџd*
T0
m
layer_3/random_uniform/shapeConst*
_output_shapes
:*
valueB"d   2   *
dtype0
_
layer_3/random_uniform/minConst*
_output_shapes
: *
valueB
 *ЭЬLО*
dtype0
_
layer_3/random_uniform/maxConst*
_output_shapes
: *
valueB
 *ЭЬL>*
dtype0
Ј
$layer_3/random_uniform/RandomUniformRandomUniformlayer_3/random_uniform/shape*
seedБџх)*
dtype0*
_output_shapes

:d2*
seed2й*
T0
z
layer_3/random_uniform/subSublayer_3/random_uniform/maxlayer_3/random_uniform/min*
_output_shapes
: *
T0

layer_3/random_uniform/mulMul$layer_3/random_uniform/RandomUniformlayer_3/random_uniform/sub*
_output_shapes

:d2*
T0
~
layer_3/random_uniformAddlayer_3/random_uniform/mullayer_3/random_uniform/min*
_output_shapes

:d2*
T0

layer_3/kernel
VariableV2*
_output_shapes

:d2*
	container *
shape
:d2*
shared_name *
dtype0
М
layer_3/kernel/AssignAssignlayer_3/kernellayer_3/random_uniform*
_output_shapes

:d2*
validate_shape(*
use_locking(*!
_class
loc:@layer_3/kernel*
T0
{
layer_3/kernel/readIdentitylayer_3/kernel*
_output_shapes

:d2*!
_class
loc:@layer_3/kernel*
T0
Z
layer_3/ConstConst*
_output_shapes
:2*
valueB2*    *
dtype0
x
layer_3/bias
VariableV2*
_output_shapes
:2*
	container *
shape:2*
shared_name *
dtype0
Љ
layer_3/bias/AssignAssignlayer_3/biaslayer_3/Const*
_output_shapes
:2*
validate_shape(*
use_locking(*
_class
loc:@layer_3/bias*
T0
q
layer_3/bias/readIdentitylayer_3/bias*
_output_shapes
:2*
_class
loc:@layer_3/bias*
T0

layer_3/MatMulMatMullayer_2/Relulayer_3/kernel/read*
transpose_a( *'
_output_shapes
:џџџџџџџџџ2*
transpose_b( *
T0

layer_3/BiasAddBiasAddlayer_3/MatMullayer_3/bias/read*'
_output_shapes
:џџџџџџџџџ2*
data_formatNHWC*
T0
W
layer_3/ReluRelulayer_3/BiasAdd*'
_output_shapes
:џџџџџџџџџ2*
T0
r
!output_layer/random_uniform/shapeConst*
_output_shapes
:*
valueB"2      *
dtype0
d
output_layer/random_uniform/minConst*
_output_shapes
: *
valueB
 *SЏО*
dtype0
d
output_layer/random_uniform/maxConst*
_output_shapes
: *
valueB
 *SЏ>*
dtype0
В
)output_layer/random_uniform/RandomUniformRandomUniform!output_layer/random_uniform/shape*
seedБџх)*
dtype0*
_output_shapes

:2*
seed2ЮУЈ*
T0

output_layer/random_uniform/subSuboutput_layer/random_uniform/maxoutput_layer/random_uniform/min*
_output_shapes
: *
T0

output_layer/random_uniform/mulMul)output_layer/random_uniform/RandomUniformoutput_layer/random_uniform/sub*
_output_shapes

:2*
T0

output_layer/random_uniformAddoutput_layer/random_uniform/muloutput_layer/random_uniform/min*
_output_shapes

:2*
T0

output_layer/kernel
VariableV2*
_output_shapes

:2*
	container *
shape
:2*
shared_name *
dtype0
а
output_layer/kernel/AssignAssignoutput_layer/kerneloutput_layer/random_uniform*
_output_shapes

:2*
validate_shape(*
use_locking(*&
_class
loc:@output_layer/kernel*
T0

output_layer/kernel/readIdentityoutput_layer/kernel*
_output_shapes

:2*&
_class
loc:@output_layer/kernel*
T0
_
output_layer/ConstConst*
_output_shapes
:*
valueB*    *
dtype0
}
output_layer/bias
VariableV2*
_output_shapes
:*
	container *
shape:*
shared_name *
dtype0
Н
output_layer/bias/AssignAssignoutput_layer/biasoutput_layer/Const*
_output_shapes
:*
validate_shape(*
use_locking(*$
_class
loc:@output_layer/bias*
T0

output_layer/bias/readIdentityoutput_layer/bias*
_output_shapes
:*$
_class
loc:@output_layer/bias*
T0

output_layer/MatMulMatMullayer_3/Reluoutput_layer/kernel/read*
transpose_a( *'
_output_shapes
:џџџџџџџџџ*
transpose_b( *
T0

output_layer/BiasAddBiasAddoutput_layer/MatMuloutput_layer/bias/read*'
_output_shapes
:џџџџџџџџџ*
data_formatNHWC*
T0
_
Adam/iterations/initial_valueConst*
_output_shapes
: *
value	B	 R *
dtype0	
s
Adam/iterations
VariableV2*
_output_shapes
: *
	container *
shape: *
shared_name *
dtype0	
О
Adam/iterations/AssignAssignAdam/iterationsAdam/iterations/initial_value*
_output_shapes
: *
validate_shape(*
use_locking(*"
_class
loc:@Adam/iterations*
T0	
v
Adam/iterations/readIdentityAdam/iterations*
_output_shapes
: *"
_class
loc:@Adam/iterations*
T0	
Z
Adam/lr/initial_valueConst*
_output_shapes
: *
valueB
 *o:*
dtype0
k
Adam/lr
VariableV2*
_output_shapes
: *
	container *
shape: *
shared_name *
dtype0

Adam/lr/AssignAssignAdam/lrAdam/lr/initial_value*
_output_shapes
: *
validate_shape(*
use_locking(*
_class
loc:@Adam/lr*
T0
^
Adam/lr/readIdentityAdam/lr*
_output_shapes
: *
_class
loc:@Adam/lr*
T0
^
Adam/beta_1/initial_valueConst*
_output_shapes
: *
valueB
 *fff?*
dtype0
o
Adam/beta_1
VariableV2*
_output_shapes
: *
	container *
shape: *
shared_name *
dtype0
Ў
Adam/beta_1/AssignAssignAdam/beta_1Adam/beta_1/initial_value*
_output_shapes
: *
validate_shape(*
use_locking(*
_class
loc:@Adam/beta_1*
T0
j
Adam/beta_1/readIdentityAdam/beta_1*
_output_shapes
: *
_class
loc:@Adam/beta_1*
T0
^
Adam/beta_2/initial_valueConst*
_output_shapes
: *
valueB
 *wО?*
dtype0
o
Adam/beta_2
VariableV2*
_output_shapes
: *
	container *
shape: *
shared_name *
dtype0
Ў
Adam/beta_2/AssignAssignAdam/beta_2Adam/beta_2/initial_value*
_output_shapes
: *
validate_shape(*
use_locking(*
_class
loc:@Adam/beta_2*
T0
j
Adam/beta_2/readIdentityAdam/beta_2*
_output_shapes
: *
_class
loc:@Adam/beta_2*
T0
]
Adam/decay/initial_valueConst*
_output_shapes
: *
valueB
 *    *
dtype0
n

Adam/decay
VariableV2*
_output_shapes
: *
	container *
shape: *
shared_name *
dtype0
Њ
Adam/decay/AssignAssign
Adam/decayAdam/decay/initial_value*
_output_shapes
: *
validate_shape(*
use_locking(*
_class
loc:@Adam/decay*
T0
g
Adam/decay/readIdentity
Adam/decay*
_output_shapes
: *
_class
loc:@Adam/decay*
T0

output_layer_targetPlaceholder*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*%
shape:џџџџџџџџџџџџџџџџџџ*
dtype0
v
output_layer_sample_weightsPlaceholder*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ*
dtype0

loss/output_layer_loss/subSuboutput_layer/BiasAddoutput_layer_target*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0
~
loss/output_layer_loss/SquareSquareloss/output_layer_loss/sub*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0
x
-loss/output_layer_loss/Mean/reduction_indicesConst*
_output_shapes
: *
valueB :
џџџџџџџџџ*
dtype0
М
loss/output_layer_loss/MeanMeanloss/output_layer_loss/Square-loss/output_layer_loss/Mean/reduction_indices*
	keep_dims( *#
_output_shapes
:џџџџџџџџџ*

Tidx0*
T0
r
/loss/output_layer_loss/Mean_1/reduction_indicesConst*
_output_shapes
: *
valueB *
dtype0
О
loss/output_layer_loss/Mean_1Meanloss/output_layer_loss/Mean/loss/output_layer_loss/Mean_1/reduction_indices*
	keep_dims( *#
_output_shapes
:џџџџџџџџџ*

Tidx0*
T0

loss/output_layer_loss/mulMulloss/output_layer_loss/Mean_1output_layer_sample_weights*#
_output_shapes
:џџџџџџџџџ*
T0
f
!loss/output_layer_loss/NotEqual/yConst*
_output_shapes
: *
valueB
 *    *
dtype0

loss/output_layer_loss/NotEqualNotEqualoutput_layer_sample_weights!loss/output_layer_loss/NotEqual/y*#
_output_shapes
:џџџџџџџџџ*
T0

loss/output_layer_loss/CastCastloss/output_layer_loss/NotEqual*#
_output_shapes
:џџџџџџџџџ*

SrcT0
*

DstT0
f
loss/output_layer_loss/ConstConst*
_output_shapes
:*
valueB: *
dtype0

loss/output_layer_loss/Mean_2Meanloss/output_layer_loss/Castloss/output_layer_loss/Const*
	keep_dims( *
_output_shapes
: *

Tidx0*
T0

loss/output_layer_loss/truedivRealDivloss/output_layer_loss/mulloss/output_layer_loss/Mean_2*#
_output_shapes
:џџџџџџџџџ*
T0
h
loss/output_layer_loss/Const_1Const*
_output_shapes
:*
valueB: *
dtype0
Ѓ
loss/output_layer_loss/Mean_3Meanloss/output_layer_loss/truedivloss/output_layer_loss/Const_1*
	keep_dims( *
_output_shapes
: *

Tidx0*
T0
O

loss/mul/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
[
loss/mulMul
loss/mul/xloss/output_layer_loss/Mean_3*
_output_shapes
: *
T0
}
training/Adam/gradients/ShapeConst*
_output_shapes
: *
_class
loc:@loss/mul*
valueB *
dtype0

!training/Adam/gradients/grad_ys_0Const*
_output_shapes
: *
_class
loc:@loss/mul*
valueB
 *  ?*
dtype0
Ж
training/Adam/gradients/FillFilltraining/Adam/gradients/Shape!training/Adam/gradients/grad_ys_0*
_output_shapes
: *

index_type0*
_class
loc:@loss/mul*
T0
Ћ
)training/Adam/gradients/loss/mul_grad/MulMultraining/Adam/gradients/Fillloss/output_layer_loss/Mean_3*
_output_shapes
: *
_class
loc:@loss/mul*
T0

+training/Adam/gradients/loss/mul_grad/Mul_1Multraining/Adam/gradients/Fill
loss/mul/x*
_output_shapes
: *
_class
loc:@loss/mul*
T0
Ф
Htraining/Adam/gradients/loss/output_layer_loss/Mean_3_grad/Reshape/shapeConst*
_output_shapes
:*0
_class&
$"loc:@loss/output_layer_loss/Mean_3*
valueB:*
dtype0
Љ
Btraining/Adam/gradients/loss/output_layer_loss/Mean_3_grad/ReshapeReshape+training/Adam/gradients/loss/mul_grad/Mul_1Htraining/Adam/gradients/loss/output_layer_loss/Mean_3_grad/Reshape/shape*
_output_shapes
:*
Tshape0*0
_class&
$"loc:@loss/output_layer_loss/Mean_3*
T0
а
@training/Adam/gradients/loss/output_layer_loss/Mean_3_grad/ShapeShapeloss/output_layer_loss/truediv*
out_type0*
_output_shapes
:*0
_class&
$"loc:@loss/output_layer_loss/Mean_3*
T0
П
?training/Adam/gradients/loss/output_layer_loss/Mean_3_grad/TileTileBtraining/Adam/gradients/loss/output_layer_loss/Mean_3_grad/Reshape@training/Adam/gradients/loss/output_layer_loss/Mean_3_grad/Shape*#
_output_shapes
:џџџџџџџџџ*

Tmultiples0*0
_class&
$"loc:@loss/output_layer_loss/Mean_3*
T0
в
Btraining/Adam/gradients/loss/output_layer_loss/Mean_3_grad/Shape_1Shapeloss/output_layer_loss/truediv*
out_type0*
_output_shapes
:*0
_class&
$"loc:@loss/output_layer_loss/Mean_3*
T0
З
Btraining/Adam/gradients/loss/output_layer_loss/Mean_3_grad/Shape_2Const*
_output_shapes
: *0
_class&
$"loc:@loss/output_layer_loss/Mean_3*
valueB *
dtype0
М
@training/Adam/gradients/loss/output_layer_loss/Mean_3_grad/ConstConst*
_output_shapes
:*0
_class&
$"loc:@loss/output_layer_loss/Mean_3*
valueB: *
dtype0
Н
?training/Adam/gradients/loss/output_layer_loss/Mean_3_grad/ProdProdBtraining/Adam/gradients/loss/output_layer_loss/Mean_3_grad/Shape_1@training/Adam/gradients/loss/output_layer_loss/Mean_3_grad/Const*
	keep_dims( *
_output_shapes
: *

Tidx0*0
_class&
$"loc:@loss/output_layer_loss/Mean_3*
T0
О
Btraining/Adam/gradients/loss/output_layer_loss/Mean_3_grad/Const_1Const*
_output_shapes
:*0
_class&
$"loc:@loss/output_layer_loss/Mean_3*
valueB: *
dtype0
С
Atraining/Adam/gradients/loss/output_layer_loss/Mean_3_grad/Prod_1ProdBtraining/Adam/gradients/loss/output_layer_loss/Mean_3_grad/Shape_2Btraining/Adam/gradients/loss/output_layer_loss/Mean_3_grad/Const_1*
	keep_dims( *
_output_shapes
: *

Tidx0*0
_class&
$"loc:@loss/output_layer_loss/Mean_3*
T0
И
Dtraining/Adam/gradients/loss/output_layer_loss/Mean_3_grad/Maximum/yConst*
_output_shapes
: *0
_class&
$"loc:@loss/output_layer_loss/Mean_3*
value	B :*
dtype0
Љ
Btraining/Adam/gradients/loss/output_layer_loss/Mean_3_grad/MaximumMaximumAtraining/Adam/gradients/loss/output_layer_loss/Mean_3_grad/Prod_1Dtraining/Adam/gradients/loss/output_layer_loss/Mean_3_grad/Maximum/y*
_output_shapes
: *0
_class&
$"loc:@loss/output_layer_loss/Mean_3*
T0
Ї
Ctraining/Adam/gradients/loss/output_layer_loss/Mean_3_grad/floordivFloorDiv?training/Adam/gradients/loss/output_layer_loss/Mean_3_grad/ProdBtraining/Adam/gradients/loss/output_layer_loss/Mean_3_grad/Maximum*
_output_shapes
: *0
_class&
$"loc:@loss/output_layer_loss/Mean_3*
T0
ю
?training/Adam/gradients/loss/output_layer_loss/Mean_3_grad/CastCastCtraining/Adam/gradients/loss/output_layer_loss/Mean_3_grad/floordiv*
_output_shapes
: *

SrcT0*0
_class&
$"loc:@loss/output_layer_loss/Mean_3*

DstT0
Џ
Btraining/Adam/gradients/loss/output_layer_loss/Mean_3_grad/truedivRealDiv?training/Adam/gradients/loss/output_layer_loss/Mean_3_grad/Tile?training/Adam/gradients/loss/output_layer_loss/Mean_3_grad/Cast*#
_output_shapes
:џџџџџџџџџ*0
_class&
$"loc:@loss/output_layer_loss/Mean_3*
T0
Ю
Atraining/Adam/gradients/loss/output_layer_loss/truediv_grad/ShapeShapeloss/output_layer_loss/mul*
out_type0*
_output_shapes
:*1
_class'
%#loc:@loss/output_layer_loss/truediv*
T0
Й
Ctraining/Adam/gradients/loss/output_layer_loss/truediv_grad/Shape_1Const*
_output_shapes
: *1
_class'
%#loc:@loss/output_layer_loss/truediv*
valueB *
dtype0
т
Qtraining/Adam/gradients/loss/output_layer_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsAtraining/Adam/gradients/loss/output_layer_loss/truediv_grad/ShapeCtraining/Adam/gradients/loss/output_layer_loss/truediv_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*1
_class'
%#loc:@loss/output_layer_loss/truediv*
T0

Ctraining/Adam/gradients/loss/output_layer_loss/truediv_grad/RealDivRealDivBtraining/Adam/gradients/loss/output_layer_loss/Mean_3_grad/truedivloss/output_layer_loss/Mean_2*#
_output_shapes
:џџџџџџџџџ*1
_class'
%#loc:@loss/output_layer_loss/truediv*
T0
б
?training/Adam/gradients/loss/output_layer_loss/truediv_grad/SumSumCtraining/Adam/gradients/loss/output_layer_loss/truediv_grad/RealDivQtraining/Adam/gradients/loss/output_layer_loss/truediv_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*

Tidx0*1
_class'
%#loc:@loss/output_layer_loss/truediv*
T0
С
Ctraining/Adam/gradients/loss/output_layer_loss/truediv_grad/ReshapeReshape?training/Adam/gradients/loss/output_layer_loss/truediv_grad/SumAtraining/Adam/gradients/loss/output_layer_loss/truediv_grad/Shape*#
_output_shapes
:џџџџџџџџџ*
Tshape0*1
_class'
%#loc:@loss/output_layer_loss/truediv*
T0
У
?training/Adam/gradients/loss/output_layer_loss/truediv_grad/NegNegloss/output_layer_loss/mul*#
_output_shapes
:џџџџџџџџџ*1
_class'
%#loc:@loss/output_layer_loss/truediv*
T0

Etraining/Adam/gradients/loss/output_layer_loss/truediv_grad/RealDiv_1RealDiv?training/Adam/gradients/loss/output_layer_loss/truediv_grad/Negloss/output_layer_loss/Mean_2*#
_output_shapes
:џџџџџџџџџ*1
_class'
%#loc:@loss/output_layer_loss/truediv*
T0

Etraining/Adam/gradients/loss/output_layer_loss/truediv_grad/RealDiv_2RealDivEtraining/Adam/gradients/loss/output_layer_loss/truediv_grad/RealDiv_1loss/output_layer_loss/Mean_2*#
_output_shapes
:џџџџџџџџџ*1
_class'
%#loc:@loss/output_layer_loss/truediv*
T0
В
?training/Adam/gradients/loss/output_layer_loss/truediv_grad/mulMulBtraining/Adam/gradients/loss/output_layer_loss/Mean_3_grad/truedivEtraining/Adam/gradients/loss/output_layer_loss/truediv_grad/RealDiv_2*#
_output_shapes
:џџџџџџџџџ*1
_class'
%#loc:@loss/output_layer_loss/truediv*
T0
б
Atraining/Adam/gradients/loss/output_layer_loss/truediv_grad/Sum_1Sum?training/Adam/gradients/loss/output_layer_loss/truediv_grad/mulStraining/Adam/gradients/loss/output_layer_loss/truediv_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*

Tidx0*1
_class'
%#loc:@loss/output_layer_loss/truediv*
T0
К
Etraining/Adam/gradients/loss/output_layer_loss/truediv_grad/Reshape_1ReshapeAtraining/Adam/gradients/loss/output_layer_loss/truediv_grad/Sum_1Ctraining/Adam/gradients/loss/output_layer_loss/truediv_grad/Shape_1*
_output_shapes
: *
Tshape0*1
_class'
%#loc:@loss/output_layer_loss/truediv*
T0
Щ
=training/Adam/gradients/loss/output_layer_loss/mul_grad/ShapeShapeloss/output_layer_loss/Mean_1*
out_type0*
_output_shapes
:*-
_class#
!loc:@loss/output_layer_loss/mul*
T0
Щ
?training/Adam/gradients/loss/output_layer_loss/mul_grad/Shape_1Shapeoutput_layer_sample_weights*
out_type0*
_output_shapes
:*-
_class#
!loc:@loss/output_layer_loss/mul*
T0
в
Mtraining/Adam/gradients/loss/output_layer_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgs=training/Adam/gradients/loss/output_layer_loss/mul_grad/Shape?training/Adam/gradients/loss/output_layer_loss/mul_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*-
_class#
!loc:@loss/output_layer_loss/mul*
T0

;training/Adam/gradients/loss/output_layer_loss/mul_grad/MulMulCtraining/Adam/gradients/loss/output_layer_loss/truediv_grad/Reshapeoutput_layer_sample_weights*#
_output_shapes
:џџџџџџџџџ*-
_class#
!loc:@loss/output_layer_loss/mul*
T0
Н
;training/Adam/gradients/loss/output_layer_loss/mul_grad/SumSum;training/Adam/gradients/loss/output_layer_loss/mul_grad/MulMtraining/Adam/gradients/loss/output_layer_loss/mul_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*

Tidx0*-
_class#
!loc:@loss/output_layer_loss/mul*
T0
Б
?training/Adam/gradients/loss/output_layer_loss/mul_grad/ReshapeReshape;training/Adam/gradients/loss/output_layer_loss/mul_grad/Sum=training/Adam/gradients/loss/output_layer_loss/mul_grad/Shape*#
_output_shapes
:џџџџџџџџџ*
Tshape0*-
_class#
!loc:@loss/output_layer_loss/mul*
T0

=training/Adam/gradients/loss/output_layer_loss/mul_grad/Mul_1Mulloss/output_layer_loss/Mean_1Ctraining/Adam/gradients/loss/output_layer_loss/truediv_grad/Reshape*#
_output_shapes
:џџџџџџџџџ*-
_class#
!loc:@loss/output_layer_loss/mul*
T0
У
=training/Adam/gradients/loss/output_layer_loss/mul_grad/Sum_1Sum=training/Adam/gradients/loss/output_layer_loss/mul_grad/Mul_1Otraining/Adam/gradients/loss/output_layer_loss/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*

Tidx0*-
_class#
!loc:@loss/output_layer_loss/mul*
T0
З
Atraining/Adam/gradients/loss/output_layer_loss/mul_grad/Reshape_1Reshape=training/Adam/gradients/loss/output_layer_loss/mul_grad/Sum_1?training/Adam/gradients/loss/output_layer_loss/mul_grad/Shape_1*#
_output_shapes
:џџџџџџџџџ*
Tshape0*-
_class#
!loc:@loss/output_layer_loss/mul*
T0
Э
@training/Adam/gradients/loss/output_layer_loss/Mean_1_grad/ShapeShapeloss/output_layer_loss/Mean*
out_type0*
_output_shapes
:*0
_class&
$"loc:@loss/output_layer_loss/Mean_1*
T0
Г
?training/Adam/gradients/loss/output_layer_loss/Mean_1_grad/SizeConst*
_output_shapes
: *0
_class&
$"loc:@loss/output_layer_loss/Mean_1*
value	B :*
dtype0

>training/Adam/gradients/loss/output_layer_loss/Mean_1_grad/addAdd/loss/output_layer_loss/Mean_1/reduction_indices?training/Adam/gradients/loss/output_layer_loss/Mean_1_grad/Size*
_output_shapes
: *0
_class&
$"loc:@loss/output_layer_loss/Mean_1*
T0
 
>training/Adam/gradients/loss/output_layer_loss/Mean_1_grad/modFloorMod>training/Adam/gradients/loss/output_layer_loss/Mean_1_grad/add?training/Adam/gradients/loss/output_layer_loss/Mean_1_grad/Size*
_output_shapes
: *0
_class&
$"loc:@loss/output_layer_loss/Mean_1*
T0
О
Btraining/Adam/gradients/loss/output_layer_loss/Mean_1_grad/Shape_1Const*
_output_shapes
:*0
_class&
$"loc:@loss/output_layer_loss/Mean_1*
valueB: *
dtype0
К
Ftraining/Adam/gradients/loss/output_layer_loss/Mean_1_grad/range/startConst*
_output_shapes
: *0
_class&
$"loc:@loss/output_layer_loss/Mean_1*
value	B : *
dtype0
К
Ftraining/Adam/gradients/loss/output_layer_loss/Mean_1_grad/range/deltaConst*
_output_shapes
: *0
_class&
$"loc:@loss/output_layer_loss/Mean_1*
value	B :*
dtype0
є
@training/Adam/gradients/loss/output_layer_loss/Mean_1_grad/rangeRangeFtraining/Adam/gradients/loss/output_layer_loss/Mean_1_grad/range/start?training/Adam/gradients/loss/output_layer_loss/Mean_1_grad/SizeFtraining/Adam/gradients/loss/output_layer_loss/Mean_1_grad/range/delta*
_output_shapes
:*

Tidx0*0
_class&
$"loc:@loss/output_layer_loss/Mean_1
Й
Etraining/Adam/gradients/loss/output_layer_loss/Mean_1_grad/Fill/valueConst*
_output_shapes
: *0
_class&
$"loc:@loss/output_layer_loss/Mean_1*
value	B :*
dtype0
Й
?training/Adam/gradients/loss/output_layer_loss/Mean_1_grad/FillFillBtraining/Adam/gradients/loss/output_layer_loss/Mean_1_grad/Shape_1Etraining/Adam/gradients/loss/output_layer_loss/Mean_1_grad/Fill/value*
_output_shapes
: *

index_type0*0
_class&
$"loc:@loss/output_layer_loss/Mean_1*
T0
О
Htraining/Adam/gradients/loss/output_layer_loss/Mean_1_grad/DynamicStitchDynamicStitch@training/Adam/gradients/loss/output_layer_loss/Mean_1_grad/range>training/Adam/gradients/loss/output_layer_loss/Mean_1_grad/mod@training/Adam/gradients/loss/output_layer_loss/Mean_1_grad/Shape?training/Adam/gradients/loss/output_layer_loss/Mean_1_grad/Fill*
N*
_output_shapes
:*0
_class&
$"loc:@loss/output_layer_loss/Mean_1*
T0
И
Dtraining/Adam/gradients/loss/output_layer_loss/Mean_1_grad/Maximum/yConst*
_output_shapes
: *0
_class&
$"loc:@loss/output_layer_loss/Mean_1*
value	B :*
dtype0
Д
Btraining/Adam/gradients/loss/output_layer_loss/Mean_1_grad/MaximumMaximumHtraining/Adam/gradients/loss/output_layer_loss/Mean_1_grad/DynamicStitchDtraining/Adam/gradients/loss/output_layer_loss/Mean_1_grad/Maximum/y*
_output_shapes
:*0
_class&
$"loc:@loss/output_layer_loss/Mean_1*
T0
Ќ
Ctraining/Adam/gradients/loss/output_layer_loss/Mean_1_grad/floordivFloorDiv@training/Adam/gradients/loss/output_layer_loss/Mean_1_grad/ShapeBtraining/Adam/gradients/loss/output_layer_loss/Mean_1_grad/Maximum*
_output_shapes
:*0
_class&
$"loc:@loss/output_layer_loss/Mean_1*
T0
Ц
Btraining/Adam/gradients/loss/output_layer_loss/Mean_1_grad/ReshapeReshape?training/Adam/gradients/loss/output_layer_loss/mul_grad/ReshapeHtraining/Adam/gradients/loss/output_layer_loss/Mean_1_grad/DynamicStitch*#
_output_shapes
:џџџџџџџџџ*
Tshape0*0
_class&
$"loc:@loss/output_layer_loss/Mean_1*
T0
Т
?training/Adam/gradients/loss/output_layer_loss/Mean_1_grad/TileTileBtraining/Adam/gradients/loss/output_layer_loss/Mean_1_grad/ReshapeCtraining/Adam/gradients/loss/output_layer_loss/Mean_1_grad/floordiv*#
_output_shapes
:џџџџџџџџџ*

Tmultiples0*0
_class&
$"loc:@loss/output_layer_loss/Mean_1*
T0
Я
Btraining/Adam/gradients/loss/output_layer_loss/Mean_1_grad/Shape_2Shapeloss/output_layer_loss/Mean*
out_type0*
_output_shapes
:*0
_class&
$"loc:@loss/output_layer_loss/Mean_1*
T0
б
Btraining/Adam/gradients/loss/output_layer_loss/Mean_1_grad/Shape_3Shapeloss/output_layer_loss/Mean_1*
out_type0*
_output_shapes
:*0
_class&
$"loc:@loss/output_layer_loss/Mean_1*
T0
М
@training/Adam/gradients/loss/output_layer_loss/Mean_1_grad/ConstConst*
_output_shapes
:*0
_class&
$"loc:@loss/output_layer_loss/Mean_1*
valueB: *
dtype0
Н
?training/Adam/gradients/loss/output_layer_loss/Mean_1_grad/ProdProdBtraining/Adam/gradients/loss/output_layer_loss/Mean_1_grad/Shape_2@training/Adam/gradients/loss/output_layer_loss/Mean_1_grad/Const*
	keep_dims( *
_output_shapes
: *

Tidx0*0
_class&
$"loc:@loss/output_layer_loss/Mean_1*
T0
О
Btraining/Adam/gradients/loss/output_layer_loss/Mean_1_grad/Const_1Const*
_output_shapes
:*0
_class&
$"loc:@loss/output_layer_loss/Mean_1*
valueB: *
dtype0
С
Atraining/Adam/gradients/loss/output_layer_loss/Mean_1_grad/Prod_1ProdBtraining/Adam/gradients/loss/output_layer_loss/Mean_1_grad/Shape_3Btraining/Adam/gradients/loss/output_layer_loss/Mean_1_grad/Const_1*
	keep_dims( *
_output_shapes
: *

Tidx0*0
_class&
$"loc:@loss/output_layer_loss/Mean_1*
T0
К
Ftraining/Adam/gradients/loss/output_layer_loss/Mean_1_grad/Maximum_1/yConst*
_output_shapes
: *0
_class&
$"loc:@loss/output_layer_loss/Mean_1*
value	B :*
dtype0
­
Dtraining/Adam/gradients/loss/output_layer_loss/Mean_1_grad/Maximum_1MaximumAtraining/Adam/gradients/loss/output_layer_loss/Mean_1_grad/Prod_1Ftraining/Adam/gradients/loss/output_layer_loss/Mean_1_grad/Maximum_1/y*
_output_shapes
: *0
_class&
$"loc:@loss/output_layer_loss/Mean_1*
T0
Ћ
Etraining/Adam/gradients/loss/output_layer_loss/Mean_1_grad/floordiv_1FloorDiv?training/Adam/gradients/loss/output_layer_loss/Mean_1_grad/ProdDtraining/Adam/gradients/loss/output_layer_loss/Mean_1_grad/Maximum_1*
_output_shapes
: *0
_class&
$"loc:@loss/output_layer_loss/Mean_1*
T0
№
?training/Adam/gradients/loss/output_layer_loss/Mean_1_grad/CastCastEtraining/Adam/gradients/loss/output_layer_loss/Mean_1_grad/floordiv_1*
_output_shapes
: *

SrcT0*0
_class&
$"loc:@loss/output_layer_loss/Mean_1*

DstT0
Џ
Btraining/Adam/gradients/loss/output_layer_loss/Mean_1_grad/truedivRealDiv?training/Adam/gradients/loss/output_layer_loss/Mean_1_grad/Tile?training/Adam/gradients/loss/output_layer_loss/Mean_1_grad/Cast*#
_output_shapes
:џџџџџџџџџ*0
_class&
$"loc:@loss/output_layer_loss/Mean_1*
T0
Ы
>training/Adam/gradients/loss/output_layer_loss/Mean_grad/ShapeShapeloss/output_layer_loss/Square*
out_type0*
_output_shapes
:*.
_class$
" loc:@loss/output_layer_loss/Mean*
T0
Џ
=training/Adam/gradients/loss/output_layer_loss/Mean_grad/SizeConst*
_output_shapes
: *.
_class$
" loc:@loss/output_layer_loss/Mean*
value	B :*
dtype0

<training/Adam/gradients/loss/output_layer_loss/Mean_grad/addAdd-loss/output_layer_loss/Mean/reduction_indices=training/Adam/gradients/loss/output_layer_loss/Mean_grad/Size*
_output_shapes
: *.
_class$
" loc:@loss/output_layer_loss/Mean*
T0

<training/Adam/gradients/loss/output_layer_loss/Mean_grad/modFloorMod<training/Adam/gradients/loss/output_layer_loss/Mean_grad/add=training/Adam/gradients/loss/output_layer_loss/Mean_grad/Size*
_output_shapes
: *.
_class$
" loc:@loss/output_layer_loss/Mean*
T0
Г
@training/Adam/gradients/loss/output_layer_loss/Mean_grad/Shape_1Const*
_output_shapes
: *.
_class$
" loc:@loss/output_layer_loss/Mean*
valueB *
dtype0
Ж
Dtraining/Adam/gradients/loss/output_layer_loss/Mean_grad/range/startConst*
_output_shapes
: *.
_class$
" loc:@loss/output_layer_loss/Mean*
value	B : *
dtype0
Ж
Dtraining/Adam/gradients/loss/output_layer_loss/Mean_grad/range/deltaConst*
_output_shapes
: *.
_class$
" loc:@loss/output_layer_loss/Mean*
value	B :*
dtype0
ъ
>training/Adam/gradients/loss/output_layer_loss/Mean_grad/rangeRangeDtraining/Adam/gradients/loss/output_layer_loss/Mean_grad/range/start=training/Adam/gradients/loss/output_layer_loss/Mean_grad/SizeDtraining/Adam/gradients/loss/output_layer_loss/Mean_grad/range/delta*
_output_shapes
:*

Tidx0*.
_class$
" loc:@loss/output_layer_loss/Mean
Е
Ctraining/Adam/gradients/loss/output_layer_loss/Mean_grad/Fill/valueConst*
_output_shapes
: *.
_class$
" loc:@loss/output_layer_loss/Mean*
value	B :*
dtype0
Џ
=training/Adam/gradients/loss/output_layer_loss/Mean_grad/FillFill@training/Adam/gradients/loss/output_layer_loss/Mean_grad/Shape_1Ctraining/Adam/gradients/loss/output_layer_loss/Mean_grad/Fill/value*
_output_shapes
: *

index_type0*.
_class$
" loc:@loss/output_layer_loss/Mean*
T0
В
Ftraining/Adam/gradients/loss/output_layer_loss/Mean_grad/DynamicStitchDynamicStitch>training/Adam/gradients/loss/output_layer_loss/Mean_grad/range<training/Adam/gradients/loss/output_layer_loss/Mean_grad/mod>training/Adam/gradients/loss/output_layer_loss/Mean_grad/Shape=training/Adam/gradients/loss/output_layer_loss/Mean_grad/Fill*
N*
_output_shapes
:*.
_class$
" loc:@loss/output_layer_loss/Mean*
T0
Д
Btraining/Adam/gradients/loss/output_layer_loss/Mean_grad/Maximum/yConst*
_output_shapes
: *.
_class$
" loc:@loss/output_layer_loss/Mean*
value	B :*
dtype0
Ќ
@training/Adam/gradients/loss/output_layer_loss/Mean_grad/MaximumMaximumFtraining/Adam/gradients/loss/output_layer_loss/Mean_grad/DynamicStitchBtraining/Adam/gradients/loss/output_layer_loss/Mean_grad/Maximum/y*
_output_shapes
:*.
_class$
" loc:@loss/output_layer_loss/Mean*
T0
Є
Atraining/Adam/gradients/loss/output_layer_loss/Mean_grad/floordivFloorDiv>training/Adam/gradients/loss/output_layer_loss/Mean_grad/Shape@training/Adam/gradients/loss/output_layer_loss/Mean_grad/Maximum*
_output_shapes
:*.
_class$
" loc:@loss/output_layer_loss/Mean*
T0
а
@training/Adam/gradients/loss/output_layer_loss/Mean_grad/ReshapeReshapeBtraining/Adam/gradients/loss/output_layer_loss/Mean_1_grad/truedivFtraining/Adam/gradients/loss/output_layer_loss/Mean_grad/DynamicStitch*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
Tshape0*.
_class$
" loc:@loss/output_layer_loss/Mean*
T0
Ч
=training/Adam/gradients/loss/output_layer_loss/Mean_grad/TileTile@training/Adam/gradients/loss/output_layer_loss/Mean_grad/ReshapeAtraining/Adam/gradients/loss/output_layer_loss/Mean_grad/floordiv*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*

Tmultiples0*.
_class$
" loc:@loss/output_layer_loss/Mean*
T0
Э
@training/Adam/gradients/loss/output_layer_loss/Mean_grad/Shape_2Shapeloss/output_layer_loss/Square*
out_type0*
_output_shapes
:*.
_class$
" loc:@loss/output_layer_loss/Mean*
T0
Ы
@training/Adam/gradients/loss/output_layer_loss/Mean_grad/Shape_3Shapeloss/output_layer_loss/Mean*
out_type0*
_output_shapes
:*.
_class$
" loc:@loss/output_layer_loss/Mean*
T0
И
>training/Adam/gradients/loss/output_layer_loss/Mean_grad/ConstConst*
_output_shapes
:*.
_class$
" loc:@loss/output_layer_loss/Mean*
valueB: *
dtype0
Е
=training/Adam/gradients/loss/output_layer_loss/Mean_grad/ProdProd@training/Adam/gradients/loss/output_layer_loss/Mean_grad/Shape_2>training/Adam/gradients/loss/output_layer_loss/Mean_grad/Const*
	keep_dims( *
_output_shapes
: *

Tidx0*.
_class$
" loc:@loss/output_layer_loss/Mean*
T0
К
@training/Adam/gradients/loss/output_layer_loss/Mean_grad/Const_1Const*
_output_shapes
:*.
_class$
" loc:@loss/output_layer_loss/Mean*
valueB: *
dtype0
Й
?training/Adam/gradients/loss/output_layer_loss/Mean_grad/Prod_1Prod@training/Adam/gradients/loss/output_layer_loss/Mean_grad/Shape_3@training/Adam/gradients/loss/output_layer_loss/Mean_grad/Const_1*
	keep_dims( *
_output_shapes
: *

Tidx0*.
_class$
" loc:@loss/output_layer_loss/Mean*
T0
Ж
Dtraining/Adam/gradients/loss/output_layer_loss/Mean_grad/Maximum_1/yConst*
_output_shapes
: *.
_class$
" loc:@loss/output_layer_loss/Mean*
value	B :*
dtype0
Ѕ
Btraining/Adam/gradients/loss/output_layer_loss/Mean_grad/Maximum_1Maximum?training/Adam/gradients/loss/output_layer_loss/Mean_grad/Prod_1Dtraining/Adam/gradients/loss/output_layer_loss/Mean_grad/Maximum_1/y*
_output_shapes
: *.
_class$
" loc:@loss/output_layer_loss/Mean*
T0
Ѓ
Ctraining/Adam/gradients/loss/output_layer_loss/Mean_grad/floordiv_1FloorDiv=training/Adam/gradients/loss/output_layer_loss/Mean_grad/ProdBtraining/Adam/gradients/loss/output_layer_loss/Mean_grad/Maximum_1*
_output_shapes
: *.
_class$
" loc:@loss/output_layer_loss/Mean*
T0
ъ
=training/Adam/gradients/loss/output_layer_loss/Mean_grad/CastCastCtraining/Adam/gradients/loss/output_layer_loss/Mean_grad/floordiv_1*
_output_shapes
: *

SrcT0*.
_class$
" loc:@loss/output_layer_loss/Mean*

DstT0
Д
@training/Adam/gradients/loss/output_layer_loss/Mean_grad/truedivRealDiv=training/Adam/gradients/loss/output_layer_loss/Mean_grad/Tile=training/Adam/gradients/loss/output_layer_loss/Mean_grad/Cast*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*.
_class$
" loc:@loss/output_layer_loss/Mean*
T0
њ
@training/Adam/gradients/loss/output_layer_loss/Square_grad/ConstConstA^training/Adam/gradients/loss/output_layer_loss/Mean_grad/truediv*
_output_shapes
: *0
_class&
$"loc:@loss/output_layer_loss/Square*
valueB
 *   @*
dtype0

>training/Adam/gradients/loss/output_layer_loss/Square_grad/MulMulloss/output_layer_loss/sub@training/Adam/gradients/loss/output_layer_loss/Square_grad/Const*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*0
_class&
$"loc:@loss/output_layer_loss/Square*
T0
Ж
@training/Adam/gradients/loss/output_layer_loss/Square_grad/Mul_1Mul@training/Adam/gradients/loss/output_layer_loss/Mean_grad/truediv>training/Adam/gradients/loss/output_layer_loss/Square_grad/Mul*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*0
_class&
$"loc:@loss/output_layer_loss/Square*
T0
Р
=training/Adam/gradients/loss/output_layer_loss/sub_grad/ShapeShapeoutput_layer/BiasAdd*
out_type0*
_output_shapes
:*-
_class#
!loc:@loss/output_layer_loss/sub*
T0
С
?training/Adam/gradients/loss/output_layer_loss/sub_grad/Shape_1Shapeoutput_layer_target*
out_type0*
_output_shapes
:*-
_class#
!loc:@loss/output_layer_loss/sub*
T0
в
Mtraining/Adam/gradients/loss/output_layer_loss/sub_grad/BroadcastGradientArgsBroadcastGradientArgs=training/Adam/gradients/loss/output_layer_loss/sub_grad/Shape?training/Adam/gradients/loss/output_layer_loss/sub_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*-
_class#
!loc:@loss/output_layer_loss/sub*
T0
Т
;training/Adam/gradients/loss/output_layer_loss/sub_grad/SumSum@training/Adam/gradients/loss/output_layer_loss/Square_grad/Mul_1Mtraining/Adam/gradients/loss/output_layer_loss/sub_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*

Tidx0*-
_class#
!loc:@loss/output_layer_loss/sub*
T0
Е
?training/Adam/gradients/loss/output_layer_loss/sub_grad/ReshapeReshape;training/Adam/gradients/loss/output_layer_loss/sub_grad/Sum=training/Adam/gradients/loss/output_layer_loss/sub_grad/Shape*'
_output_shapes
:џџџџџџџџџ*
Tshape0*-
_class#
!loc:@loss/output_layer_loss/sub*
T0
Ц
=training/Adam/gradients/loss/output_layer_loss/sub_grad/Sum_1Sum@training/Adam/gradients/loss/output_layer_loss/Square_grad/Mul_1Otraining/Adam/gradients/loss/output_layer_loss/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*

Tidx0*-
_class#
!loc:@loss/output_layer_loss/sub*
T0
г
;training/Adam/gradients/loss/output_layer_loss/sub_grad/NegNeg=training/Adam/gradients/loss/output_layer_loss/sub_grad/Sum_1*
_output_shapes
:*-
_class#
!loc:@loss/output_layer_loss/sub*
T0
Т
Atraining/Adam/gradients/loss/output_layer_loss/sub_grad/Reshape_1Reshape;training/Adam/gradients/loss/output_layer_loss/sub_grad/Neg?training/Adam/gradients/loss/output_layer_loss/sub_grad/Shape_1*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
Tshape0*-
_class#
!loc:@loss/output_layer_loss/sub*
T0
ђ
=training/Adam/gradients/output_layer/BiasAdd_grad/BiasAddGradBiasAddGrad?training/Adam/gradients/loss/output_layer_loss/sub_grad/Reshape*
_output_shapes
:*
data_formatNHWC*'
_class
loc:@output_layer/BiasAdd*
T0

7training/Adam/gradients/output_layer/MatMul_grad/MatMulMatMul?training/Adam/gradients/loss/output_layer_loss/sub_grad/Reshapeoutput_layer/kernel/read*
transpose_a( *'
_output_shapes
:џџџџџџџџџ2*
transpose_b(*&
_class
loc:@output_layer/MatMul*
T0

9training/Adam/gradients/output_layer/MatMul_grad/MatMul_1MatMullayer_3/Relu?training/Adam/gradients/loss/output_layer_loss/sub_grad/Reshape*
transpose_a(*
_output_shapes

:2*
transpose_b( *&
_class
loc:@output_layer/MatMul*
T0
и
2training/Adam/gradients/layer_3/Relu_grad/ReluGradReluGrad7training/Adam/gradients/output_layer/MatMul_grad/MatMullayer_3/Relu*'
_output_shapes
:џџџџџџџџџ2*
_class
loc:@layer_3/Relu*
T0
л
8training/Adam/gradients/layer_3/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/layer_3/Relu_grad/ReluGrad*
_output_shapes
:2*
data_formatNHWC*"
_class
loc:@layer_3/BiasAdd*
T0

2training/Adam/gradients/layer_3/MatMul_grad/MatMulMatMul2training/Adam/gradients/layer_3/Relu_grad/ReluGradlayer_3/kernel/read*
transpose_a( *'
_output_shapes
:џџџџџџџџџd*
transpose_b(*!
_class
loc:@layer_3/MatMul*
T0
ђ
4training/Adam/gradients/layer_3/MatMul_grad/MatMul_1MatMullayer_2/Relu2training/Adam/gradients/layer_3/Relu_grad/ReluGrad*
transpose_a(*
_output_shapes

:d2*
transpose_b( *!
_class
loc:@layer_3/MatMul*
T0
г
2training/Adam/gradients/layer_2/Relu_grad/ReluGradReluGrad2training/Adam/gradients/layer_3/MatMul_grad/MatMullayer_2/Relu*'
_output_shapes
:џџџџџџџџџd*
_class
loc:@layer_2/Relu*
T0
л
8training/Adam/gradients/layer_2/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/layer_2/Relu_grad/ReluGrad*
_output_shapes
:d*
data_formatNHWC*"
_class
loc:@layer_2/BiasAdd*
T0

2training/Adam/gradients/layer_2/MatMul_grad/MatMulMatMul2training/Adam/gradients/layer_2/Relu_grad/ReluGradlayer_2/kernel/read*
transpose_a( *'
_output_shapes
:џџџџџџџџџ2*
transpose_b(*!
_class
loc:@layer_2/MatMul*
T0
ђ
4training/Adam/gradients/layer_2/MatMul_grad/MatMul_1MatMullayer_1/Relu2training/Adam/gradients/layer_2/Relu_grad/ReluGrad*
transpose_a(*
_output_shapes

:2d*
transpose_b( *!
_class
loc:@layer_2/MatMul*
T0
г
2training/Adam/gradients/layer_1/Relu_grad/ReluGradReluGrad2training/Adam/gradients/layer_2/MatMul_grad/MatMullayer_1/Relu*'
_output_shapes
:џџџџџџџџџ2*
_class
loc:@layer_1/Relu*
T0
л
8training/Adam/gradients/layer_1/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/layer_1/Relu_grad/ReluGrad*
_output_shapes
:2*
data_formatNHWC*"
_class
loc:@layer_1/BiasAdd*
T0

2training/Adam/gradients/layer_1/MatMul_grad/MatMulMatMul2training/Adam/gradients/layer_1/Relu_grad/ReluGradlayer_1/kernel/read*
transpose_a( *'
_output_shapes
:џџџџџџџџџ	*
transpose_b(*!
_class
loc:@layer_1/MatMul*
T0
ѓ
4training/Adam/gradients/layer_1/MatMul_grad/MatMul_1MatMullayer_1_input2training/Adam/gradients/layer_1/Relu_grad/ReluGrad*
transpose_a(*
_output_shapes

:	2*
transpose_b( *!
_class
loc:@layer_1/MatMul*
T0
_
training/Adam/AssignAdd/valueConst*
_output_shapes
: *
value	B	 R*
dtype0	
Ќ
training/Adam/AssignAdd	AssignAddAdam/iterationstraining/Adam/AssignAdd/value*
_output_shapes
: *
use_locking( *"
_class
loc:@Adam/iterations*
T0	
`
training/Adam/CastCastAdam/iterations/read*
_output_shapes
: *

SrcT0	*

DstT0
X
training/Adam/add/yConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
b
training/Adam/addAddtraining/Adam/Casttraining/Adam/add/y*
_output_shapes
: *
T0
^
training/Adam/PowPowAdam/beta_2/readtraining/Adam/add*
_output_shapes
: *
T0
X
training/Adam/sub/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
a
training/Adam/subSubtraining/Adam/sub/xtraining/Adam/Pow*
_output_shapes
: *
T0
X
training/Adam/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
Z
training/Adam/Const_1Const*
_output_shapes
: *
valueB
 *  *
dtype0
y
#training/Adam/clip_by_value/MinimumMinimumtraining/Adam/subtraining/Adam/Const_1*
_output_shapes
: *
T0

training/Adam/clip_by_valueMaximum#training/Adam/clip_by_value/Minimumtraining/Adam/Const*
_output_shapes
: *
T0
X
training/Adam/SqrtSqrttraining/Adam/clip_by_value*
_output_shapes
: *
T0
`
training/Adam/Pow_1PowAdam/beta_1/readtraining/Adam/add*
_output_shapes
: *
T0
Z
training/Adam/sub_1/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
g
training/Adam/sub_1Subtraining/Adam/sub_1/xtraining/Adam/Pow_1*
_output_shapes
: *
T0
j
training/Adam/truedivRealDivtraining/Adam/Sqrttraining/Adam/sub_1*
_output_shapes
: *
T0
^
training/Adam/mulMulAdam/lr/readtraining/Adam/truediv*
_output_shapes
: *
T0
h
training/Adam/zerosConst*
_output_shapes

:	2*
valueB	2*    *
dtype0

training/Adam/Variable
VariableV2*
_output_shapes

:	2*
	container *
shape
:	2*
shared_name *
dtype0
б
training/Adam/Variable/AssignAssigntraining/Adam/Variabletraining/Adam/zeros*
_output_shapes

:	2*
validate_shape(*
use_locking(*)
_class
loc:@training/Adam/Variable*
T0

training/Adam/Variable/readIdentitytraining/Adam/Variable*
_output_shapes

:	2*)
_class
loc:@training/Adam/Variable*
T0
b
training/Adam/zeros_1Const*
_output_shapes
:2*
valueB2*    *
dtype0

training/Adam/Variable_1
VariableV2*
_output_shapes
:2*
	container *
shape:2*
shared_name *
dtype0
е
training/Adam/Variable_1/AssignAssigntraining/Adam/Variable_1training/Adam/zeros_1*
_output_shapes
:2*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_1*
T0

training/Adam/Variable_1/readIdentitytraining/Adam/Variable_1*
_output_shapes
:2*+
_class!
loc:@training/Adam/Variable_1*
T0
v
%training/Adam/zeros_2/shape_as_tensorConst*
_output_shapes
:*
valueB"2   d   *
dtype0
`
training/Adam/zeros_2/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0

training/Adam/zeros_2Fill%training/Adam/zeros_2/shape_as_tensortraining/Adam/zeros_2/Const*
_output_shapes

:2d*

index_type0*
T0

training/Adam/Variable_2
VariableV2*
_output_shapes

:2d*
	container *
shape
:2d*
shared_name *
dtype0
й
training/Adam/Variable_2/AssignAssigntraining/Adam/Variable_2training/Adam/zeros_2*
_output_shapes

:2d*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_2*
T0

training/Adam/Variable_2/readIdentitytraining/Adam/Variable_2*
_output_shapes

:2d*+
_class!
loc:@training/Adam/Variable_2*
T0
b
training/Adam/zeros_3Const*
_output_shapes
:d*
valueBd*    *
dtype0

training/Adam/Variable_3
VariableV2*
_output_shapes
:d*
	container *
shape:d*
shared_name *
dtype0
е
training/Adam/Variable_3/AssignAssigntraining/Adam/Variable_3training/Adam/zeros_3*
_output_shapes
:d*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_3*
T0

training/Adam/Variable_3/readIdentitytraining/Adam/Variable_3*
_output_shapes
:d*+
_class!
loc:@training/Adam/Variable_3*
T0
v
%training/Adam/zeros_4/shape_as_tensorConst*
_output_shapes
:*
valueB"d   2   *
dtype0
`
training/Adam/zeros_4/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0

training/Adam/zeros_4Fill%training/Adam/zeros_4/shape_as_tensortraining/Adam/zeros_4/Const*
_output_shapes

:d2*

index_type0*
T0

training/Adam/Variable_4
VariableV2*
_output_shapes

:d2*
	container *
shape
:d2*
shared_name *
dtype0
й
training/Adam/Variable_4/AssignAssigntraining/Adam/Variable_4training/Adam/zeros_4*
_output_shapes

:d2*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_4*
T0

training/Adam/Variable_4/readIdentitytraining/Adam/Variable_4*
_output_shapes

:d2*+
_class!
loc:@training/Adam/Variable_4*
T0
b
training/Adam/zeros_5Const*
_output_shapes
:2*
valueB2*    *
dtype0

training/Adam/Variable_5
VariableV2*
_output_shapes
:2*
	container *
shape:2*
shared_name *
dtype0
е
training/Adam/Variable_5/AssignAssigntraining/Adam/Variable_5training/Adam/zeros_5*
_output_shapes
:2*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_5*
T0

training/Adam/Variable_5/readIdentitytraining/Adam/Variable_5*
_output_shapes
:2*+
_class!
loc:@training/Adam/Variable_5*
T0
j
training/Adam/zeros_6Const*
_output_shapes

:2*
valueB2*    *
dtype0

training/Adam/Variable_6
VariableV2*
_output_shapes

:2*
	container *
shape
:2*
shared_name *
dtype0
й
training/Adam/Variable_6/AssignAssigntraining/Adam/Variable_6training/Adam/zeros_6*
_output_shapes

:2*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_6*
T0

training/Adam/Variable_6/readIdentitytraining/Adam/Variable_6*
_output_shapes

:2*+
_class!
loc:@training/Adam/Variable_6*
T0
b
training/Adam/zeros_7Const*
_output_shapes
:*
valueB*    *
dtype0

training/Adam/Variable_7
VariableV2*
_output_shapes
:*
	container *
shape:*
shared_name *
dtype0
е
training/Adam/Variable_7/AssignAssigntraining/Adam/Variable_7training/Adam/zeros_7*
_output_shapes
:*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_7*
T0

training/Adam/Variable_7/readIdentitytraining/Adam/Variable_7*
_output_shapes
:*+
_class!
loc:@training/Adam/Variable_7*
T0
j
training/Adam/zeros_8Const*
_output_shapes

:	2*
valueB	2*    *
dtype0

training/Adam/Variable_8
VariableV2*
_output_shapes

:	2*
	container *
shape
:	2*
shared_name *
dtype0
й
training/Adam/Variable_8/AssignAssigntraining/Adam/Variable_8training/Adam/zeros_8*
_output_shapes

:	2*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_8*
T0

training/Adam/Variable_8/readIdentitytraining/Adam/Variable_8*
_output_shapes

:	2*+
_class!
loc:@training/Adam/Variable_8*
T0
b
training/Adam/zeros_9Const*
_output_shapes
:2*
valueB2*    *
dtype0

training/Adam/Variable_9
VariableV2*
_output_shapes
:2*
	container *
shape:2*
shared_name *
dtype0
е
training/Adam/Variable_9/AssignAssigntraining/Adam/Variable_9training/Adam/zeros_9*
_output_shapes
:2*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_9*
T0

training/Adam/Variable_9/readIdentitytraining/Adam/Variable_9*
_output_shapes
:2*+
_class!
loc:@training/Adam/Variable_9*
T0
w
&training/Adam/zeros_10/shape_as_tensorConst*
_output_shapes
:*
valueB"2   d   *
dtype0
a
training/Adam/zeros_10/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0

training/Adam/zeros_10Fill&training/Adam/zeros_10/shape_as_tensortraining/Adam/zeros_10/Const*
_output_shapes

:2d*

index_type0*
T0

training/Adam/Variable_10
VariableV2*
_output_shapes

:2d*
	container *
shape
:2d*
shared_name *
dtype0
н
 training/Adam/Variable_10/AssignAssigntraining/Adam/Variable_10training/Adam/zeros_10*
_output_shapes

:2d*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_10*
T0

training/Adam/Variable_10/readIdentitytraining/Adam/Variable_10*
_output_shapes

:2d*,
_class"
 loc:@training/Adam/Variable_10*
T0
c
training/Adam/zeros_11Const*
_output_shapes
:d*
valueBd*    *
dtype0

training/Adam/Variable_11
VariableV2*
_output_shapes
:d*
	container *
shape:d*
shared_name *
dtype0
й
 training/Adam/Variable_11/AssignAssigntraining/Adam/Variable_11training/Adam/zeros_11*
_output_shapes
:d*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_11*
T0

training/Adam/Variable_11/readIdentitytraining/Adam/Variable_11*
_output_shapes
:d*,
_class"
 loc:@training/Adam/Variable_11*
T0
w
&training/Adam/zeros_12/shape_as_tensorConst*
_output_shapes
:*
valueB"d   2   *
dtype0
a
training/Adam/zeros_12/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0

training/Adam/zeros_12Fill&training/Adam/zeros_12/shape_as_tensortraining/Adam/zeros_12/Const*
_output_shapes

:d2*

index_type0*
T0

training/Adam/Variable_12
VariableV2*
_output_shapes

:d2*
	container *
shape
:d2*
shared_name *
dtype0
н
 training/Adam/Variable_12/AssignAssigntraining/Adam/Variable_12training/Adam/zeros_12*
_output_shapes

:d2*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_12*
T0

training/Adam/Variable_12/readIdentitytraining/Adam/Variable_12*
_output_shapes

:d2*,
_class"
 loc:@training/Adam/Variable_12*
T0
c
training/Adam/zeros_13Const*
_output_shapes
:2*
valueB2*    *
dtype0

training/Adam/Variable_13
VariableV2*
_output_shapes
:2*
	container *
shape:2*
shared_name *
dtype0
й
 training/Adam/Variable_13/AssignAssigntraining/Adam/Variable_13training/Adam/zeros_13*
_output_shapes
:2*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_13*
T0

training/Adam/Variable_13/readIdentitytraining/Adam/Variable_13*
_output_shapes
:2*,
_class"
 loc:@training/Adam/Variable_13*
T0
k
training/Adam/zeros_14Const*
_output_shapes

:2*
valueB2*    *
dtype0

training/Adam/Variable_14
VariableV2*
_output_shapes

:2*
	container *
shape
:2*
shared_name *
dtype0
н
 training/Adam/Variable_14/AssignAssigntraining/Adam/Variable_14training/Adam/zeros_14*
_output_shapes

:2*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_14*
T0

training/Adam/Variable_14/readIdentitytraining/Adam/Variable_14*
_output_shapes

:2*,
_class"
 loc:@training/Adam/Variable_14*
T0
c
training/Adam/zeros_15Const*
_output_shapes
:*
valueB*    *
dtype0

training/Adam/Variable_15
VariableV2*
_output_shapes
:*
	container *
shape:*
shared_name *
dtype0
й
 training/Adam/Variable_15/AssignAssigntraining/Adam/Variable_15training/Adam/zeros_15*
_output_shapes
:*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_15*
T0

training/Adam/Variable_15/readIdentitytraining/Adam/Variable_15*
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_15*
T0
p
&training/Adam/zeros_16/shape_as_tensorConst*
_output_shapes
:*
valueB:*
dtype0
a
training/Adam/zeros_16/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0

training/Adam/zeros_16Fill&training/Adam/zeros_16/shape_as_tensortraining/Adam/zeros_16/Const*
_output_shapes
:*

index_type0*
T0

training/Adam/Variable_16
VariableV2*
_output_shapes
:*
	container *
shape:*
shared_name *
dtype0
й
 training/Adam/Variable_16/AssignAssigntraining/Adam/Variable_16training/Adam/zeros_16*
_output_shapes
:*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_16*
T0

training/Adam/Variable_16/readIdentitytraining/Adam/Variable_16*
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_16*
T0
p
&training/Adam/zeros_17/shape_as_tensorConst*
_output_shapes
:*
valueB:*
dtype0
a
training/Adam/zeros_17/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0

training/Adam/zeros_17Fill&training/Adam/zeros_17/shape_as_tensortraining/Adam/zeros_17/Const*
_output_shapes
:*

index_type0*
T0

training/Adam/Variable_17
VariableV2*
_output_shapes
:*
	container *
shape:*
shared_name *
dtype0
й
 training/Adam/Variable_17/AssignAssigntraining/Adam/Variable_17training/Adam/zeros_17*
_output_shapes
:*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_17*
T0

training/Adam/Variable_17/readIdentitytraining/Adam/Variable_17*
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_17*
T0
p
&training/Adam/zeros_18/shape_as_tensorConst*
_output_shapes
:*
valueB:*
dtype0
a
training/Adam/zeros_18/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0

training/Adam/zeros_18Fill&training/Adam/zeros_18/shape_as_tensortraining/Adam/zeros_18/Const*
_output_shapes
:*

index_type0*
T0

training/Adam/Variable_18
VariableV2*
_output_shapes
:*
	container *
shape:*
shared_name *
dtype0
й
 training/Adam/Variable_18/AssignAssigntraining/Adam/Variable_18training/Adam/zeros_18*
_output_shapes
:*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_18*
T0

training/Adam/Variable_18/readIdentitytraining/Adam/Variable_18*
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_18*
T0
p
&training/Adam/zeros_19/shape_as_tensorConst*
_output_shapes
:*
valueB:*
dtype0
a
training/Adam/zeros_19/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0

training/Adam/zeros_19Fill&training/Adam/zeros_19/shape_as_tensortraining/Adam/zeros_19/Const*
_output_shapes
:*

index_type0*
T0

training/Adam/Variable_19
VariableV2*
_output_shapes
:*
	container *
shape:*
shared_name *
dtype0
й
 training/Adam/Variable_19/AssignAssigntraining/Adam/Variable_19training/Adam/zeros_19*
_output_shapes
:*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_19*
T0

training/Adam/Variable_19/readIdentitytraining/Adam/Variable_19*
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_19*
T0
p
&training/Adam/zeros_20/shape_as_tensorConst*
_output_shapes
:*
valueB:*
dtype0
a
training/Adam/zeros_20/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0

training/Adam/zeros_20Fill&training/Adam/zeros_20/shape_as_tensortraining/Adam/zeros_20/Const*
_output_shapes
:*

index_type0*
T0

training/Adam/Variable_20
VariableV2*
_output_shapes
:*
	container *
shape:*
shared_name *
dtype0
й
 training/Adam/Variable_20/AssignAssigntraining/Adam/Variable_20training/Adam/zeros_20*
_output_shapes
:*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_20*
T0

training/Adam/Variable_20/readIdentitytraining/Adam/Variable_20*
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_20*
T0
p
&training/Adam/zeros_21/shape_as_tensorConst*
_output_shapes
:*
valueB:*
dtype0
a
training/Adam/zeros_21/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0

training/Adam/zeros_21Fill&training/Adam/zeros_21/shape_as_tensortraining/Adam/zeros_21/Const*
_output_shapes
:*

index_type0*
T0

training/Adam/Variable_21
VariableV2*
_output_shapes
:*
	container *
shape:*
shared_name *
dtype0
й
 training/Adam/Variable_21/AssignAssigntraining/Adam/Variable_21training/Adam/zeros_21*
_output_shapes
:*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_21*
T0

training/Adam/Variable_21/readIdentitytraining/Adam/Variable_21*
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_21*
T0
p
&training/Adam/zeros_22/shape_as_tensorConst*
_output_shapes
:*
valueB:*
dtype0
a
training/Adam/zeros_22/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0

training/Adam/zeros_22Fill&training/Adam/zeros_22/shape_as_tensortraining/Adam/zeros_22/Const*
_output_shapes
:*

index_type0*
T0

training/Adam/Variable_22
VariableV2*
_output_shapes
:*
	container *
shape:*
shared_name *
dtype0
й
 training/Adam/Variable_22/AssignAssigntraining/Adam/Variable_22training/Adam/zeros_22*
_output_shapes
:*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_22*
T0

training/Adam/Variable_22/readIdentitytraining/Adam/Variable_22*
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_22*
T0
p
&training/Adam/zeros_23/shape_as_tensorConst*
_output_shapes
:*
valueB:*
dtype0
a
training/Adam/zeros_23/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0

training/Adam/zeros_23Fill&training/Adam/zeros_23/shape_as_tensortraining/Adam/zeros_23/Const*
_output_shapes
:*

index_type0*
T0

training/Adam/Variable_23
VariableV2*
_output_shapes
:*
	container *
shape:*
shared_name *
dtype0
й
 training/Adam/Variable_23/AssignAssigntraining/Adam/Variable_23training/Adam/zeros_23*
_output_shapes
:*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_23*
T0

training/Adam/Variable_23/readIdentitytraining/Adam/Variable_23*
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_23*
T0
r
training/Adam/mul_1MulAdam/beta_1/readtraining/Adam/Variable/read*
_output_shapes

:	2*
T0
Z
training/Adam/sub_2/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
d
training/Adam/sub_2Subtraining/Adam/sub_2/xAdam/beta_1/read*
_output_shapes
: *
T0

training/Adam/mul_2Multraining/Adam/sub_24training/Adam/gradients/layer_1/MatMul_grad/MatMul_1*
_output_shapes

:	2*
T0
m
training/Adam/add_1Addtraining/Adam/mul_1training/Adam/mul_2*
_output_shapes

:	2*
T0
t
training/Adam/mul_3MulAdam/beta_2/readtraining/Adam/Variable_8/read*
_output_shapes

:	2*
T0
Z
training/Adam/sub_3/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
d
training/Adam/sub_3Subtraining/Adam/sub_3/xAdam/beta_2/read*
_output_shapes
: *
T0
}
training/Adam/SquareSquare4training/Adam/gradients/layer_1/MatMul_grad/MatMul_1*
_output_shapes

:	2*
T0
n
training/Adam/mul_4Multraining/Adam/sub_3training/Adam/Square*
_output_shapes

:	2*
T0
m
training/Adam/add_2Addtraining/Adam/mul_3training/Adam/mul_4*
_output_shapes

:	2*
T0
k
training/Adam/mul_5Multraining/Adam/multraining/Adam/add_1*
_output_shapes

:	2*
T0
Z
training/Adam/Const_2Const*
_output_shapes
: *
valueB
 *    *
dtype0
Z
training/Adam/Const_3Const*
_output_shapes
: *
valueB
 *  *
dtype0

%training/Adam/clip_by_value_1/MinimumMinimumtraining/Adam/add_2training/Adam/Const_3*
_output_shapes

:	2*
T0

training/Adam/clip_by_value_1Maximum%training/Adam/clip_by_value_1/Minimumtraining/Adam/Const_2*
_output_shapes

:	2*
T0
d
training/Adam/Sqrt_1Sqrttraining/Adam/clip_by_value_1*
_output_shapes

:	2*
T0
Z
training/Adam/add_3/yConst*
_output_shapes
: *
valueB
 *Пж3*
dtype0
p
training/Adam/add_3Addtraining/Adam/Sqrt_1training/Adam/add_3/y*
_output_shapes

:	2*
T0
u
training/Adam/truediv_1RealDivtraining/Adam/mul_5training/Adam/add_3*
_output_shapes

:	2*
T0
q
training/Adam/sub_4Sublayer_1/kernel/readtraining/Adam/truediv_1*
_output_shapes

:	2*
T0
Ш
training/Adam/AssignAssigntraining/Adam/Variabletraining/Adam/add_1*
_output_shapes

:	2*
validate_shape(*
use_locking(*)
_class
loc:@training/Adam/Variable*
T0
Ю
training/Adam/Assign_1Assigntraining/Adam/Variable_8training/Adam/add_2*
_output_shapes

:	2*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_8*
T0
К
training/Adam/Assign_2Assignlayer_1/kerneltraining/Adam/sub_4*
_output_shapes

:	2*
validate_shape(*
use_locking(*!
_class
loc:@layer_1/kernel*
T0
p
training/Adam/mul_6MulAdam/beta_1/readtraining/Adam/Variable_1/read*
_output_shapes
:2*
T0
Z
training/Adam/sub_5/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
d
training/Adam/sub_5Subtraining/Adam/sub_5/xAdam/beta_1/read*
_output_shapes
: *
T0

training/Adam/mul_7Multraining/Adam/sub_58training/Adam/gradients/layer_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:2*
T0
i
training/Adam/add_4Addtraining/Adam/mul_6training/Adam/mul_7*
_output_shapes
:2*
T0
p
training/Adam/mul_8MulAdam/beta_2/readtraining/Adam/Variable_9/read*
_output_shapes
:2*
T0
Z
training/Adam/sub_6/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
d
training/Adam/sub_6Subtraining/Adam/sub_6/xAdam/beta_2/read*
_output_shapes
: *
T0

training/Adam/Square_1Square8training/Adam/gradients/layer_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:2*
T0
l
training/Adam/mul_9Multraining/Adam/sub_6training/Adam/Square_1*
_output_shapes
:2*
T0
i
training/Adam/add_5Addtraining/Adam/mul_8training/Adam/mul_9*
_output_shapes
:2*
T0
h
training/Adam/mul_10Multraining/Adam/multraining/Adam/add_4*
_output_shapes
:2*
T0
Z
training/Adam/Const_4Const*
_output_shapes
: *
valueB
 *    *
dtype0
Z
training/Adam/Const_5Const*
_output_shapes
: *
valueB
 *  *
dtype0

%training/Adam/clip_by_value_2/MinimumMinimumtraining/Adam/add_5training/Adam/Const_5*
_output_shapes
:2*
T0

training/Adam/clip_by_value_2Maximum%training/Adam/clip_by_value_2/Minimumtraining/Adam/Const_4*
_output_shapes
:2*
T0
`
training/Adam/Sqrt_2Sqrttraining/Adam/clip_by_value_2*
_output_shapes
:2*
T0
Z
training/Adam/add_6/yConst*
_output_shapes
: *
valueB
 *Пж3*
dtype0
l
training/Adam/add_6Addtraining/Adam/Sqrt_2training/Adam/add_6/y*
_output_shapes
:2*
T0
r
training/Adam/truediv_2RealDivtraining/Adam/mul_10training/Adam/add_6*
_output_shapes
:2*
T0
k
training/Adam/sub_7Sublayer_1/bias/readtraining/Adam/truediv_2*
_output_shapes
:2*
T0
Ъ
training/Adam/Assign_3Assigntraining/Adam/Variable_1training/Adam/add_4*
_output_shapes
:2*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_1*
T0
Ъ
training/Adam/Assign_4Assigntraining/Adam/Variable_9training/Adam/add_5*
_output_shapes
:2*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_9*
T0
В
training/Adam/Assign_5Assignlayer_1/biastraining/Adam/sub_7*
_output_shapes
:2*
validate_shape(*
use_locking(*
_class
loc:@layer_1/bias*
T0
u
training/Adam/mul_11MulAdam/beta_1/readtraining/Adam/Variable_2/read*
_output_shapes

:2d*
T0
Z
training/Adam/sub_8/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
d
training/Adam/sub_8Subtraining/Adam/sub_8/xAdam/beta_1/read*
_output_shapes
: *
T0

training/Adam/mul_12Multraining/Adam/sub_84training/Adam/gradients/layer_2/MatMul_grad/MatMul_1*
_output_shapes

:2d*
T0
o
training/Adam/add_7Addtraining/Adam/mul_11training/Adam/mul_12*
_output_shapes

:2d*
T0
v
training/Adam/mul_13MulAdam/beta_2/readtraining/Adam/Variable_10/read*
_output_shapes

:2d*
T0
Z
training/Adam/sub_9/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
d
training/Adam/sub_9Subtraining/Adam/sub_9/xAdam/beta_2/read*
_output_shapes
: *
T0

training/Adam/Square_2Square4training/Adam/gradients/layer_2/MatMul_grad/MatMul_1*
_output_shapes

:2d*
T0
q
training/Adam/mul_14Multraining/Adam/sub_9training/Adam/Square_2*
_output_shapes

:2d*
T0
o
training/Adam/add_8Addtraining/Adam/mul_13training/Adam/mul_14*
_output_shapes

:2d*
T0
l
training/Adam/mul_15Multraining/Adam/multraining/Adam/add_7*
_output_shapes

:2d*
T0
Z
training/Adam/Const_6Const*
_output_shapes
: *
valueB
 *    *
dtype0
Z
training/Adam/Const_7Const*
_output_shapes
: *
valueB
 *  *
dtype0

%training/Adam/clip_by_value_3/MinimumMinimumtraining/Adam/add_8training/Adam/Const_7*
_output_shapes

:2d*
T0

training/Adam/clip_by_value_3Maximum%training/Adam/clip_by_value_3/Minimumtraining/Adam/Const_6*
_output_shapes

:2d*
T0
d
training/Adam/Sqrt_3Sqrttraining/Adam/clip_by_value_3*
_output_shapes

:2d*
T0
Z
training/Adam/add_9/yConst*
_output_shapes
: *
valueB
 *Пж3*
dtype0
p
training/Adam/add_9Addtraining/Adam/Sqrt_3training/Adam/add_9/y*
_output_shapes

:2d*
T0
v
training/Adam/truediv_3RealDivtraining/Adam/mul_15training/Adam/add_9*
_output_shapes

:2d*
T0
r
training/Adam/sub_10Sublayer_2/kernel/readtraining/Adam/truediv_3*
_output_shapes

:2d*
T0
Ю
training/Adam/Assign_6Assigntraining/Adam/Variable_2training/Adam/add_7*
_output_shapes

:2d*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_2*
T0
а
training/Adam/Assign_7Assigntraining/Adam/Variable_10training/Adam/add_8*
_output_shapes

:2d*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_10*
T0
Л
training/Adam/Assign_8Assignlayer_2/kerneltraining/Adam/sub_10*
_output_shapes

:2d*
validate_shape(*
use_locking(*!
_class
loc:@layer_2/kernel*
T0
q
training/Adam/mul_16MulAdam/beta_1/readtraining/Adam/Variable_3/read*
_output_shapes
:d*
T0
[
training/Adam/sub_11/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
f
training/Adam/sub_11Subtraining/Adam/sub_11/xAdam/beta_1/read*
_output_shapes
: *
T0

training/Adam/mul_17Multraining/Adam/sub_118training/Adam/gradients/layer_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:d*
T0
l
training/Adam/add_10Addtraining/Adam/mul_16training/Adam/mul_17*
_output_shapes
:d*
T0
r
training/Adam/mul_18MulAdam/beta_2/readtraining/Adam/Variable_11/read*
_output_shapes
:d*
T0
[
training/Adam/sub_12/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
f
training/Adam/sub_12Subtraining/Adam/sub_12/xAdam/beta_2/read*
_output_shapes
: *
T0

training/Adam/Square_3Square8training/Adam/gradients/layer_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:d*
T0
n
training/Adam/mul_19Multraining/Adam/sub_12training/Adam/Square_3*
_output_shapes
:d*
T0
l
training/Adam/add_11Addtraining/Adam/mul_18training/Adam/mul_19*
_output_shapes
:d*
T0
i
training/Adam/mul_20Multraining/Adam/multraining/Adam/add_10*
_output_shapes
:d*
T0
Z
training/Adam/Const_8Const*
_output_shapes
: *
valueB
 *    *
dtype0
Z
training/Adam/Const_9Const*
_output_shapes
: *
valueB
 *  *
dtype0

%training/Adam/clip_by_value_4/MinimumMinimumtraining/Adam/add_11training/Adam/Const_9*
_output_shapes
:d*
T0

training/Adam/clip_by_value_4Maximum%training/Adam/clip_by_value_4/Minimumtraining/Adam/Const_8*
_output_shapes
:d*
T0
`
training/Adam/Sqrt_4Sqrttraining/Adam/clip_by_value_4*
_output_shapes
:d*
T0
[
training/Adam/add_12/yConst*
_output_shapes
: *
valueB
 *Пж3*
dtype0
n
training/Adam/add_12Addtraining/Adam/Sqrt_4training/Adam/add_12/y*
_output_shapes
:d*
T0
s
training/Adam/truediv_4RealDivtraining/Adam/mul_20training/Adam/add_12*
_output_shapes
:d*
T0
l
training/Adam/sub_13Sublayer_2/bias/readtraining/Adam/truediv_4*
_output_shapes
:d*
T0
Ы
training/Adam/Assign_9Assigntraining/Adam/Variable_3training/Adam/add_10*
_output_shapes
:d*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_3*
T0
Ю
training/Adam/Assign_10Assigntraining/Adam/Variable_11training/Adam/add_11*
_output_shapes
:d*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_11*
T0
Д
training/Adam/Assign_11Assignlayer_2/biastraining/Adam/sub_13*
_output_shapes
:d*
validate_shape(*
use_locking(*
_class
loc:@layer_2/bias*
T0
u
training/Adam/mul_21MulAdam/beta_1/readtraining/Adam/Variable_4/read*
_output_shapes

:d2*
T0
[
training/Adam/sub_14/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
f
training/Adam/sub_14Subtraining/Adam/sub_14/xAdam/beta_1/read*
_output_shapes
: *
T0

training/Adam/mul_22Multraining/Adam/sub_144training/Adam/gradients/layer_3/MatMul_grad/MatMul_1*
_output_shapes

:d2*
T0
p
training/Adam/add_13Addtraining/Adam/mul_21training/Adam/mul_22*
_output_shapes

:d2*
T0
v
training/Adam/mul_23MulAdam/beta_2/readtraining/Adam/Variable_12/read*
_output_shapes

:d2*
T0
[
training/Adam/sub_15/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
f
training/Adam/sub_15Subtraining/Adam/sub_15/xAdam/beta_2/read*
_output_shapes
: *
T0

training/Adam/Square_4Square4training/Adam/gradients/layer_3/MatMul_grad/MatMul_1*
_output_shapes

:d2*
T0
r
training/Adam/mul_24Multraining/Adam/sub_15training/Adam/Square_4*
_output_shapes

:d2*
T0
p
training/Adam/add_14Addtraining/Adam/mul_23training/Adam/mul_24*
_output_shapes

:d2*
T0
m
training/Adam/mul_25Multraining/Adam/multraining/Adam/add_13*
_output_shapes

:d2*
T0
[
training/Adam/Const_10Const*
_output_shapes
: *
valueB
 *    *
dtype0
[
training/Adam/Const_11Const*
_output_shapes
: *
valueB
 *  *
dtype0

%training/Adam/clip_by_value_5/MinimumMinimumtraining/Adam/add_14training/Adam/Const_11*
_output_shapes

:d2*
T0

training/Adam/clip_by_value_5Maximum%training/Adam/clip_by_value_5/Minimumtraining/Adam/Const_10*
_output_shapes

:d2*
T0
d
training/Adam/Sqrt_5Sqrttraining/Adam/clip_by_value_5*
_output_shapes

:d2*
T0
[
training/Adam/add_15/yConst*
_output_shapes
: *
valueB
 *Пж3*
dtype0
r
training/Adam/add_15Addtraining/Adam/Sqrt_5training/Adam/add_15/y*
_output_shapes

:d2*
T0
w
training/Adam/truediv_5RealDivtraining/Adam/mul_25training/Adam/add_15*
_output_shapes

:d2*
T0
r
training/Adam/sub_16Sublayer_3/kernel/readtraining/Adam/truediv_5*
_output_shapes

:d2*
T0
а
training/Adam/Assign_12Assigntraining/Adam/Variable_4training/Adam/add_13*
_output_shapes

:d2*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_4*
T0
в
training/Adam/Assign_13Assigntraining/Adam/Variable_12training/Adam/add_14*
_output_shapes

:d2*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_12*
T0
М
training/Adam/Assign_14Assignlayer_3/kerneltraining/Adam/sub_16*
_output_shapes

:d2*
validate_shape(*
use_locking(*!
_class
loc:@layer_3/kernel*
T0
q
training/Adam/mul_26MulAdam/beta_1/readtraining/Adam/Variable_5/read*
_output_shapes
:2*
T0
[
training/Adam/sub_17/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
f
training/Adam/sub_17Subtraining/Adam/sub_17/xAdam/beta_1/read*
_output_shapes
: *
T0

training/Adam/mul_27Multraining/Adam/sub_178training/Adam/gradients/layer_3/BiasAdd_grad/BiasAddGrad*
_output_shapes
:2*
T0
l
training/Adam/add_16Addtraining/Adam/mul_26training/Adam/mul_27*
_output_shapes
:2*
T0
r
training/Adam/mul_28MulAdam/beta_2/readtraining/Adam/Variable_13/read*
_output_shapes
:2*
T0
[
training/Adam/sub_18/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
f
training/Adam/sub_18Subtraining/Adam/sub_18/xAdam/beta_2/read*
_output_shapes
: *
T0

training/Adam/Square_5Square8training/Adam/gradients/layer_3/BiasAdd_grad/BiasAddGrad*
_output_shapes
:2*
T0
n
training/Adam/mul_29Multraining/Adam/sub_18training/Adam/Square_5*
_output_shapes
:2*
T0
l
training/Adam/add_17Addtraining/Adam/mul_28training/Adam/mul_29*
_output_shapes
:2*
T0
i
training/Adam/mul_30Multraining/Adam/multraining/Adam/add_16*
_output_shapes
:2*
T0
[
training/Adam/Const_12Const*
_output_shapes
: *
valueB
 *    *
dtype0
[
training/Adam/Const_13Const*
_output_shapes
: *
valueB
 *  *
dtype0

%training/Adam/clip_by_value_6/MinimumMinimumtraining/Adam/add_17training/Adam/Const_13*
_output_shapes
:2*
T0

training/Adam/clip_by_value_6Maximum%training/Adam/clip_by_value_6/Minimumtraining/Adam/Const_12*
_output_shapes
:2*
T0
`
training/Adam/Sqrt_6Sqrttraining/Adam/clip_by_value_6*
_output_shapes
:2*
T0
[
training/Adam/add_18/yConst*
_output_shapes
: *
valueB
 *Пж3*
dtype0
n
training/Adam/add_18Addtraining/Adam/Sqrt_6training/Adam/add_18/y*
_output_shapes
:2*
T0
s
training/Adam/truediv_6RealDivtraining/Adam/mul_30training/Adam/add_18*
_output_shapes
:2*
T0
l
training/Adam/sub_19Sublayer_3/bias/readtraining/Adam/truediv_6*
_output_shapes
:2*
T0
Ь
training/Adam/Assign_15Assigntraining/Adam/Variable_5training/Adam/add_16*
_output_shapes
:2*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_5*
T0
Ю
training/Adam/Assign_16Assigntraining/Adam/Variable_13training/Adam/add_17*
_output_shapes
:2*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_13*
T0
Д
training/Adam/Assign_17Assignlayer_3/biastraining/Adam/sub_19*
_output_shapes
:2*
validate_shape(*
use_locking(*
_class
loc:@layer_3/bias*
T0
u
training/Adam/mul_31MulAdam/beta_1/readtraining/Adam/Variable_6/read*
_output_shapes

:2*
T0
[
training/Adam/sub_20/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
f
training/Adam/sub_20Subtraining/Adam/sub_20/xAdam/beta_1/read*
_output_shapes
: *
T0

training/Adam/mul_32Multraining/Adam/sub_209training/Adam/gradients/output_layer/MatMul_grad/MatMul_1*
_output_shapes

:2*
T0
p
training/Adam/add_19Addtraining/Adam/mul_31training/Adam/mul_32*
_output_shapes

:2*
T0
v
training/Adam/mul_33MulAdam/beta_2/readtraining/Adam/Variable_14/read*
_output_shapes

:2*
T0
[
training/Adam/sub_21/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
f
training/Adam/sub_21Subtraining/Adam/sub_21/xAdam/beta_2/read*
_output_shapes
: *
T0

training/Adam/Square_6Square9training/Adam/gradients/output_layer/MatMul_grad/MatMul_1*
_output_shapes

:2*
T0
r
training/Adam/mul_34Multraining/Adam/sub_21training/Adam/Square_6*
_output_shapes

:2*
T0
p
training/Adam/add_20Addtraining/Adam/mul_33training/Adam/mul_34*
_output_shapes

:2*
T0
m
training/Adam/mul_35Multraining/Adam/multraining/Adam/add_19*
_output_shapes

:2*
T0
[
training/Adam/Const_14Const*
_output_shapes
: *
valueB
 *    *
dtype0
[
training/Adam/Const_15Const*
_output_shapes
: *
valueB
 *  *
dtype0

%training/Adam/clip_by_value_7/MinimumMinimumtraining/Adam/add_20training/Adam/Const_15*
_output_shapes

:2*
T0

training/Adam/clip_by_value_7Maximum%training/Adam/clip_by_value_7/Minimumtraining/Adam/Const_14*
_output_shapes

:2*
T0
d
training/Adam/Sqrt_7Sqrttraining/Adam/clip_by_value_7*
_output_shapes

:2*
T0
[
training/Adam/add_21/yConst*
_output_shapes
: *
valueB
 *Пж3*
dtype0
r
training/Adam/add_21Addtraining/Adam/Sqrt_7training/Adam/add_21/y*
_output_shapes

:2*
T0
w
training/Adam/truediv_7RealDivtraining/Adam/mul_35training/Adam/add_21*
_output_shapes

:2*
T0
w
training/Adam/sub_22Suboutput_layer/kernel/readtraining/Adam/truediv_7*
_output_shapes

:2*
T0
а
training/Adam/Assign_18Assigntraining/Adam/Variable_6training/Adam/add_19*
_output_shapes

:2*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_6*
T0
в
training/Adam/Assign_19Assigntraining/Adam/Variable_14training/Adam/add_20*
_output_shapes

:2*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_14*
T0
Ц
training/Adam/Assign_20Assignoutput_layer/kerneltraining/Adam/sub_22*
_output_shapes

:2*
validate_shape(*
use_locking(*&
_class
loc:@output_layer/kernel*
T0
q
training/Adam/mul_36MulAdam/beta_1/readtraining/Adam/Variable_7/read*
_output_shapes
:*
T0
[
training/Adam/sub_23/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
f
training/Adam/sub_23Subtraining/Adam/sub_23/xAdam/beta_1/read*
_output_shapes
: *
T0

training/Adam/mul_37Multraining/Adam/sub_23=training/Adam/gradients/output_layer/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
l
training/Adam/add_22Addtraining/Adam/mul_36training/Adam/mul_37*
_output_shapes
:*
T0
r
training/Adam/mul_38MulAdam/beta_2/readtraining/Adam/Variable_15/read*
_output_shapes
:*
T0
[
training/Adam/sub_24/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
f
training/Adam/sub_24Subtraining/Adam/sub_24/xAdam/beta_2/read*
_output_shapes
: *
T0

training/Adam/Square_7Square=training/Adam/gradients/output_layer/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
n
training/Adam/mul_39Multraining/Adam/sub_24training/Adam/Square_7*
_output_shapes
:*
T0
l
training/Adam/add_23Addtraining/Adam/mul_38training/Adam/mul_39*
_output_shapes
:*
T0
i
training/Adam/mul_40Multraining/Adam/multraining/Adam/add_22*
_output_shapes
:*
T0
[
training/Adam/Const_16Const*
_output_shapes
: *
valueB
 *    *
dtype0
[
training/Adam/Const_17Const*
_output_shapes
: *
valueB
 *  *
dtype0

%training/Adam/clip_by_value_8/MinimumMinimumtraining/Adam/add_23training/Adam/Const_17*
_output_shapes
:*
T0

training/Adam/clip_by_value_8Maximum%training/Adam/clip_by_value_8/Minimumtraining/Adam/Const_16*
_output_shapes
:*
T0
`
training/Adam/Sqrt_8Sqrttraining/Adam/clip_by_value_8*
_output_shapes
:*
T0
[
training/Adam/add_24/yConst*
_output_shapes
: *
valueB
 *Пж3*
dtype0
n
training/Adam/add_24Addtraining/Adam/Sqrt_8training/Adam/add_24/y*
_output_shapes
:*
T0
s
training/Adam/truediv_8RealDivtraining/Adam/mul_40training/Adam/add_24*
_output_shapes
:*
T0
q
training/Adam/sub_25Suboutput_layer/bias/readtraining/Adam/truediv_8*
_output_shapes
:*
T0
Ь
training/Adam/Assign_21Assigntraining/Adam/Variable_7training/Adam/add_22*
_output_shapes
:*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_7*
T0
Ю
training/Adam/Assign_22Assigntraining/Adam/Variable_15training/Adam/add_23*
_output_shapes
:*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_15*
T0
О
training/Adam/Assign_23Assignoutput_layer/biastraining/Adam/sub_25*
_output_shapes
:*
validate_shape(*
use_locking(*$
_class
loc:@output_layer/bias*
T0
Є
training/group_depsNoOp	^loss/mul^training/Adam/Assign^training/Adam/AssignAdd^training/Adam/Assign_1^training/Adam/Assign_10^training/Adam/Assign_11^training/Adam/Assign_12^training/Adam/Assign_13^training/Adam/Assign_14^training/Adam/Assign_15^training/Adam/Assign_16^training/Adam/Assign_17^training/Adam/Assign_18^training/Adam/Assign_19^training/Adam/Assign_2^training/Adam/Assign_20^training/Adam/Assign_21^training/Adam/Assign_22^training/Adam/Assign_23^training/Adam/Assign_3^training/Adam/Assign_4^training/Adam/Assign_5^training/Adam/Assign_6^training/Adam/Assign_7^training/Adam/Assign_8^training/Adam/Assign_9

IsVariableInitializedIsVariableInitializedlayer_1/kernel*
_output_shapes
: *!
_class
loc:@layer_1/kernel*
dtype0

IsVariableInitialized_1IsVariableInitializedlayer_1/bias*
_output_shapes
: *
_class
loc:@layer_1/bias*
dtype0

IsVariableInitialized_2IsVariableInitializedlayer_2/kernel*
_output_shapes
: *!
_class
loc:@layer_2/kernel*
dtype0

IsVariableInitialized_3IsVariableInitializedlayer_2/bias*
_output_shapes
: *
_class
loc:@layer_2/bias*
dtype0

IsVariableInitialized_4IsVariableInitializedlayer_3/kernel*
_output_shapes
: *!
_class
loc:@layer_3/kernel*
dtype0

IsVariableInitialized_5IsVariableInitializedlayer_3/bias*
_output_shapes
: *
_class
loc:@layer_3/bias*
dtype0

IsVariableInitialized_6IsVariableInitializedoutput_layer/kernel*
_output_shapes
: *&
_class
loc:@output_layer/kernel*
dtype0

IsVariableInitialized_7IsVariableInitializedoutput_layer/bias*
_output_shapes
: *$
_class
loc:@output_layer/bias*
dtype0

IsVariableInitialized_8IsVariableInitializedAdam/iterations*
_output_shapes
: *"
_class
loc:@Adam/iterations*
dtype0	
z
IsVariableInitialized_9IsVariableInitializedAdam/lr*
_output_shapes
: *
_class
loc:@Adam/lr*
dtype0

IsVariableInitialized_10IsVariableInitializedAdam/beta_1*
_output_shapes
: *
_class
loc:@Adam/beta_1*
dtype0

IsVariableInitialized_11IsVariableInitializedAdam/beta_2*
_output_shapes
: *
_class
loc:@Adam/beta_2*
dtype0

IsVariableInitialized_12IsVariableInitialized
Adam/decay*
_output_shapes
: *
_class
loc:@Adam/decay*
dtype0

IsVariableInitialized_13IsVariableInitializedtraining/Adam/Variable*
_output_shapes
: *)
_class
loc:@training/Adam/Variable*
dtype0

IsVariableInitialized_14IsVariableInitializedtraining/Adam/Variable_1*
_output_shapes
: *+
_class!
loc:@training/Adam/Variable_1*
dtype0

IsVariableInitialized_15IsVariableInitializedtraining/Adam/Variable_2*
_output_shapes
: *+
_class!
loc:@training/Adam/Variable_2*
dtype0

IsVariableInitialized_16IsVariableInitializedtraining/Adam/Variable_3*
_output_shapes
: *+
_class!
loc:@training/Adam/Variable_3*
dtype0

IsVariableInitialized_17IsVariableInitializedtraining/Adam/Variable_4*
_output_shapes
: *+
_class!
loc:@training/Adam/Variable_4*
dtype0

IsVariableInitialized_18IsVariableInitializedtraining/Adam/Variable_5*
_output_shapes
: *+
_class!
loc:@training/Adam/Variable_5*
dtype0

IsVariableInitialized_19IsVariableInitializedtraining/Adam/Variable_6*
_output_shapes
: *+
_class!
loc:@training/Adam/Variable_6*
dtype0

IsVariableInitialized_20IsVariableInitializedtraining/Adam/Variable_7*
_output_shapes
: *+
_class!
loc:@training/Adam/Variable_7*
dtype0

IsVariableInitialized_21IsVariableInitializedtraining/Adam/Variable_8*
_output_shapes
: *+
_class!
loc:@training/Adam/Variable_8*
dtype0

IsVariableInitialized_22IsVariableInitializedtraining/Adam/Variable_9*
_output_shapes
: *+
_class!
loc:@training/Adam/Variable_9*
dtype0

IsVariableInitialized_23IsVariableInitializedtraining/Adam/Variable_10*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_10*
dtype0

IsVariableInitialized_24IsVariableInitializedtraining/Adam/Variable_11*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_11*
dtype0

IsVariableInitialized_25IsVariableInitializedtraining/Adam/Variable_12*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_12*
dtype0

IsVariableInitialized_26IsVariableInitializedtraining/Adam/Variable_13*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_13*
dtype0

IsVariableInitialized_27IsVariableInitializedtraining/Adam/Variable_14*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_14*
dtype0

IsVariableInitialized_28IsVariableInitializedtraining/Adam/Variable_15*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_15*
dtype0

IsVariableInitialized_29IsVariableInitializedtraining/Adam/Variable_16*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_16*
dtype0

IsVariableInitialized_30IsVariableInitializedtraining/Adam/Variable_17*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_17*
dtype0

IsVariableInitialized_31IsVariableInitializedtraining/Adam/Variable_18*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_18*
dtype0

IsVariableInitialized_32IsVariableInitializedtraining/Adam/Variable_19*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_19*
dtype0

IsVariableInitialized_33IsVariableInitializedtraining/Adam/Variable_20*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_20*
dtype0

IsVariableInitialized_34IsVariableInitializedtraining/Adam/Variable_21*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_21*
dtype0

IsVariableInitialized_35IsVariableInitializedtraining/Adam/Variable_22*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_22*
dtype0

IsVariableInitialized_36IsVariableInitializedtraining/Adam/Variable_23*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_23*
dtype0
ђ
initNoOp^Adam/beta_1/Assign^Adam/beta_2/Assign^Adam/decay/Assign^Adam/iterations/Assign^Adam/lr/Assign^layer_1/bias/Assign^layer_1/kernel/Assign^layer_2/bias/Assign^layer_2/kernel/Assign^layer_3/bias/Assign^layer_3/kernel/Assign^output_layer/bias/Assign^output_layer/kernel/Assign^training/Adam/Variable/Assign ^training/Adam/Variable_1/Assign!^training/Adam/Variable_10/Assign!^training/Adam/Variable_11/Assign!^training/Adam/Variable_12/Assign!^training/Adam/Variable_13/Assign!^training/Adam/Variable_14/Assign!^training/Adam/Variable_15/Assign!^training/Adam/Variable_16/Assign!^training/Adam/Variable_17/Assign!^training/Adam/Variable_18/Assign!^training/Adam/Variable_19/Assign ^training/Adam/Variable_2/Assign!^training/Adam/Variable_20/Assign!^training/Adam/Variable_21/Assign!^training/Adam/Variable_22/Assign!^training/Adam/Variable_23/Assign ^training/Adam/Variable_3/Assign ^training/Adam/Variable_4/Assign ^training/Adam/Variable_5/Assign ^training/Adam/Variable_6/Assign ^training/Adam/Variable_7/Assign ^training/Adam/Variable_8/Assign ^training/Adam/Variable_9/Assign


group_depsNoOp	^loss/mul
P

save/ConstConst*
_output_shapes
: *
valueB Bmodel*
dtype0

save/StringJoin/inputs_1Const*
_output_shapes
: *<
value3B1 B+_temp_59cf105d651d4fdd81ed5b5f98d015de/part*
dtype0
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
k
save/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
Џ
save/SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*г
valueЩBЦ%BAdam/beta_1BAdam/beta_2B
Adam/decayBAdam/iterationsBAdam/lrBlayer_1/biasBlayer_1/kernelBlayer_2/biasBlayer_2/kernelBlayer_3/biasBlayer_3/kernelBoutput_layer/biasBoutput_layer/kernelBtraining/Adam/VariableBtraining/Adam/Variable_1Btraining/Adam/Variable_10Btraining/Adam/Variable_11Btraining/Adam/Variable_12Btraining/Adam/Variable_13Btraining/Adam/Variable_14Btraining/Adam/Variable_15Btraining/Adam/Variable_16Btraining/Adam/Variable_17Btraining/Adam/Variable_18Btraining/Adam/Variable_19Btraining/Adam/Variable_2Btraining/Adam/Variable_20Btraining/Adam/Variable_21Btraining/Adam/Variable_22Btraining/Adam/Variable_23Btraining/Adam/Variable_3Btraining/Adam/Variable_4Btraining/Adam/Variable_5Btraining/Adam/Variable_6Btraining/Adam/Variable_7Btraining/Adam/Variable_8Btraining/Adam/Variable_9*
dtype0
М
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
х
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesAdam/beta_1Adam/beta_2
Adam/decayAdam/iterationsAdam/lrlayer_1/biaslayer_1/kernellayer_2/biaslayer_2/kernellayer_3/biaslayer_3/kerneloutput_layer/biasoutput_layer/kerneltraining/Adam/Variabletraining/Adam/Variable_1training/Adam/Variable_10training/Adam/Variable_11training/Adam/Variable_12training/Adam/Variable_13training/Adam/Variable_14training/Adam/Variable_15training/Adam/Variable_16training/Adam/Variable_17training/Adam/Variable_18training/Adam/Variable_19training/Adam/Variable_2training/Adam/Variable_20training/Adam/Variable_21training/Adam/Variable_22training/Adam/Variable_23training/Adam/Variable_3training/Adam/Variable_4training/Adam/Variable_5training/Adam/Variable_6training/Adam/Variable_7training/Adam/Variable_8training/Adam/Variable_9"/device:CPU:0*3
dtypes)
'2%	
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
_output_shapes
: *'
_class
loc:@save/ShardedFilename*
T0
Ќ
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*

axis *
N*
_output_shapes
:*
T0

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
_output_shapes
: *
T0
В
save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*г
valueЩBЦ%BAdam/beta_1BAdam/beta_2B
Adam/decayBAdam/iterationsBAdam/lrBlayer_1/biasBlayer_1/kernelBlayer_2/biasBlayer_2/kernelBlayer_3/biasBlayer_3/kernelBoutput_layer/biasBoutput_layer/kernelBtraining/Adam/VariableBtraining/Adam/Variable_1Btraining/Adam/Variable_10Btraining/Adam/Variable_11Btraining/Adam/Variable_12Btraining/Adam/Variable_13Btraining/Adam/Variable_14Btraining/Adam/Variable_15Btraining/Adam/Variable_16Btraining/Adam/Variable_17Btraining/Adam/Variable_18Btraining/Adam/Variable_19Btraining/Adam/Variable_2Btraining/Adam/Variable_20Btraining/Adam/Variable_21Btraining/Adam/Variable_22Btraining/Adam/Variable_23Btraining/Adam/Variable_3Btraining/Adam/Variable_4Btraining/Adam/Variable_5Btraining/Adam/Variable_6Btraining/Adam/Variable_7Btraining/Adam/Variable_8Btraining/Adam/Variable_9*
dtype0
П
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
ж
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*Њ
_output_shapes
:::::::::::::::::::::::::::::::::::::*3
dtypes)
'2%	

save/AssignAssignAdam/beta_1save/RestoreV2*
_output_shapes
: *
validate_shape(*
use_locking(*
_class
loc:@Adam/beta_1*
T0
 
save/Assign_1AssignAdam/beta_2save/RestoreV2:1*
_output_shapes
: *
validate_shape(*
use_locking(*
_class
loc:@Adam/beta_2*
T0

save/Assign_2Assign
Adam/decaysave/RestoreV2:2*
_output_shapes
: *
validate_shape(*
use_locking(*
_class
loc:@Adam/decay*
T0
Ј
save/Assign_3AssignAdam/iterationssave/RestoreV2:3*
_output_shapes
: *
validate_shape(*
use_locking(*"
_class
loc:@Adam/iterations*
T0	

save/Assign_4AssignAdam/lrsave/RestoreV2:4*
_output_shapes
: *
validate_shape(*
use_locking(*
_class
loc:@Adam/lr*
T0
І
save/Assign_5Assignlayer_1/biassave/RestoreV2:5*
_output_shapes
:2*
validate_shape(*
use_locking(*
_class
loc:@layer_1/bias*
T0
Ў
save/Assign_6Assignlayer_1/kernelsave/RestoreV2:6*
_output_shapes

:	2*
validate_shape(*
use_locking(*!
_class
loc:@layer_1/kernel*
T0
І
save/Assign_7Assignlayer_2/biassave/RestoreV2:7*
_output_shapes
:d*
validate_shape(*
use_locking(*
_class
loc:@layer_2/bias*
T0
Ў
save/Assign_8Assignlayer_2/kernelsave/RestoreV2:8*
_output_shapes

:2d*
validate_shape(*
use_locking(*!
_class
loc:@layer_2/kernel*
T0
І
save/Assign_9Assignlayer_3/biassave/RestoreV2:9*
_output_shapes
:2*
validate_shape(*
use_locking(*
_class
loc:@layer_3/bias*
T0
А
save/Assign_10Assignlayer_3/kernelsave/RestoreV2:10*
_output_shapes

:d2*
validate_shape(*
use_locking(*!
_class
loc:@layer_3/kernel*
T0
В
save/Assign_11Assignoutput_layer/biassave/RestoreV2:11*
_output_shapes
:*
validate_shape(*
use_locking(*$
_class
loc:@output_layer/bias*
T0
К
save/Assign_12Assignoutput_layer/kernelsave/RestoreV2:12*
_output_shapes

:2*
validate_shape(*
use_locking(*&
_class
loc:@output_layer/kernel*
T0
Р
save/Assign_13Assigntraining/Adam/Variablesave/RestoreV2:13*
_output_shapes

:	2*
validate_shape(*
use_locking(*)
_class
loc:@training/Adam/Variable*
T0
Р
save/Assign_14Assigntraining/Adam/Variable_1save/RestoreV2:14*
_output_shapes
:2*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_1*
T0
Ц
save/Assign_15Assigntraining/Adam/Variable_10save/RestoreV2:15*
_output_shapes

:2d*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_10*
T0
Т
save/Assign_16Assigntraining/Adam/Variable_11save/RestoreV2:16*
_output_shapes
:d*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_11*
T0
Ц
save/Assign_17Assigntraining/Adam/Variable_12save/RestoreV2:17*
_output_shapes

:d2*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_12*
T0
Т
save/Assign_18Assigntraining/Adam/Variable_13save/RestoreV2:18*
_output_shapes
:2*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_13*
T0
Ц
save/Assign_19Assigntraining/Adam/Variable_14save/RestoreV2:19*
_output_shapes

:2*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_14*
T0
Т
save/Assign_20Assigntraining/Adam/Variable_15save/RestoreV2:20*
_output_shapes
:*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_15*
T0
Т
save/Assign_21Assigntraining/Adam/Variable_16save/RestoreV2:21*
_output_shapes
:*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_16*
T0
Т
save/Assign_22Assigntraining/Adam/Variable_17save/RestoreV2:22*
_output_shapes
:*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_17*
T0
Т
save/Assign_23Assigntraining/Adam/Variable_18save/RestoreV2:23*
_output_shapes
:*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_18*
T0
Т
save/Assign_24Assigntraining/Adam/Variable_19save/RestoreV2:24*
_output_shapes
:*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_19*
T0
Ф
save/Assign_25Assigntraining/Adam/Variable_2save/RestoreV2:25*
_output_shapes

:2d*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_2*
T0
Т
save/Assign_26Assigntraining/Adam/Variable_20save/RestoreV2:26*
_output_shapes
:*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_20*
T0
Т
save/Assign_27Assigntraining/Adam/Variable_21save/RestoreV2:27*
_output_shapes
:*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_21*
T0
Т
save/Assign_28Assigntraining/Adam/Variable_22save/RestoreV2:28*
_output_shapes
:*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_22*
T0
Т
save/Assign_29Assigntraining/Adam/Variable_23save/RestoreV2:29*
_output_shapes
:*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_23*
T0
Р
save/Assign_30Assigntraining/Adam/Variable_3save/RestoreV2:30*
_output_shapes
:d*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_3*
T0
Ф
save/Assign_31Assigntraining/Adam/Variable_4save/RestoreV2:31*
_output_shapes

:d2*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_4*
T0
Р
save/Assign_32Assigntraining/Adam/Variable_5save/RestoreV2:32*
_output_shapes
:2*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_5*
T0
Ф
save/Assign_33Assigntraining/Adam/Variable_6save/RestoreV2:33*
_output_shapes

:2*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_6*
T0
Р
save/Assign_34Assigntraining/Adam/Variable_7save/RestoreV2:34*
_output_shapes
:*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_7*
T0
Ф
save/Assign_35Assigntraining/Adam/Variable_8save/RestoreV2:35*
_output_shapes

:	2*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_8*
T0
Р
save/Assign_36Assigntraining/Adam/Variable_9save/RestoreV2:36*
_output_shapes
:2*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_9*
T0

save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"у 
trainable_variablesЫ Ш 
\
layer_1/kernel:0layer_1/kernel/Assignlayer_1/kernel/read:02layer_1/random_uniform:08
M
layer_1/bias:0layer_1/bias/Assignlayer_1/bias/read:02layer_1/Const:08
\
layer_2/kernel:0layer_2/kernel/Assignlayer_2/kernel/read:02layer_2/random_uniform:08
M
layer_2/bias:0layer_2/bias/Assignlayer_2/bias/read:02layer_2/Const:08
\
layer_3/kernel:0layer_3/kernel/Assignlayer_3/kernel/read:02layer_3/random_uniform:08
M
layer_3/bias:0layer_3/bias/Assignlayer_3/bias/read:02layer_3/Const:08
p
output_layer/kernel:0output_layer/kernel/Assignoutput_layer/kernel/read:02output_layer/random_uniform:08
a
output_layer/bias:0output_layer/bias/Assignoutput_layer/bias/read:02output_layer/Const:08
f
Adam/iterations:0Adam/iterations/AssignAdam/iterations/read:02Adam/iterations/initial_value:08
F
	Adam/lr:0Adam/lr/AssignAdam/lr/read:02Adam/lr/initial_value:08
V
Adam/beta_1:0Adam/beta_1/AssignAdam/beta_1/read:02Adam/beta_1/initial_value:08
V
Adam/beta_2:0Adam/beta_2/AssignAdam/beta_2/read:02Adam/beta_2/initial_value:08
R
Adam/decay:0Adam/decay/AssignAdam/decay/read:02Adam/decay/initial_value:08
q
training/Adam/Variable:0training/Adam/Variable/Assigntraining/Adam/Variable/read:02training/Adam/zeros:08
y
training/Adam/Variable_1:0training/Adam/Variable_1/Assigntraining/Adam/Variable_1/read:02training/Adam/zeros_1:08
y
training/Adam/Variable_2:0training/Adam/Variable_2/Assigntraining/Adam/Variable_2/read:02training/Adam/zeros_2:08
y
training/Adam/Variable_3:0training/Adam/Variable_3/Assigntraining/Adam/Variable_3/read:02training/Adam/zeros_3:08
y
training/Adam/Variable_4:0training/Adam/Variable_4/Assigntraining/Adam/Variable_4/read:02training/Adam/zeros_4:08
y
training/Adam/Variable_5:0training/Adam/Variable_5/Assigntraining/Adam/Variable_5/read:02training/Adam/zeros_5:08
y
training/Adam/Variable_6:0training/Adam/Variable_6/Assigntraining/Adam/Variable_6/read:02training/Adam/zeros_6:08
y
training/Adam/Variable_7:0training/Adam/Variable_7/Assigntraining/Adam/Variable_7/read:02training/Adam/zeros_7:08
y
training/Adam/Variable_8:0training/Adam/Variable_8/Assigntraining/Adam/Variable_8/read:02training/Adam/zeros_8:08
y
training/Adam/Variable_9:0training/Adam/Variable_9/Assigntraining/Adam/Variable_9/read:02training/Adam/zeros_9:08
}
training/Adam/Variable_10:0 training/Adam/Variable_10/Assign training/Adam/Variable_10/read:02training/Adam/zeros_10:08
}
training/Adam/Variable_11:0 training/Adam/Variable_11/Assign training/Adam/Variable_11/read:02training/Adam/zeros_11:08
}
training/Adam/Variable_12:0 training/Adam/Variable_12/Assign training/Adam/Variable_12/read:02training/Adam/zeros_12:08
}
training/Adam/Variable_13:0 training/Adam/Variable_13/Assign training/Adam/Variable_13/read:02training/Adam/zeros_13:08
}
training/Adam/Variable_14:0 training/Adam/Variable_14/Assign training/Adam/Variable_14/read:02training/Adam/zeros_14:08
}
training/Adam/Variable_15:0 training/Adam/Variable_15/Assign training/Adam/Variable_15/read:02training/Adam/zeros_15:08
}
training/Adam/Variable_16:0 training/Adam/Variable_16/Assign training/Adam/Variable_16/read:02training/Adam/zeros_16:08
}
training/Adam/Variable_17:0 training/Adam/Variable_17/Assign training/Adam/Variable_17/read:02training/Adam/zeros_17:08
}
training/Adam/Variable_18:0 training/Adam/Variable_18/Assign training/Adam/Variable_18/read:02training/Adam/zeros_18:08
}
training/Adam/Variable_19:0 training/Adam/Variable_19/Assign training/Adam/Variable_19/read:02training/Adam/zeros_19:08
}
training/Adam/Variable_20:0 training/Adam/Variable_20/Assign training/Adam/Variable_20/read:02training/Adam/zeros_20:08
}
training/Adam/Variable_21:0 training/Adam/Variable_21/Assign training/Adam/Variable_21/read:02training/Adam/zeros_21:08
}
training/Adam/Variable_22:0 training/Adam/Variable_22/Assign training/Adam/Variable_22/read:02training/Adam/zeros_22:08
}
training/Adam/Variable_23:0 training/Adam/Variable_23/Assign training/Adam/Variable_23/read:02training/Adam/zeros_23:08"й 
	variablesЫ Ш 
\
layer_1/kernel:0layer_1/kernel/Assignlayer_1/kernel/read:02layer_1/random_uniform:08
M
layer_1/bias:0layer_1/bias/Assignlayer_1/bias/read:02layer_1/Const:08
\
layer_2/kernel:0layer_2/kernel/Assignlayer_2/kernel/read:02layer_2/random_uniform:08
M
layer_2/bias:0layer_2/bias/Assignlayer_2/bias/read:02layer_2/Const:08
\
layer_3/kernel:0layer_3/kernel/Assignlayer_3/kernel/read:02layer_3/random_uniform:08
M
layer_3/bias:0layer_3/bias/Assignlayer_3/bias/read:02layer_3/Const:08
p
output_layer/kernel:0output_layer/kernel/Assignoutput_layer/kernel/read:02output_layer/random_uniform:08
a
output_layer/bias:0output_layer/bias/Assignoutput_layer/bias/read:02output_layer/Const:08
f
Adam/iterations:0Adam/iterations/AssignAdam/iterations/read:02Adam/iterations/initial_value:08
F
	Adam/lr:0Adam/lr/AssignAdam/lr/read:02Adam/lr/initial_value:08
V
Adam/beta_1:0Adam/beta_1/AssignAdam/beta_1/read:02Adam/beta_1/initial_value:08
V
Adam/beta_2:0Adam/beta_2/AssignAdam/beta_2/read:02Adam/beta_2/initial_value:08
R
Adam/decay:0Adam/decay/AssignAdam/decay/read:02Adam/decay/initial_value:08
q
training/Adam/Variable:0training/Adam/Variable/Assigntraining/Adam/Variable/read:02training/Adam/zeros:08
y
training/Adam/Variable_1:0training/Adam/Variable_1/Assigntraining/Adam/Variable_1/read:02training/Adam/zeros_1:08
y
training/Adam/Variable_2:0training/Adam/Variable_2/Assigntraining/Adam/Variable_2/read:02training/Adam/zeros_2:08
y
training/Adam/Variable_3:0training/Adam/Variable_3/Assigntraining/Adam/Variable_3/read:02training/Adam/zeros_3:08
y
training/Adam/Variable_4:0training/Adam/Variable_4/Assigntraining/Adam/Variable_4/read:02training/Adam/zeros_4:08
y
training/Adam/Variable_5:0training/Adam/Variable_5/Assigntraining/Adam/Variable_5/read:02training/Adam/zeros_5:08
y
training/Adam/Variable_6:0training/Adam/Variable_6/Assigntraining/Adam/Variable_6/read:02training/Adam/zeros_6:08
y
training/Adam/Variable_7:0training/Adam/Variable_7/Assigntraining/Adam/Variable_7/read:02training/Adam/zeros_7:08
y
training/Adam/Variable_8:0training/Adam/Variable_8/Assigntraining/Adam/Variable_8/read:02training/Adam/zeros_8:08
y
training/Adam/Variable_9:0training/Adam/Variable_9/Assigntraining/Adam/Variable_9/read:02training/Adam/zeros_9:08
}
training/Adam/Variable_10:0 training/Adam/Variable_10/Assign training/Adam/Variable_10/read:02training/Adam/zeros_10:08
}
training/Adam/Variable_11:0 training/Adam/Variable_11/Assign training/Adam/Variable_11/read:02training/Adam/zeros_11:08
}
training/Adam/Variable_12:0 training/Adam/Variable_12/Assign training/Adam/Variable_12/read:02training/Adam/zeros_12:08
}
training/Adam/Variable_13:0 training/Adam/Variable_13/Assign training/Adam/Variable_13/read:02training/Adam/zeros_13:08
}
training/Adam/Variable_14:0 training/Adam/Variable_14/Assign training/Adam/Variable_14/read:02training/Adam/zeros_14:08
}
training/Adam/Variable_15:0 training/Adam/Variable_15/Assign training/Adam/Variable_15/read:02training/Adam/zeros_15:08
}
training/Adam/Variable_16:0 training/Adam/Variable_16/Assign training/Adam/Variable_16/read:02training/Adam/zeros_16:08
}
training/Adam/Variable_17:0 training/Adam/Variable_17/Assign training/Adam/Variable_17/read:02training/Adam/zeros_17:08
}
training/Adam/Variable_18:0 training/Adam/Variable_18/Assign training/Adam/Variable_18/read:02training/Adam/zeros_18:08
}
training/Adam/Variable_19:0 training/Adam/Variable_19/Assign training/Adam/Variable_19/read:02training/Adam/zeros_19:08
}
training/Adam/Variable_20:0 training/Adam/Variable_20/Assign training/Adam/Variable_20/read:02training/Adam/zeros_20:08
}
training/Adam/Variable_21:0 training/Adam/Variable_21/Assign training/Adam/Variable_21/read:02training/Adam/zeros_21:08
}
training/Adam/Variable_22:0 training/Adam/Variable_22/Assign training/Adam/Variable_22/read:02training/Adam/zeros_22:08
}
training/Adam/Variable_23:0 training/Adam/Variable_23/Assign training/Adam/Variable_23/read:02training/Adam/zeros_23:08*
serving_default
/
input&
layer_1_input:0џџџџџџџџџ	9
earnings-
output_layer/BiasAdd:0џџџџџџџџџtensorflow/serving/predict