??

?>?>
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	??
A
AddV2
x"T
y"T
z"T"
Ttype:
2	??
?
	ApplyAdam
var"T?	
m"T?	
v"T?
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T?" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
?
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"T?

value"T

output_ref"T?"	
Ttype"
validate_shapebool("
use_lockingbool(?
s
	AssignAdd
ref"T?

value"T

output_ref"T?" 
Ttype:
2	"
use_lockingbool( 
s
	AssignSub
ref"T?

value"T

output_ref"T?" 
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
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
I
ConcatOffset

concat_dim
shape*N
offset*N"
Nint(0
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
?
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

h
Equal
x"T
y"T
z
"
Ttype:
2	
"$
incompatible_shape_errorbool(?
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
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
?
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
V
HistogramSummary
tag
values"T
summary"
Ttype0:
2	
.
Identity

input"T
output"T"	
Ttype
2
L2Loss
t"T
output"T"
Ttype:
2
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
?

LogSoftmax
logits"T

logsoftmax"T"
Ttype:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
?
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2	
8
Maximum
x"T
y"T
z"T"
Ttype:

2	
?
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
8
MergeSummary
inputs*N
summary"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
=
Mul
x"T
y"T
z"T"
Ttype:
2	?
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
k
NotEqual
x"T
y"T
z
"
Ttype:
2	
"$
incompatible_shape_errorbool(?
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
?
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
2	?
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
?

ScatterAdd
ref"T?
indices"Tindices
updates"T

output_ref"T?" 
Ttype:
2	"
Tindicestype:
2	"
use_lockingbool( 
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
j
SoftmaxCrossEntropyWithLogits
features"T
labels"T	
loss"T
backprop"T"
Ttype:
2
-
Sqrt
x"T
y"T"
Ttype:

2
2
StopGradient

input"T
output"T"	
Ttype
?
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
:
Sub
x"T
y"T
z"T"
Ttype:
2	
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
?
TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
?
UnsortedSegmentSum	
data"T
segment_ids"Tindices
num_segments"Tnumsegments
output"T" 
Ttype:
2	"
Tindicestype:
2	" 
Tnumsegmentstype0:
2	
s

VariableV2
ref"dtype?"
shapeshape"
dtypetype"
	containerstring "
shared_namestring ?
&
	ZerosLike
x"T
y"T"	
Ttype"train"serve*2.0.02v2.0.0-rc2-26-g64c3d382ca8??
l
input_xPlaceholder*(
_output_shapes
:??????????*
shape:??????????*
dtype0
l
input_yPlaceholder*(
_output_shapes
:??????????*
dtype0*
shape:??????????
G
dropout_keep_probPlaceholder*
dtype0*
_output_shapes
:
J
ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
~
embedding/random_uniform/shapeConst"/device:GPU:0*
valueB"#?  ,  *
dtype0*
_output_shapes
:
p
embedding/random_uniform/minConst"/device:GPU:0*
_output_shapes
: *
valueB
 *  ??*
dtype0
p
embedding/random_uniform/maxConst"/device:GPU:0*
dtype0*
valueB
 *  ??*
_output_shapes
: 
?
&embedding/random_uniform/RandomUniformRandomUniformembedding/random_uniform/shape"/device:GPU:0*
T0*!
_output_shapes
:???*
dtype0
?
embedding/random_uniform/subSubembedding/random_uniform/maxembedding/random_uniform/min"/device:GPU:0*
_output_shapes
: *
T0
?
embedding/random_uniform/mulMul&embedding/random_uniform/RandomUniformembedding/random_uniform/sub"/device:GPU:0*!
_output_shapes
:???*
T0
?
embedding/random_uniformAddembedding/random_uniform/mulembedding/random_uniform/min"/device:GPU:0*!
_output_shapes
:???*
T0
p
embedding/W
VariableV2"/device:GPU:0*
dtype0*
shape:???*!
_output_shapes
:???
?
embedding/W/AssignAssignembedding/Wembedding/random_uniform"/device:GPU:0*
_class
loc:@embedding/W*!
_output_shapes
:???*
T0
?
embedding/W/readIdentityembedding/W"/device:GPU:0*!
_output_shapes
:???*
T0*
_class
loc:@embedding/W
?
embedding/embedding_lookup/axisConst"/device:GPU:0*
dtype0*
value	B : *
_output_shapes
: *
_class
loc:@embedding/W
?
embedding/embedding_lookupGatherV2embedding/W/readinput_xembedding/embedding_lookup/axis"/device:GPU:0*
Tparams0*
_class
loc:@embedding/W*
Tindices0*-
_output_shapes
:???????????*
Taxis0
?
#embedding/embedding_lookup/IdentityIdentityembedding/embedding_lookup"/device:GPU:0*
T0*-
_output_shapes
:???????????
r
embedding/ExpandDims/dimConst"/device:GPU:0*
_output_shapes
: *
dtype0*
valueB :
?????????
?
embedding/ExpandDims
ExpandDims#embedding/embedding_lookup/Identityembedding/ExpandDims/dim"/device:GPU:0*
T0*1
_output_shapes
:???????????
~
%conv-maxpool-3/truncated_normal/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ,     ?   
i
$conv-maxpool-3/truncated_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    
k
&conv-maxpool-3/truncated_normal/stddevConst*
valueB
 *???=*
dtype0*
_output_shapes
: 
?
/conv-maxpool-3/truncated_normal/TruncatedNormalTruncatedNormal%conv-maxpool-3/truncated_normal/shape*
dtype0*(
_output_shapes
:??*
T0
?
#conv-maxpool-3/truncated_normal/mulMul/conv-maxpool-3/truncated_normal/TruncatedNormal&conv-maxpool-3/truncated_normal/stddev*
T0*(
_output_shapes
:??
?
conv-maxpool-3/truncated_normalAdd#conv-maxpool-3/truncated_normal/mul$conv-maxpool-3/truncated_normal/mean*
T0*(
_output_shapes
:??
t
conv-maxpool-3/W
VariableV2*(
_output_shapes
:??*
shape:??*
dtype0
?
conv-maxpool-3/W/AssignAssignconv-maxpool-3/Wconv-maxpool-3/truncated_normal*(
_output_shapes
:??*#
_class
loc:@conv-maxpool-3/W*
T0
?
conv-maxpool-3/W/readIdentityconv-maxpool-3/W*(
_output_shapes
:??*
T0*#
_class
loc:@conv-maxpool-3/W
c
conv-maxpool-3/ConstConst*
_output_shapes	
:?*
valueB?*???=*
dtype0
Z
conv-maxpool-3/b
VariableV2*
dtype0*
shape:?*
_output_shapes	
:?
?
conv-maxpool-3/b/AssignAssignconv-maxpool-3/bconv-maxpool-3/Const*
_output_shapes	
:?*
T0*#
_class
loc:@conv-maxpool-3/b
~
conv-maxpool-3/b/readIdentityconv-maxpool-3/b*#
_class
loc:@conv-maxpool-3/b*
_output_shapes	
:?*
T0
?
conv-maxpool-3/convConv2Dembedding/ExpandDimsconv-maxpool-3/W/read*1
_output_shapes
:???????????*
paddingVALID*
strides
*
T0
?
conv-maxpool-3/BiasAddBiasAddconv-maxpool-3/convconv-maxpool-3/b/read*
T0*1
_output_shapes
:???????????
o
conv-maxpool-3/reluReluconv-maxpool-3/BiasAdd*
T0*1
_output_shapes
:???????????
?
conv-maxpool-3/poolMaxPoolconv-maxpool-3/relu*
strides
*
paddingVALID*0
_output_shapes
:??????????*
ksize	
?
~
%conv-maxpool-4/truncated_normal/shapeConst*%
valueB"   ,     ?   *
_output_shapes
:*
dtype0
i
$conv-maxpool-4/truncated_normal/meanConst*
dtype0*
valueB
 *    *
_output_shapes
: 
k
&conv-maxpool-4/truncated_normal/stddevConst*
valueB
 *???=*
_output_shapes
: *
dtype0
?
/conv-maxpool-4/truncated_normal/TruncatedNormalTruncatedNormal%conv-maxpool-4/truncated_normal/shape*
T0*(
_output_shapes
:??*
dtype0
?
#conv-maxpool-4/truncated_normal/mulMul/conv-maxpool-4/truncated_normal/TruncatedNormal&conv-maxpool-4/truncated_normal/stddev*
T0*(
_output_shapes
:??
?
conv-maxpool-4/truncated_normalAdd#conv-maxpool-4/truncated_normal/mul$conv-maxpool-4/truncated_normal/mean*
T0*(
_output_shapes
:??
t
conv-maxpool-4/W
VariableV2*
shape:??*
dtype0*(
_output_shapes
:??
?
conv-maxpool-4/W/AssignAssignconv-maxpool-4/Wconv-maxpool-4/truncated_normal*#
_class
loc:@conv-maxpool-4/W*(
_output_shapes
:??*
T0
?
conv-maxpool-4/W/readIdentityconv-maxpool-4/W*#
_class
loc:@conv-maxpool-4/W*(
_output_shapes
:??*
T0
c
conv-maxpool-4/ConstConst*
dtype0*
valueB?*???=*
_output_shapes	
:?
Z
conv-maxpool-4/b
VariableV2*
shape:?*
_output_shapes	
:?*
dtype0
?
conv-maxpool-4/b/AssignAssignconv-maxpool-4/bconv-maxpool-4/Const*
_output_shapes	
:?*
T0*#
_class
loc:@conv-maxpool-4/b
~
conv-maxpool-4/b/readIdentityconv-maxpool-4/b*
T0*
_output_shapes	
:?*#
_class
loc:@conv-maxpool-4/b
?
conv-maxpool-4/convConv2Dembedding/ExpandDimsconv-maxpool-4/W/read*
strides
*1
_output_shapes
:???????????*
T0*
paddingVALID
?
conv-maxpool-4/BiasAddBiasAddconv-maxpool-4/convconv-maxpool-4/b/read*1
_output_shapes
:???????????*
T0
o
conv-maxpool-4/reluReluconv-maxpool-4/BiasAdd*1
_output_shapes
:???????????*
T0
?
conv-maxpool-4/poolMaxPoolconv-maxpool-4/relu*
paddingVALID*
ksize	
?*
strides
*0
_output_shapes
:??????????
~
%conv-maxpool-5/truncated_normal/shapeConst*%
valueB"   ,     ?   *
_output_shapes
:*
dtype0
i
$conv-maxpool-5/truncated_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
k
&conv-maxpool-5/truncated_normal/stddevConst*
dtype0*
valueB
 *???=*
_output_shapes
: 
?
/conv-maxpool-5/truncated_normal/TruncatedNormalTruncatedNormal%conv-maxpool-5/truncated_normal/shape*(
_output_shapes
:??*
T0*
dtype0
?
#conv-maxpool-5/truncated_normal/mulMul/conv-maxpool-5/truncated_normal/TruncatedNormal&conv-maxpool-5/truncated_normal/stddev*
T0*(
_output_shapes
:??
?
conv-maxpool-5/truncated_normalAdd#conv-maxpool-5/truncated_normal/mul$conv-maxpool-5/truncated_normal/mean*(
_output_shapes
:??*
T0
t
conv-maxpool-5/W
VariableV2*
shape:??*
dtype0*(
_output_shapes
:??
?
conv-maxpool-5/W/AssignAssignconv-maxpool-5/Wconv-maxpool-5/truncated_normal*(
_output_shapes
:??*
T0*#
_class
loc:@conv-maxpool-5/W
?
conv-maxpool-5/W/readIdentityconv-maxpool-5/W*#
_class
loc:@conv-maxpool-5/W*(
_output_shapes
:??*
T0
c
conv-maxpool-5/ConstConst*
valueB?*???=*
_output_shapes	
:?*
dtype0
Z
conv-maxpool-5/b
VariableV2*
dtype0*
shape:?*
_output_shapes	
:?
?
conv-maxpool-5/b/AssignAssignconv-maxpool-5/bconv-maxpool-5/Const*#
_class
loc:@conv-maxpool-5/b*
T0*
_output_shapes	
:?
~
conv-maxpool-5/b/readIdentityconv-maxpool-5/b*
_output_shapes	
:?*#
_class
loc:@conv-maxpool-5/b*
T0
?
conv-maxpool-5/convConv2Dembedding/ExpandDimsconv-maxpool-5/W/read*
paddingVALID*
T0*1
_output_shapes
:???????????*
strides

?
conv-maxpool-5/BiasAddBiasAddconv-maxpool-5/convconv-maxpool-5/b/read*1
_output_shapes
:???????????*
T0
o
conv-maxpool-5/reluReluconv-maxpool-5/BiasAdd*1
_output_shapes
:???????????*
T0
?
conv-maxpool-5/poolMaxPoolconv-maxpool-5/relu*
strides
*
paddingVALID*0
_output_shapes
:??????????*
ksize	
?
M
concat/axisConst*
dtype0*
value	B :*
_output_shapes
: 
?
concatConcatV2conv-maxpool-3/poolconv-maxpool-4/poolconv-maxpool-5/poolconcat/axis*
T0*0
_output_shapes
:??????????*
N
^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  
\
ReshapeReshapeconcatReshape/shape*
T0*(
_output_shapes
:??????????
R
dropout/sub/xConst*
dtype0*
valueB
 *  ??*
_output_shapes
: 
W
dropout/subSubdropout/sub/xdropout_keep_prob*
T0*
_output_shapes
:
L
dropout/dropout/ShapeShapeReshape*
T0*
_output_shapes
:
g
"dropout/dropout/random_uniform/minConst*
dtype0*
valueB
 *    *
_output_shapes
: 
g
"dropout/dropout/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape*
dtype0*(
_output_shapes
:??????????*
T0
?
"dropout/dropout/random_uniform/subSub"dropout/dropout/random_uniform/max"dropout/dropout/random_uniform/min*
T0*
_output_shapes
: 
?
"dropout/dropout/random_uniform/mulMul,dropout/dropout/random_uniform/RandomUniform"dropout/dropout/random_uniform/sub*
T0*(
_output_shapes
:??????????
?
dropout/dropout/random_uniformAdd"dropout/dropout/random_uniform/mul"dropout/dropout/random_uniform/min*(
_output_shapes
:??????????*
T0
Z
dropout/dropout/sub/xConst*
valueB
 *  ??*
_output_shapes
: *
dtype0
a
dropout/dropout/subSubdropout/dropout/sub/xdropout/sub*
T0*
_output_shapes
:
^
dropout/dropout/truediv/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ??
u
dropout/dropout/truedivRealDivdropout/dropout/truediv/xdropout/dropout/sub*
_output_shapes
:*
T0
|
dropout/dropout/GreaterEqualGreaterEqualdropout/dropout/random_uniformdropout/sub*
T0*
_output_shapes
:
_
dropout/dropout/mulMulReshapedropout/dropout/truediv*
_output_shapes
:*
T0
l
dropout/dropout/CastCastdropout/dropout/GreaterEqual*

SrcT0
*

DstT0*
_output_shapes
:
z
dropout/dropout/mul_1Muldropout/dropout/muldropout/dropout/Cast*
T0*(
_output_shapes
:??????????
?
"W/Initializer/random_uniform/shapeConst*
dtype0*
valueB"?  ?   *
_output_shapes
:*
_class

loc:@W
{
 W/Initializer/random_uniform/minConst*
valueB
 *n?ܽ*
dtype0*
_class

loc:@W*
_output_shapes
: 
{
 W/Initializer/random_uniform/maxConst*
_output_shapes
: *
valueB
 *n??=*
_class

loc:@W*
dtype0
?
*W/Initializer/random_uniform/RandomUniformRandomUniform"W/Initializer/random_uniform/shape*
_class

loc:@W* 
_output_shapes
:
??*
T0*
dtype0
?
 W/Initializer/random_uniform/subSub W/Initializer/random_uniform/max W/Initializer/random_uniform/min*
_output_shapes
: *
_class

loc:@W*
T0
?
 W/Initializer/random_uniform/mulMul*W/Initializer/random_uniform/RandomUniform W/Initializer/random_uniform/sub*
T0* 
_output_shapes
:
??*
_class

loc:@W
?
W/Initializer/random_uniformAdd W/Initializer/random_uniform/mul W/Initializer/random_uniform/min*
_class

loc:@W*
T0* 
_output_shapes
:
??
k
W
VariableV2*
dtype0*
shape:
??* 
_output_shapes
:
??*
_class

loc:@W
t
W/AssignAssignWW/Initializer/random_uniform* 
_output_shapes
:
??*
_class

loc:@W*
T0
V
W/readIdentityW*
_class

loc:@W* 
_output_shapes
:
??*
T0
[
output/ConstConst*
valueB?*???=*
dtype0*
_output_shapes	
:?
R
output/b
VariableV2*
_output_shapes	
:?*
dtype0*
shape:?
t
output/b/AssignAssignoutput/boutput/Const*
_output_shapes	
:?*
_class
loc:@output/b*
T0
f
output/b/readIdentityoutput/b*
_output_shapes	
:?*
_class
loc:@output/b*
T0
@
output/L2LossL2LossW/read*
_output_shapes
: *
T0
J

output/addAddV2Constoutput/L2Loss*
_output_shapes
: *
T0
I
output/L2Loss_1L2Lossoutput/b/read*
T0*
_output_shapes
: 
S
output/add_1AddV2
output/addoutput/L2Loss_1*
T0*
_output_shapes
: 
p
output/scores/MatMulMatMuldropout/dropout/mul_1W/read*
T0*(
_output_shapes
:??????????
p
output/scoresBiasAddoutput/scores/MatMuloutput/b/read*(
_output_shapes
:??????????*
T0
^
output/predictions/dimensionConst*
_output_shapes
: *
dtype0*
value	B :
w
output/predictionsArgMaxoutput/scoresoutput/predictions/dimension*#
_output_shapes
:?????????*
T0
?
>loss/softmax_cross_entropy_with_logits_sg/labels_stop_gradientStopGradientinput_y*(
_output_shapes
:??????????*
T0
p
.loss/softmax_cross_entropy_with_logits_sg/RankConst*
dtype0*
_output_shapes
: *
value	B :
l
/loss/softmax_cross_entropy_with_logits_sg/ShapeShapeoutput/scores*
_output_shapes
:*
T0
r
0loss/softmax_cross_entropy_with_logits_sg/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
n
1loss/softmax_cross_entropy_with_logits_sg/Shape_1Shapeoutput/scores*
T0*
_output_shapes
:
q
/loss/softmax_cross_entropy_with_logits_sg/Sub/yConst*
_output_shapes
: *
dtype0*
value	B :
?
-loss/softmax_cross_entropy_with_logits_sg/SubSub0loss/softmax_cross_entropy_with_logits_sg/Rank_1/loss/softmax_cross_entropy_with_logits_sg/Sub/y*
T0*
_output_shapes
: 
?
5loss/softmax_cross_entropy_with_logits_sg/Slice/beginPack-loss/softmax_cross_entropy_with_logits_sg/Sub*
N*
_output_shapes
:*
T0
~
4loss/softmax_cross_entropy_with_logits_sg/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
?
/loss/softmax_cross_entropy_with_logits_sg/SliceSlice1loss/softmax_cross_entropy_with_logits_sg/Shape_15loss/softmax_cross_entropy_with_logits_sg/Slice/begin4loss/softmax_cross_entropy_with_logits_sg/Slice/size*
T0*
Index0*
_output_shapes
:
?
9loss/softmax_cross_entropy_with_logits_sg/concat/values_0Const*
dtype0*
_output_shapes
:*
valueB:
?????????
w
5loss/softmax_cross_entropy_with_logits_sg/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
?
0loss/softmax_cross_entropy_with_logits_sg/concatConcatV29loss/softmax_cross_entropy_with_logits_sg/concat/values_0/loss/softmax_cross_entropy_with_logits_sg/Slice5loss/softmax_cross_entropy_with_logits_sg/concat/axis*
_output_shapes
:*
N*
T0
?
1loss/softmax_cross_entropy_with_logits_sg/ReshapeReshapeoutput/scores0loss/softmax_cross_entropy_with_logits_sg/concat*
T0*0
_output_shapes
:??????????????????
r
0loss/softmax_cross_entropy_with_logits_sg/Rank_2Const*
value	B :*
_output_shapes
: *
dtype0
?
1loss/softmax_cross_entropy_with_logits_sg/Shape_2Shape>loss/softmax_cross_entropy_with_logits_sg/labels_stop_gradient*
_output_shapes
:*
T0
s
1loss/softmax_cross_entropy_with_logits_sg/Sub_1/yConst*
dtype0*
_output_shapes
: *
value	B :
?
/loss/softmax_cross_entropy_with_logits_sg/Sub_1Sub0loss/softmax_cross_entropy_with_logits_sg/Rank_21loss/softmax_cross_entropy_with_logits_sg/Sub_1/y*
T0*
_output_shapes
: 
?
7loss/softmax_cross_entropy_with_logits_sg/Slice_1/beginPack/loss/softmax_cross_entropy_with_logits_sg/Sub_1*
N*
T0*
_output_shapes
:
?
6loss/softmax_cross_entropy_with_logits_sg/Slice_1/sizeConst*
_output_shapes
:*
valueB:*
dtype0
?
1loss/softmax_cross_entropy_with_logits_sg/Slice_1Slice1loss/softmax_cross_entropy_with_logits_sg/Shape_27loss/softmax_cross_entropy_with_logits_sg/Slice_1/begin6loss/softmax_cross_entropy_with_logits_sg/Slice_1/size*
Index0*
T0*
_output_shapes
:
?
;loss/softmax_cross_entropy_with_logits_sg/concat_1/values_0Const*
_output_shapes
:*
dtype0*
valueB:
?????????
y
7loss/softmax_cross_entropy_with_logits_sg/concat_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
?
2loss/softmax_cross_entropy_with_logits_sg/concat_1ConcatV2;loss/softmax_cross_entropy_with_logits_sg/concat_1/values_01loss/softmax_cross_entropy_with_logits_sg/Slice_17loss/softmax_cross_entropy_with_logits_sg/concat_1/axis*
_output_shapes
:*
N*
T0
?
3loss/softmax_cross_entropy_with_logits_sg/Reshape_1Reshape>loss/softmax_cross_entropy_with_logits_sg/labels_stop_gradient2loss/softmax_cross_entropy_with_logits_sg/concat_1*0
_output_shapes
:??????????????????*
T0
?
)loss/softmax_cross_entropy_with_logits_sgSoftmaxCrossEntropyWithLogits1loss/softmax_cross_entropy_with_logits_sg/Reshape3loss/softmax_cross_entropy_with_logits_sg/Reshape_1*
T0*?
_output_shapes-
+:?????????:??????????????????
s
1loss/softmax_cross_entropy_with_logits_sg/Sub_2/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
/loss/softmax_cross_entropy_with_logits_sg/Sub_2Sub.loss/softmax_cross_entropy_with_logits_sg/Rank1loss/softmax_cross_entropy_with_logits_sg/Sub_2/y*
T0*
_output_shapes
: 
?
7loss/softmax_cross_entropy_with_logits_sg/Slice_2/beginConst*
_output_shapes
:*
valueB: *
dtype0
?
6loss/softmax_cross_entropy_with_logits_sg/Slice_2/sizePack/loss/softmax_cross_entropy_with_logits_sg/Sub_2*
T0*
_output_shapes
:*
N
?
1loss/softmax_cross_entropy_with_logits_sg/Slice_2Slice/loss/softmax_cross_entropy_with_logits_sg/Shape7loss/softmax_cross_entropy_with_logits_sg/Slice_2/begin6loss/softmax_cross_entropy_with_logits_sg/Slice_2/size*
T0*
_output_shapes
:*
Index0
?
3loss/softmax_cross_entropy_with_logits_sg/Reshape_2Reshape)loss/softmax_cross_entropy_with_logits_sg1loss/softmax_cross_entropy_with_logits_sg/Slice_2*#
_output_shapes
:?????????*
T0
T

loss/ConstConst*
_output_shapes
:*
valueB: *
dtype0
s
	loss/MeanMean3loss/softmax_cross_entropy_with_logits_sg/Reshape_2
loss/Const*
_output_shapes
: *
T0
O

loss/mul/xConst*
dtype0*
_output_shapes
: *
valueB
 *???=
J
loss/mulMul
loss/mul/xoutput/add_1*
T0*
_output_shapes
: 
G
loss/addAddV2	loss/Meanloss/mul*
T0*
_output_shapes
: 
[
accuracy/ArgMax/dimensionConst*
_output_shapes
: *
value	B :*
dtype0
k
accuracy/ArgMaxArgMaxinput_yaccuracy/ArgMax/dimension*
T0*#
_output_shapes
:?????????
j
accuracy/EqualEqualoutput/predictionsaccuracy/ArgMax*
T0	*#
_output_shapes
:?????????
b
accuracy/CastCastaccuracy/Equal*

DstT0*

SrcT0
*#
_output_shapes
:?????????
X
accuracy/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
Y
accuracy/accuracyMeanaccuracy/Castaccuracy/Const*
_output_shapes
: *
T0
[
global_step/initial_valueConst*
_output_shapes
: *
dtype0*
value	B : 
K
global_step
VariableV2*
_output_shapes
: *
shape: *
dtype0
?
global_step/AssignAssignglobal_stepglobal_step/initial_value*
_class
loc:@global_step*
T0*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
_class
loc:@global_step*
_output_shapes
: *
T0
R
gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
X
gradients/grad_ys_0Const*
valueB
 *  ??*
dtype0*
_output_shapes
: 
]
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*
_output_shapes
: 
A
(gradients/loss/add_grad/tuple/group_depsNoOp^gradients/Fill
?
0gradients/loss/add_grad/tuple/control_dependencyIdentitygradients/Fill)^gradients/loss/add_grad/tuple/group_deps*!
_class
loc:@gradients/Fill*
T0*
_output_shapes
: 
?
2gradients/loss/add_grad/tuple/control_dependency_1Identitygradients/Fill)^gradients/loss/add_grad/tuple/group_deps*!
_class
loc:@gradients/Fill*
T0*
_output_shapes
: 
p
&gradients/loss/Mean_grad/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?
 gradients/loss/Mean_grad/ReshapeReshape0gradients/loss/add_grad/tuple/control_dependency&gradients/loss/Mean_grad/Reshape/shape*
_output_shapes
:*
T0
?
gradients/loss/Mean_grad/ShapeShape3loss/softmax_cross_entropy_with_logits_sg/Reshape_2*
T0*
_output_shapes
:
?
gradients/loss/Mean_grad/TileTile gradients/loss/Mean_grad/Reshapegradients/loss/Mean_grad/Shape*#
_output_shapes
:?????????*
T0
?
 gradients/loss/Mean_grad/Shape_1Shape3loss/softmax_cross_entropy_with_logits_sg/Reshape_2*
T0*
_output_shapes
:
c
 gradients/loss/Mean_grad/Shape_2Const*
_output_shapes
: *
valueB *
dtype0
h
gradients/loss/Mean_grad/ConstConst*
valueB: *
_output_shapes
:*
dtype0
?
gradients/loss/Mean_grad/ProdProd gradients/loss/Mean_grad/Shape_1gradients/loss/Mean_grad/Const*
T0*
_output_shapes
: 
j
 gradients/loss/Mean_grad/Const_1Const*
_output_shapes
:*
valueB: *
dtype0
?
gradients/loss/Mean_grad/Prod_1Prod gradients/loss/Mean_grad/Shape_2 gradients/loss/Mean_grad/Const_1*
_output_shapes
: *
T0
d
"gradients/loss/Mean_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :
?
 gradients/loss/Mean_grad/MaximumMaximumgradients/loss/Mean_grad/Prod_1"gradients/loss/Mean_grad/Maximum/y*
_output_shapes
: *
T0
?
!gradients/loss/Mean_grad/floordivFloorDivgradients/loss/Mean_grad/Prod gradients/loss/Mean_grad/Maximum*
_output_shapes
: *
T0
x
gradients/loss/Mean_grad/CastCast!gradients/loss/Mean_grad/floordiv*

SrcT0*

DstT0*
_output_shapes
: 
?
 gradients/loss/Mean_grad/truedivRealDivgradients/loss/Mean_grad/Tilegradients/loss/Mean_grad/Cast*#
_output_shapes
:?????????*
T0
?
gradients/loss/mul_grad/MulMul2gradients/loss/add_grad/tuple/control_dependency_1output/add_1*
_output_shapes
: *
T0
?
gradients/loss/mul_grad/Mul_1Mul2gradients/loss/add_grad/tuple/control_dependency_1
loss/mul/x*
_output_shapes
: *
T0
n
(gradients/loss/mul_grad/tuple/group_depsNoOp^gradients/loss/mul_grad/Mul^gradients/loss/mul_grad/Mul_1
?
0gradients/loss/mul_grad/tuple/control_dependencyIdentitygradients/loss/mul_grad/Mul)^gradients/loss/mul_grad/tuple/group_deps*
T0*
_output_shapes
: *.
_class$
" loc:@gradients/loss/mul_grad/Mul
?
2gradients/loss/mul_grad/tuple/control_dependency_1Identitygradients/loss/mul_grad/Mul_1)^gradients/loss/mul_grad/tuple/group_deps*
T0*
_output_shapes
: *0
_class&
$"loc:@gradients/loss/mul_grad/Mul_1
?
Hgradients/loss/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/ShapeShape)loss/softmax_cross_entropy_with_logits_sg*
T0*
_output_shapes
:
?
Jgradients/loss/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/ReshapeReshape gradients/loss/Mean_grad/truedivHgradients/loss/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/Shape*#
_output_shapes
:?????????*
T0
i
,gradients/output/add_1_grad/tuple/group_depsNoOp3^gradients/loss/mul_grad/tuple/control_dependency_1
?
4gradients/output/add_1_grad/tuple/control_dependencyIdentity2gradients/loss/mul_grad/tuple/control_dependency_1-^gradients/output/add_1_grad/tuple/group_deps*
_output_shapes
: *0
_class&
$"loc:@gradients/loss/mul_grad/Mul_1*
T0
?
6gradients/output/add_1_grad/tuple/control_dependency_1Identity2gradients/loss/mul_grad/tuple/control_dependency_1-^gradients/output/add_1_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/loss/mul_grad/Mul_1*
_output_shapes
: 
?
gradients/zeros_like	ZerosLike+loss/softmax_cross_entropy_with_logits_sg:1*0
_output_shapes
:??????????????????*
T0
?
Ggradients/loss/softmax_cross_entropy_with_logits_sg_grad/ExpandDims/dimConst*
dtype0*
valueB :
?????????*
_output_shapes
: 
?
Cgradients/loss/softmax_cross_entropy_with_logits_sg_grad/ExpandDims
ExpandDimsJgradients/loss/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/ReshapeGgradients/loss/softmax_cross_entropy_with_logits_sg_grad/ExpandDims/dim*'
_output_shapes
:?????????*
T0
?
<gradients/loss/softmax_cross_entropy_with_logits_sg_grad/mulMulCgradients/loss/softmax_cross_entropy_with_logits_sg_grad/ExpandDims+loss/softmax_cross_entropy_with_logits_sg:1*0
_output_shapes
:??????????????????*
T0
?
Cgradients/loss/softmax_cross_entropy_with_logits_sg_grad/LogSoftmax
LogSoftmax1loss/softmax_cross_entropy_with_logits_sg/Reshape*
T0*0
_output_shapes
:??????????????????
?
<gradients/loss/softmax_cross_entropy_with_logits_sg_grad/NegNegCgradients/loss/softmax_cross_entropy_with_logits_sg_grad/LogSoftmax*0
_output_shapes
:??????????????????*
T0
?
Igradients/loss/softmax_cross_entropy_with_logits_sg_grad/ExpandDims_1/dimConst*
dtype0*
valueB :
?????????*
_output_shapes
: 
?
Egradients/loss/softmax_cross_entropy_with_logits_sg_grad/ExpandDims_1
ExpandDimsJgradients/loss/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/ReshapeIgradients/loss/softmax_cross_entropy_with_logits_sg_grad/ExpandDims_1/dim*'
_output_shapes
:?????????*
T0
?
>gradients/loss/softmax_cross_entropy_with_logits_sg_grad/mul_1MulEgradients/loss/softmax_cross_entropy_with_logits_sg_grad/ExpandDims_1<gradients/loss/softmax_cross_entropy_with_logits_sg_grad/Neg*
T0*0
_output_shapes
:??????????????????
?
Igradients/loss/softmax_cross_entropy_with_logits_sg_grad/tuple/group_depsNoOp=^gradients/loss/softmax_cross_entropy_with_logits_sg_grad/mul?^gradients/loss/softmax_cross_entropy_with_logits_sg_grad/mul_1
?
Qgradients/loss/softmax_cross_entropy_with_logits_sg_grad/tuple/control_dependencyIdentity<gradients/loss/softmax_cross_entropy_with_logits_sg_grad/mulJ^gradients/loss/softmax_cross_entropy_with_logits_sg_grad/tuple/group_deps*O
_classE
CAloc:@gradients/loss/softmax_cross_entropy_with_logits_sg_grad/mul*
T0*0
_output_shapes
:??????????????????
?
Sgradients/loss/softmax_cross_entropy_with_logits_sg_grad/tuple/control_dependency_1Identity>gradients/loss/softmax_cross_entropy_with_logits_sg_grad/mul_1J^gradients/loss/softmax_cross_entropy_with_logits_sg_grad/tuple/group_deps*0
_output_shapes
:??????????????????*
T0*Q
_classG
ECloc:@gradients/loss/softmax_cross_entropy_with_logits_sg_grad/mul_1
i
*gradients/output/add_grad/tuple/group_depsNoOp5^gradients/output/add_1_grad/tuple/control_dependency
?
2gradients/output/add_grad/tuple/control_dependencyIdentity4gradients/output/add_1_grad/tuple/control_dependency+^gradients/output/add_grad/tuple/group_deps*
_output_shapes
: *0
_class&
$"loc:@gradients/loss/mul_grad/Mul_1*
T0
?
4gradients/output/add_grad/tuple/control_dependency_1Identity4gradients/output/add_1_grad/tuple/control_dependency+^gradients/output/add_grad/tuple/group_deps*0
_class&
$"loc:@gradients/loss/mul_grad/Mul_1*
_output_shapes
: *
T0
?
"gradients/output/L2Loss_1_grad/mulMuloutput/b/read6gradients/output/add_1_grad/tuple/control_dependency_1*
T0*
_output_shapes	
:?
?
Fgradients/loss/softmax_cross_entropy_with_logits_sg/Reshape_grad/ShapeShapeoutput/scores*
T0*
_output_shapes
:
?
Hgradients/loss/softmax_cross_entropy_with_logits_sg/Reshape_grad/ReshapeReshapeQgradients/loss/softmax_cross_entropy_with_logits_sg_grad/tuple/control_dependencyFgradients/loss/softmax_cross_entropy_with_logits_sg/Reshape_grad/Shape*
T0*(
_output_shapes
:??????????
?
 gradients/output/L2Loss_grad/mulMulW/read4gradients/output/add_grad/tuple/control_dependency_1*
T0* 
_output_shapes
:
??
?
(gradients/output/scores_grad/BiasAddGradBiasAddGradHgradients/loss/softmax_cross_entropy_with_logits_sg/Reshape_grad/Reshape*
T0*
_output_shapes	
:?
?
-gradients/output/scores_grad/tuple/group_depsNoOpI^gradients/loss/softmax_cross_entropy_with_logits_sg/Reshape_grad/Reshape)^gradients/output/scores_grad/BiasAddGrad
?
5gradients/output/scores_grad/tuple/control_dependencyIdentityHgradients/loss/softmax_cross_entropy_with_logits_sg/Reshape_grad/Reshape.^gradients/output/scores_grad/tuple/group_deps*
T0*(
_output_shapes
:??????????*[
_classQ
OMloc:@gradients/loss/softmax_cross_entropy_with_logits_sg/Reshape_grad/Reshape
?
7gradients/output/scores_grad/tuple/control_dependency_1Identity(gradients/output/scores_grad/BiasAddGrad.^gradients/output/scores_grad/tuple/group_deps*;
_class1
/-loc:@gradients/output/scores_grad/BiasAddGrad*
T0*
_output_shapes	
:?
?
*gradients/output/scores/MatMul_grad/MatMulMatMul5gradients/output/scores_grad/tuple/control_dependencyW/read*
transpose_b(*(
_output_shapes
:??????????*
T0
?
,gradients/output/scores/MatMul_grad/MatMul_1MatMuldropout/dropout/mul_15gradients/output/scores_grad/tuple/control_dependency* 
_output_shapes
:
??*
T0*
transpose_a(
?
4gradients/output/scores/MatMul_grad/tuple/group_depsNoOp+^gradients/output/scores/MatMul_grad/MatMul-^gradients/output/scores/MatMul_grad/MatMul_1
?
<gradients/output/scores/MatMul_grad/tuple/control_dependencyIdentity*gradients/output/scores/MatMul_grad/MatMul5^gradients/output/scores/MatMul_grad/tuple/group_deps*(
_output_shapes
:??????????*
T0*=
_class3
1/loc:@gradients/output/scores/MatMul_grad/MatMul
?
>gradients/output/scores/MatMul_grad/tuple/control_dependency_1Identity,gradients/output/scores/MatMul_grad/MatMul_15^gradients/output/scores/MatMul_grad/tuple/group_deps* 
_output_shapes
:
??*?
_class5
31loc:@gradients/output/scores/MatMul_grad/MatMul_1*
T0
?
gradients/AddNAddN"gradients/output/L2Loss_1_grad/mul7gradients/output/scores_grad/tuple/control_dependency_1*
_output_shapes	
:?*5
_class+
)'loc:@gradients/output/L2Loss_1_grad/mul*
T0*
N
v
*gradients/dropout/dropout/mul_1_grad/ShapeShapedropout/dropout/mul*
T0*#
_output_shapes
:?????????
y
,gradients/dropout/dropout/mul_1_grad/Shape_1Shapedropout/dropout/Cast*
T0*#
_output_shapes
:?????????
?
:gradients/dropout/dropout/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs*gradients/dropout/dropout/mul_1_grad/Shape,gradients/dropout/dropout/mul_1_grad/Shape_1*2
_output_shapes 
:?????????:?????????
?
(gradients/dropout/dropout/mul_1_grad/MulMul<gradients/output/scores/MatMul_grad/tuple/control_dependencydropout/dropout/Cast*
_output_shapes
:*
T0
?
(gradients/dropout/dropout/mul_1_grad/SumSum(gradients/dropout/dropout/mul_1_grad/Mul:gradients/dropout/dropout/mul_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:
?
,gradients/dropout/dropout/mul_1_grad/ReshapeReshape(gradients/dropout/dropout/mul_1_grad/Sum*gradients/dropout/dropout/mul_1_grad/Shape*
_output_shapes
:*
T0
?
*gradients/dropout/dropout/mul_1_grad/Mul_1Muldropout/dropout/mul<gradients/output/scores/MatMul_grad/tuple/control_dependency*
_output_shapes
:*
T0
?
*gradients/dropout/dropout/mul_1_grad/Sum_1Sum*gradients/dropout/dropout/mul_1_grad/Mul_1<gradients/dropout/dropout/mul_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0
?
.gradients/dropout/dropout/mul_1_grad/Reshape_1Reshape*gradients/dropout/dropout/mul_1_grad/Sum_1,gradients/dropout/dropout/mul_1_grad/Shape_1*
T0*
_output_shapes
:
?
5gradients/dropout/dropout/mul_1_grad/tuple/group_depsNoOp-^gradients/dropout/dropout/mul_1_grad/Reshape/^gradients/dropout/dropout/mul_1_grad/Reshape_1
?
=gradients/dropout/dropout/mul_1_grad/tuple/control_dependencyIdentity,gradients/dropout/dropout/mul_1_grad/Reshape6^gradients/dropout/dropout/mul_1_grad/tuple/group_deps*
_output_shapes
:*?
_class5
31loc:@gradients/dropout/dropout/mul_1_grad/Reshape*
T0
?
?gradients/dropout/dropout/mul_1_grad/tuple/control_dependency_1Identity.gradients/dropout/dropout/mul_1_grad/Reshape_16^gradients/dropout/dropout/mul_1_grad/tuple/group_deps*A
_class7
53loc:@gradients/dropout/dropout/mul_1_grad/Reshape_1*
_output_shapes
:*
T0
?
gradients/AddN_1AddN gradients/output/L2Loss_grad/mul>gradients/output/scores/MatMul_grad/tuple/control_dependency_1*3
_class)
'%loc:@gradients/output/L2Loss_grad/mul*
T0*
N* 
_output_shapes
:
??
_
(gradients/dropout/dropout/mul_grad/ShapeShapeReshape*
T0*
_output_shapes
:
z
*gradients/dropout/dropout/mul_grad/Shape_1Shapedropout/dropout/truediv*#
_output_shapes
:?????????*
T0
?
8gradients/dropout/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs(gradients/dropout/dropout/mul_grad/Shape*gradients/dropout/dropout/mul_grad/Shape_1*2
_output_shapes 
:?????????:?????????
?
&gradients/dropout/dropout/mul_grad/MulMul=gradients/dropout/dropout/mul_1_grad/tuple/control_dependencydropout/dropout/truediv*
T0*
_output_shapes
:
?
&gradients/dropout/dropout/mul_grad/SumSum&gradients/dropout/dropout/mul_grad/Mul8gradients/dropout/dropout/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
T0
?
*gradients/dropout/dropout/mul_grad/ReshapeReshape&gradients/dropout/dropout/mul_grad/Sum(gradients/dropout/dropout/mul_grad/Shape*(
_output_shapes
:??????????*
T0
?
(gradients/dropout/dropout/mul_grad/Mul_1MulReshape=gradients/dropout/dropout/mul_1_grad/tuple/control_dependency*
T0*
_output_shapes
:
?
(gradients/dropout/dropout/mul_grad/Sum_1Sum(gradients/dropout/dropout/mul_grad/Mul_1:gradients/dropout/dropout/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0
?
,gradients/dropout/dropout/mul_grad/Reshape_1Reshape(gradients/dropout/dropout/mul_grad/Sum_1*gradients/dropout/dropout/mul_grad/Shape_1*
_output_shapes
:*
T0
?
3gradients/dropout/dropout/mul_grad/tuple/group_depsNoOp+^gradients/dropout/dropout/mul_grad/Reshape-^gradients/dropout/dropout/mul_grad/Reshape_1
?
;gradients/dropout/dropout/mul_grad/tuple/control_dependencyIdentity*gradients/dropout/dropout/mul_grad/Reshape4^gradients/dropout/dropout/mul_grad/tuple/group_deps*(
_output_shapes
:??????????*=
_class3
1/loc:@gradients/dropout/dropout/mul_grad/Reshape*
T0
?
=gradients/dropout/dropout/mul_grad/tuple/control_dependency_1Identity,gradients/dropout/dropout/mul_grad/Reshape_14^gradients/dropout/dropout/mul_grad/tuple/group_deps*?
_class5
31loc:@gradients/dropout/dropout/mul_grad/Reshape_1*
_output_shapes
:*
T0
R
gradients/Reshape_grad/ShapeShapeconcat*
_output_shapes
:*
T0
?
gradients/Reshape_grad/ReshapeReshape;gradients/dropout/dropout/mul_grad/tuple/control_dependencygradients/Reshape_grad/Shape*0
_output_shapes
:??????????*
T0
\
gradients/concat_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
o
gradients/concat_grad/modFloorModconcat/axisgradients/concat_grad/Rank*
_output_shapes
: *
T0
^
gradients/concat_grad/ShapeShapeconv-maxpool-3/pool*
T0*
_output_shapes
:
?
gradients/concat_grad/ShapeNShapeNconv-maxpool-3/poolconv-maxpool-4/poolconv-maxpool-5/pool*
T0*&
_output_shapes
:::*
N
?
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/modgradients/concat_grad/ShapeNgradients/concat_grad/ShapeN:1gradients/concat_grad/ShapeN:2*&
_output_shapes
:::*
N
?
gradients/concat_grad/SliceSlicegradients/Reshape_grad/Reshape"gradients/concat_grad/ConcatOffsetgradients/concat_grad/ShapeN*0
_output_shapes
:??????????*
T0*
Index0
?
gradients/concat_grad/Slice_1Slicegradients/Reshape_grad/Reshape$gradients/concat_grad/ConcatOffset:1gradients/concat_grad/ShapeN:1*
T0*
Index0*0
_output_shapes
:??????????
?
gradients/concat_grad/Slice_2Slicegradients/Reshape_grad/Reshape$gradients/concat_grad/ConcatOffset:2gradients/concat_grad/ShapeN:2*0
_output_shapes
:??????????*
Index0*
T0
?
&gradients/concat_grad/tuple/group_depsNoOp^gradients/concat_grad/Slice^gradients/concat_grad/Slice_1^gradients/concat_grad/Slice_2
?
.gradients/concat_grad/tuple/control_dependencyIdentitygradients/concat_grad/Slice'^gradients/concat_grad/tuple/group_deps*
T0*.
_class$
" loc:@gradients/concat_grad/Slice*0
_output_shapes
:??????????
?
0gradients/concat_grad/tuple/control_dependency_1Identitygradients/concat_grad/Slice_1'^gradients/concat_grad/tuple/group_deps*
T0*0
_output_shapes
:??????????*0
_class&
$"loc:@gradients/concat_grad/Slice_1
?
0gradients/concat_grad/tuple/control_dependency_2Identitygradients/concat_grad/Slice_2'^gradients/concat_grad/tuple/group_deps*0
_output_shapes
:??????????*
T0*0
_class&
$"loc:@gradients/concat_grad/Slice_2
?
.gradients/conv-maxpool-3/pool_grad/MaxPoolGradMaxPoolGradconv-maxpool-3/reluconv-maxpool-3/pool.gradients/concat_grad/tuple/control_dependency*
ksize	
?*1
_output_shapes
:???????????*
strides
*
paddingVALID
?
.gradients/conv-maxpool-4/pool_grad/MaxPoolGradMaxPoolGradconv-maxpool-4/reluconv-maxpool-4/pool0gradients/concat_grad/tuple/control_dependency_1*
paddingVALID*1
_output_shapes
:???????????*
ksize	
?*
strides

?
.gradients/conv-maxpool-5/pool_grad/MaxPoolGradMaxPoolGradconv-maxpool-5/reluconv-maxpool-5/pool0gradients/concat_grad/tuple/control_dependency_2*
ksize	
?*1
_output_shapes
:???????????*
strides
*
paddingVALID
?
+gradients/conv-maxpool-3/relu_grad/ReluGradReluGrad.gradients/conv-maxpool-3/pool_grad/MaxPoolGradconv-maxpool-3/relu*1
_output_shapes
:???????????*
T0
?
+gradients/conv-maxpool-4/relu_grad/ReluGradReluGrad.gradients/conv-maxpool-4/pool_grad/MaxPoolGradconv-maxpool-4/relu*1
_output_shapes
:???????????*
T0
?
+gradients/conv-maxpool-5/relu_grad/ReluGradReluGrad.gradients/conv-maxpool-5/pool_grad/MaxPoolGradconv-maxpool-5/relu*1
_output_shapes
:???????????*
T0
?
1gradients/conv-maxpool-3/BiasAdd_grad/BiasAddGradBiasAddGrad+gradients/conv-maxpool-3/relu_grad/ReluGrad*
_output_shapes	
:?*
T0
?
6gradients/conv-maxpool-3/BiasAdd_grad/tuple/group_depsNoOp2^gradients/conv-maxpool-3/BiasAdd_grad/BiasAddGrad,^gradients/conv-maxpool-3/relu_grad/ReluGrad
?
>gradients/conv-maxpool-3/BiasAdd_grad/tuple/control_dependencyIdentity+gradients/conv-maxpool-3/relu_grad/ReluGrad7^gradients/conv-maxpool-3/BiasAdd_grad/tuple/group_deps*1
_output_shapes
:???????????*>
_class4
20loc:@gradients/conv-maxpool-3/relu_grad/ReluGrad*
T0
?
@gradients/conv-maxpool-3/BiasAdd_grad/tuple/control_dependency_1Identity1gradients/conv-maxpool-3/BiasAdd_grad/BiasAddGrad7^gradients/conv-maxpool-3/BiasAdd_grad/tuple/group_deps*
_output_shapes	
:?*
T0*D
_class:
86loc:@gradients/conv-maxpool-3/BiasAdd_grad/BiasAddGrad
?
1gradients/conv-maxpool-4/BiasAdd_grad/BiasAddGradBiasAddGrad+gradients/conv-maxpool-4/relu_grad/ReluGrad*
_output_shapes	
:?*
T0
?
6gradients/conv-maxpool-4/BiasAdd_grad/tuple/group_depsNoOp2^gradients/conv-maxpool-4/BiasAdd_grad/BiasAddGrad,^gradients/conv-maxpool-4/relu_grad/ReluGrad
?
>gradients/conv-maxpool-4/BiasAdd_grad/tuple/control_dependencyIdentity+gradients/conv-maxpool-4/relu_grad/ReluGrad7^gradients/conv-maxpool-4/BiasAdd_grad/tuple/group_deps*1
_output_shapes
:???????????*>
_class4
20loc:@gradients/conv-maxpool-4/relu_grad/ReluGrad*
T0
?
@gradients/conv-maxpool-4/BiasAdd_grad/tuple/control_dependency_1Identity1gradients/conv-maxpool-4/BiasAdd_grad/BiasAddGrad7^gradients/conv-maxpool-4/BiasAdd_grad/tuple/group_deps*D
_class:
86loc:@gradients/conv-maxpool-4/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:?*
T0
?
1gradients/conv-maxpool-5/BiasAdd_grad/BiasAddGradBiasAddGrad+gradients/conv-maxpool-5/relu_grad/ReluGrad*
T0*
_output_shapes	
:?
?
6gradients/conv-maxpool-5/BiasAdd_grad/tuple/group_depsNoOp2^gradients/conv-maxpool-5/BiasAdd_grad/BiasAddGrad,^gradients/conv-maxpool-5/relu_grad/ReluGrad
?
>gradients/conv-maxpool-5/BiasAdd_grad/tuple/control_dependencyIdentity+gradients/conv-maxpool-5/relu_grad/ReluGrad7^gradients/conv-maxpool-5/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/conv-maxpool-5/relu_grad/ReluGrad*1
_output_shapes
:???????????
?
@gradients/conv-maxpool-5/BiasAdd_grad/tuple/control_dependency_1Identity1gradients/conv-maxpool-5/BiasAdd_grad/BiasAddGrad7^gradients/conv-maxpool-5/BiasAdd_grad/tuple/group_deps*D
_class:
86loc:@gradients/conv-maxpool-5/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:?
?
)gradients/conv-maxpool-3/conv_grad/ShapeNShapeNembedding/ExpandDimsconv-maxpool-3/W/read*
N*
T0* 
_output_shapes
::
?
6gradients/conv-maxpool-3/conv_grad/Conv2DBackpropInputConv2DBackpropInput)gradients/conv-maxpool-3/conv_grad/ShapeNconv-maxpool-3/W/read>gradients/conv-maxpool-3/BiasAdd_grad/tuple/control_dependency*
strides
*
T0*1
_output_shapes
:???????????*
paddingVALID
?
7gradients/conv-maxpool-3/conv_grad/Conv2DBackpropFilterConv2DBackpropFilterembedding/ExpandDims+gradients/conv-maxpool-3/conv_grad/ShapeN:1>gradients/conv-maxpool-3/BiasAdd_grad/tuple/control_dependency*(
_output_shapes
:??*
paddingVALID*
T0*
strides

?
3gradients/conv-maxpool-3/conv_grad/tuple/group_depsNoOp8^gradients/conv-maxpool-3/conv_grad/Conv2DBackpropFilter7^gradients/conv-maxpool-3/conv_grad/Conv2DBackpropInput
?
;gradients/conv-maxpool-3/conv_grad/tuple/control_dependencyIdentity6gradients/conv-maxpool-3/conv_grad/Conv2DBackpropInput4^gradients/conv-maxpool-3/conv_grad/tuple/group_deps*1
_output_shapes
:???????????*I
_class?
=;loc:@gradients/conv-maxpool-3/conv_grad/Conv2DBackpropInput*
T0
?
=gradients/conv-maxpool-3/conv_grad/tuple/control_dependency_1Identity7gradients/conv-maxpool-3/conv_grad/Conv2DBackpropFilter4^gradients/conv-maxpool-3/conv_grad/tuple/group_deps*
T0*J
_class@
><loc:@gradients/conv-maxpool-3/conv_grad/Conv2DBackpropFilter*(
_output_shapes
:??
?
)gradients/conv-maxpool-4/conv_grad/ShapeNShapeNembedding/ExpandDimsconv-maxpool-4/W/read* 
_output_shapes
::*
N*
T0
?
6gradients/conv-maxpool-4/conv_grad/Conv2DBackpropInputConv2DBackpropInput)gradients/conv-maxpool-4/conv_grad/ShapeNconv-maxpool-4/W/read>gradients/conv-maxpool-4/BiasAdd_grad/tuple/control_dependency*
T0*
strides
*1
_output_shapes
:???????????*
paddingVALID
?
7gradients/conv-maxpool-4/conv_grad/Conv2DBackpropFilterConv2DBackpropFilterembedding/ExpandDims+gradients/conv-maxpool-4/conv_grad/ShapeN:1>gradients/conv-maxpool-4/BiasAdd_grad/tuple/control_dependency*(
_output_shapes
:??*
paddingVALID*
T0*
strides

?
3gradients/conv-maxpool-4/conv_grad/tuple/group_depsNoOp8^gradients/conv-maxpool-4/conv_grad/Conv2DBackpropFilter7^gradients/conv-maxpool-4/conv_grad/Conv2DBackpropInput
?
;gradients/conv-maxpool-4/conv_grad/tuple/control_dependencyIdentity6gradients/conv-maxpool-4/conv_grad/Conv2DBackpropInput4^gradients/conv-maxpool-4/conv_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/conv-maxpool-4/conv_grad/Conv2DBackpropInput*1
_output_shapes
:???????????
?
=gradients/conv-maxpool-4/conv_grad/tuple/control_dependency_1Identity7gradients/conv-maxpool-4/conv_grad/Conv2DBackpropFilter4^gradients/conv-maxpool-4/conv_grad/tuple/group_deps*(
_output_shapes
:??*J
_class@
><loc:@gradients/conv-maxpool-4/conv_grad/Conv2DBackpropFilter*
T0
?
)gradients/conv-maxpool-5/conv_grad/ShapeNShapeNembedding/ExpandDimsconv-maxpool-5/W/read*
N*
T0* 
_output_shapes
::
?
6gradients/conv-maxpool-5/conv_grad/Conv2DBackpropInputConv2DBackpropInput)gradients/conv-maxpool-5/conv_grad/ShapeNconv-maxpool-5/W/read>gradients/conv-maxpool-5/BiasAdd_grad/tuple/control_dependency*
T0*
strides
*1
_output_shapes
:???????????*
paddingVALID
?
7gradients/conv-maxpool-5/conv_grad/Conv2DBackpropFilterConv2DBackpropFilterembedding/ExpandDims+gradients/conv-maxpool-5/conv_grad/ShapeN:1>gradients/conv-maxpool-5/BiasAdd_grad/tuple/control_dependency*
strides
*(
_output_shapes
:??*
paddingVALID*
T0
?
3gradients/conv-maxpool-5/conv_grad/tuple/group_depsNoOp8^gradients/conv-maxpool-5/conv_grad/Conv2DBackpropFilter7^gradients/conv-maxpool-5/conv_grad/Conv2DBackpropInput
?
;gradients/conv-maxpool-5/conv_grad/tuple/control_dependencyIdentity6gradients/conv-maxpool-5/conv_grad/Conv2DBackpropInput4^gradients/conv-maxpool-5/conv_grad/tuple/group_deps*I
_class?
=;loc:@gradients/conv-maxpool-5/conv_grad/Conv2DBackpropInput*
T0*1
_output_shapes
:???????????
?
=gradients/conv-maxpool-5/conv_grad/tuple/control_dependency_1Identity7gradients/conv-maxpool-5/conv_grad/Conv2DBackpropFilter4^gradients/conv-maxpool-5/conv_grad/tuple/group_deps*(
_output_shapes
:??*J
_class@
><loc:@gradients/conv-maxpool-5/conv_grad/Conv2DBackpropFilter*
T0
?
gradients/AddN_2AddN;gradients/conv-maxpool-3/conv_grad/tuple/control_dependency;gradients/conv-maxpool-4/conv_grad/tuple/control_dependency;gradients/conv-maxpool-5/conv_grad/tuple/control_dependency*
T0*1
_output_shapes
:???????????*
N*I
_class?
=;loc:@gradients/conv-maxpool-3/conv_grad/Conv2DBackpropInput
|
)gradients/embedding/ExpandDims_grad/ShapeShape#embedding/embedding_lookup/Identity*
T0*
_output_shapes
:
?
+gradients/embedding/ExpandDims_grad/ReshapeReshapegradients/AddN_2)gradients/embedding/ExpandDims_grad/Shape*-
_output_shapes
:???????????*
T0
?
/gradients/embedding/embedding_lookup_grad/ShapeConst"/device:GPU:0*
_class
loc:@embedding/W*
dtype0	*%
valueB	"#?      ,      *
_output_shapes
:
?
.gradients/embedding/embedding_lookup_grad/CastCast/gradients/embedding/embedding_lookup_grad/Shape"/device:GPU:0*

DstT0*
_class
loc:@embedding/W*
_output_shapes
:*

SrcT0	
`
.gradients/embedding/embedding_lookup_grad/SizeSizeinput_x*
T0*
_output_shapes
: 
z
8gradients/embedding/embedding_lookup_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B : 
?
4gradients/embedding/embedding_lookup_grad/ExpandDims
ExpandDims.gradients/embedding/embedding_lookup_grad/Size8gradients/embedding/embedding_lookup_grad/ExpandDims/dim*
_output_shapes
:*
T0
?
=gradients/embedding/embedding_lookup_grad/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
?
?gradients/embedding/embedding_lookup_grad/strided_slice/stack_1Const*
valueB: *
_output_shapes
:*
dtype0
?
?gradients/embedding/embedding_lookup_grad/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
?
7gradients/embedding/embedding_lookup_grad/strided_sliceStridedSlice.gradients/embedding/embedding_lookup_grad/Cast=gradients/embedding/embedding_lookup_grad/strided_slice/stack?gradients/embedding/embedding_lookup_grad/strided_slice/stack_1?gradients/embedding/embedding_lookup_grad/strided_slice/stack_2*
T0*
Index0*
end_mask*
_output_shapes
:
w
5gradients/embedding/embedding_lookup_grad/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
?
0gradients/embedding/embedding_lookup_grad/concatConcatV24gradients/embedding/embedding_lookup_grad/ExpandDims7gradients/embedding/embedding_lookup_grad/strided_slice5gradients/embedding/embedding_lookup_grad/concat/axis*
_output_shapes
:*
T0*
N
?
1gradients/embedding/embedding_lookup_grad/ReshapeReshape+gradients/embedding/ExpandDims_grad/Reshape0gradients/embedding/embedding_lookup_grad/concat*
T0*(
_output_shapes
:??????????
?
3gradients/embedding/embedding_lookup_grad/Reshape_1Reshapeinput_x4gradients/embedding/embedding_lookup_grad/ExpandDims*
T0*#
_output_shapes
:?????????
t
beta1_power/initial_valueConst*
valueB
 *fff?*
_output_shapes
: *
dtype0*
_class

loc:@W
a
beta1_power
VariableV2*
shape: *
_class

loc:@W*
dtype0*
_output_shapes
: 
{
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
_class

loc:@W*
_output_shapes
: *
T0
`
beta1_power/readIdentitybeta1_power*
_class

loc:@W*
T0*
_output_shapes
: 
t
beta2_power/initial_valueConst*
_output_shapes
: *
valueB
 *w??*
_class

loc:@W*
dtype0
a
beta2_power
VariableV2*
shape: *
_class

loc:@W*
dtype0*
_output_shapes
: 
{
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
T0*
_output_shapes
: *
_class

loc:@W
`
beta2_power/readIdentitybeta2_power*
_output_shapes
: *
_class

loc:@W*
T0
?
2embedding/W/Adam/Initializer/zeros/shape_as_tensorConst"/device:GPU:0*
dtype0*
valueB"#?  ,  *
_output_shapes
:*
_class
loc:@embedding/W
?
(embedding/W/Adam/Initializer/zeros/ConstConst"/device:GPU:0*
dtype0*
_class
loc:@embedding/W*
valueB
 *    *
_output_shapes
: 
?
"embedding/W/Adam/Initializer/zerosFill2embedding/W/Adam/Initializer/zeros/shape_as_tensor(embedding/W/Adam/Initializer/zeros/Const"/device:GPU:0*!
_output_shapes
:???*
_class
loc:@embedding/W*
T0
?
embedding/W/Adam
VariableV2"/device:GPU:0*
_class
loc:@embedding/W*
dtype0*!
_output_shapes
:???*
shape:???
?
embedding/W/Adam/AssignAssignembedding/W/Adam"embedding/W/Adam/Initializer/zeros"/device:GPU:0*!
_output_shapes
:???*
T0*
_class
loc:@embedding/W
?
embedding/W/Adam/readIdentityembedding/W/Adam"/device:GPU:0*
_class
loc:@embedding/W*
T0*!
_output_shapes
:???
?
4embedding/W/Adam_1/Initializer/zeros/shape_as_tensorConst"/device:GPU:0*
_class
loc:@embedding/W*
valueB"#?  ,  *
dtype0*
_output_shapes
:
?
*embedding/W/Adam_1/Initializer/zeros/ConstConst"/device:GPU:0*
_class
loc:@embedding/W*
valueB
 *    *
dtype0*
_output_shapes
: 
?
$embedding/W/Adam_1/Initializer/zerosFill4embedding/W/Adam_1/Initializer/zeros/shape_as_tensor*embedding/W/Adam_1/Initializer/zeros/Const"/device:GPU:0*
T0*!
_output_shapes
:???*
_class
loc:@embedding/W
?
embedding/W/Adam_1
VariableV2"/device:GPU:0*
dtype0*
shape:???*
_class
loc:@embedding/W*!
_output_shapes
:???
?
embedding/W/Adam_1/AssignAssignembedding/W/Adam_1$embedding/W/Adam_1/Initializer/zeros"/device:GPU:0*
T0*!
_output_shapes
:???*
_class
loc:@embedding/W
?
embedding/W/Adam_1/readIdentityembedding/W/Adam_1"/device:GPU:0*
T0*
_class
loc:@embedding/W*!
_output_shapes
:???
?
7conv-maxpool-3/W/Adam/Initializer/zeros/shape_as_tensorConst*#
_class
loc:@conv-maxpool-3/W*
_output_shapes
:*
dtype0*%
valueB"   ,     ?   
?
-conv-maxpool-3/W/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0*#
_class
loc:@conv-maxpool-3/W
?
'conv-maxpool-3/W/Adam/Initializer/zerosFill7conv-maxpool-3/W/Adam/Initializer/zeros/shape_as_tensor-conv-maxpool-3/W/Adam/Initializer/zeros/Const*#
_class
loc:@conv-maxpool-3/W*(
_output_shapes
:??*
T0
?
conv-maxpool-3/W/Adam
VariableV2*#
_class
loc:@conv-maxpool-3/W*
dtype0*(
_output_shapes
:??*
shape:??
?
conv-maxpool-3/W/Adam/AssignAssignconv-maxpool-3/W/Adam'conv-maxpool-3/W/Adam/Initializer/zeros*(
_output_shapes
:??*#
_class
loc:@conv-maxpool-3/W*
T0
?
conv-maxpool-3/W/Adam/readIdentityconv-maxpool-3/W/Adam*
T0*(
_output_shapes
:??*#
_class
loc:@conv-maxpool-3/W
?
9conv-maxpool-3/W/Adam_1/Initializer/zeros/shape_as_tensorConst*%
valueB"   ,     ?   *
_output_shapes
:*#
_class
loc:@conv-maxpool-3/W*
dtype0
?
/conv-maxpool-3/W/Adam_1/Initializer/zeros/ConstConst*#
_class
loc:@conv-maxpool-3/W*
dtype0*
_output_shapes
: *
valueB
 *    
?
)conv-maxpool-3/W/Adam_1/Initializer/zerosFill9conv-maxpool-3/W/Adam_1/Initializer/zeros/shape_as_tensor/conv-maxpool-3/W/Adam_1/Initializer/zeros/Const*(
_output_shapes
:??*
T0*#
_class
loc:@conv-maxpool-3/W
?
conv-maxpool-3/W/Adam_1
VariableV2*
dtype0*
shape:??*#
_class
loc:@conv-maxpool-3/W*(
_output_shapes
:??
?
conv-maxpool-3/W/Adam_1/AssignAssignconv-maxpool-3/W/Adam_1)conv-maxpool-3/W/Adam_1/Initializer/zeros*#
_class
loc:@conv-maxpool-3/W*(
_output_shapes
:??*
T0
?
conv-maxpool-3/W/Adam_1/readIdentityconv-maxpool-3/W/Adam_1*#
_class
loc:@conv-maxpool-3/W*(
_output_shapes
:??*
T0
?
'conv-maxpool-3/b/Adam/Initializer/zerosConst*
_output_shapes	
:?*
valueB?*    *
dtype0*#
_class
loc:@conv-maxpool-3/b
?
conv-maxpool-3/b/Adam
VariableV2*
shape:?*#
_class
loc:@conv-maxpool-3/b*
_output_shapes	
:?*
dtype0
?
conv-maxpool-3/b/Adam/AssignAssignconv-maxpool-3/b/Adam'conv-maxpool-3/b/Adam/Initializer/zeros*#
_class
loc:@conv-maxpool-3/b*
_output_shapes	
:?*
T0
?
conv-maxpool-3/b/Adam/readIdentityconv-maxpool-3/b/Adam*
_output_shapes	
:?*#
_class
loc:@conv-maxpool-3/b*
T0
?
)conv-maxpool-3/b/Adam_1/Initializer/zerosConst*#
_class
loc:@conv-maxpool-3/b*
valueB?*    *
_output_shapes	
:?*
dtype0
?
conv-maxpool-3/b/Adam_1
VariableV2*#
_class
loc:@conv-maxpool-3/b*
_output_shapes	
:?*
dtype0*
shape:?
?
conv-maxpool-3/b/Adam_1/AssignAssignconv-maxpool-3/b/Adam_1)conv-maxpool-3/b/Adam_1/Initializer/zeros*
_output_shapes	
:?*#
_class
loc:@conv-maxpool-3/b*
T0
?
conv-maxpool-3/b/Adam_1/readIdentityconv-maxpool-3/b/Adam_1*#
_class
loc:@conv-maxpool-3/b*
T0*
_output_shapes	
:?
?
7conv-maxpool-4/W/Adam/Initializer/zeros/shape_as_tensorConst*%
valueB"   ,     ?   *
dtype0*
_output_shapes
:*#
_class
loc:@conv-maxpool-4/W
?
-conv-maxpool-4/W/Adam/Initializer/zeros/ConstConst*#
_class
loc:@conv-maxpool-4/W*
valueB
 *    *
dtype0*
_output_shapes
: 
?
'conv-maxpool-4/W/Adam/Initializer/zerosFill7conv-maxpool-4/W/Adam/Initializer/zeros/shape_as_tensor-conv-maxpool-4/W/Adam/Initializer/zeros/Const*#
_class
loc:@conv-maxpool-4/W*
T0*(
_output_shapes
:??
?
conv-maxpool-4/W/Adam
VariableV2*
dtype0*(
_output_shapes
:??*
shape:??*#
_class
loc:@conv-maxpool-4/W
?
conv-maxpool-4/W/Adam/AssignAssignconv-maxpool-4/W/Adam'conv-maxpool-4/W/Adam/Initializer/zeros*
T0*(
_output_shapes
:??*#
_class
loc:@conv-maxpool-4/W
?
conv-maxpool-4/W/Adam/readIdentityconv-maxpool-4/W/Adam*#
_class
loc:@conv-maxpool-4/W*
T0*(
_output_shapes
:??
?
9conv-maxpool-4/W/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*%
valueB"   ,     ?   *
_output_shapes
:*#
_class
loc:@conv-maxpool-4/W
?
/conv-maxpool-4/W/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*#
_class
loc:@conv-maxpool-4/W*
_output_shapes
: 
?
)conv-maxpool-4/W/Adam_1/Initializer/zerosFill9conv-maxpool-4/W/Adam_1/Initializer/zeros/shape_as_tensor/conv-maxpool-4/W/Adam_1/Initializer/zeros/Const*#
_class
loc:@conv-maxpool-4/W*
T0*(
_output_shapes
:??
?
conv-maxpool-4/W/Adam_1
VariableV2*
shape:??*#
_class
loc:@conv-maxpool-4/W*(
_output_shapes
:??*
dtype0
?
conv-maxpool-4/W/Adam_1/AssignAssignconv-maxpool-4/W/Adam_1)conv-maxpool-4/W/Adam_1/Initializer/zeros*
T0*(
_output_shapes
:??*#
_class
loc:@conv-maxpool-4/W
?
conv-maxpool-4/W/Adam_1/readIdentityconv-maxpool-4/W/Adam_1*(
_output_shapes
:??*
T0*#
_class
loc:@conv-maxpool-4/W
?
'conv-maxpool-4/b/Adam/Initializer/zerosConst*#
_class
loc:@conv-maxpool-4/b*
dtype0*
valueB?*    *
_output_shapes	
:?
?
conv-maxpool-4/b/Adam
VariableV2*
dtype0*
shape:?*
_output_shapes	
:?*#
_class
loc:@conv-maxpool-4/b
?
conv-maxpool-4/b/Adam/AssignAssignconv-maxpool-4/b/Adam'conv-maxpool-4/b/Adam/Initializer/zeros*#
_class
loc:@conv-maxpool-4/b*
T0*
_output_shapes	
:?
?
conv-maxpool-4/b/Adam/readIdentityconv-maxpool-4/b/Adam*#
_class
loc:@conv-maxpool-4/b*
_output_shapes	
:?*
T0
?
)conv-maxpool-4/b/Adam_1/Initializer/zerosConst*
_output_shapes	
:?*#
_class
loc:@conv-maxpool-4/b*
valueB?*    *
dtype0
?
conv-maxpool-4/b/Adam_1
VariableV2*
shape:?*
_output_shapes	
:?*#
_class
loc:@conv-maxpool-4/b*
dtype0
?
conv-maxpool-4/b/Adam_1/AssignAssignconv-maxpool-4/b/Adam_1)conv-maxpool-4/b/Adam_1/Initializer/zeros*#
_class
loc:@conv-maxpool-4/b*
T0*
_output_shapes	
:?
?
conv-maxpool-4/b/Adam_1/readIdentityconv-maxpool-4/b/Adam_1*
T0*#
_class
loc:@conv-maxpool-4/b*
_output_shapes	
:?
?
7conv-maxpool-5/W/Adam/Initializer/zeros/shape_as_tensorConst*#
_class
loc:@conv-maxpool-5/W*%
valueB"   ,     ?   *
_output_shapes
:*
dtype0
?
-conv-maxpool-5/W/Adam/Initializer/zeros/ConstConst*#
_class
loc:@conv-maxpool-5/W*
dtype0*
valueB
 *    *
_output_shapes
: 
?
'conv-maxpool-5/W/Adam/Initializer/zerosFill7conv-maxpool-5/W/Adam/Initializer/zeros/shape_as_tensor-conv-maxpool-5/W/Adam/Initializer/zeros/Const*
T0*(
_output_shapes
:??*#
_class
loc:@conv-maxpool-5/W
?
conv-maxpool-5/W/Adam
VariableV2*#
_class
loc:@conv-maxpool-5/W*
dtype0*(
_output_shapes
:??*
shape:??
?
conv-maxpool-5/W/Adam/AssignAssignconv-maxpool-5/W/Adam'conv-maxpool-5/W/Adam/Initializer/zeros*(
_output_shapes
:??*#
_class
loc:@conv-maxpool-5/W*
T0
?
conv-maxpool-5/W/Adam/readIdentityconv-maxpool-5/W/Adam*#
_class
loc:@conv-maxpool-5/W*(
_output_shapes
:??*
T0
?
9conv-maxpool-5/W/Adam_1/Initializer/zeros/shape_as_tensorConst*#
_class
loc:@conv-maxpool-5/W*%
valueB"   ,     ?   *
_output_shapes
:*
dtype0
?
/conv-maxpool-5/W/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_output_shapes
: *#
_class
loc:@conv-maxpool-5/W*
dtype0
?
)conv-maxpool-5/W/Adam_1/Initializer/zerosFill9conv-maxpool-5/W/Adam_1/Initializer/zeros/shape_as_tensor/conv-maxpool-5/W/Adam_1/Initializer/zeros/Const*(
_output_shapes
:??*
T0*#
_class
loc:@conv-maxpool-5/W
?
conv-maxpool-5/W/Adam_1
VariableV2*
dtype0*(
_output_shapes
:??*#
_class
loc:@conv-maxpool-5/W*
shape:??
?
conv-maxpool-5/W/Adam_1/AssignAssignconv-maxpool-5/W/Adam_1)conv-maxpool-5/W/Adam_1/Initializer/zeros*(
_output_shapes
:??*
T0*#
_class
loc:@conv-maxpool-5/W
?
conv-maxpool-5/W/Adam_1/readIdentityconv-maxpool-5/W/Adam_1*(
_output_shapes
:??*#
_class
loc:@conv-maxpool-5/W*
T0
?
'conv-maxpool-5/b/Adam/Initializer/zerosConst*
_output_shapes	
:?*#
_class
loc:@conv-maxpool-5/b*
valueB?*    *
dtype0
?
conv-maxpool-5/b/Adam
VariableV2*
shape:?*
dtype0*#
_class
loc:@conv-maxpool-5/b*
_output_shapes	
:?
?
conv-maxpool-5/b/Adam/AssignAssignconv-maxpool-5/b/Adam'conv-maxpool-5/b/Adam/Initializer/zeros*
_output_shapes	
:?*#
_class
loc:@conv-maxpool-5/b*
T0
?
conv-maxpool-5/b/Adam/readIdentityconv-maxpool-5/b/Adam*
_output_shapes	
:?*
T0*#
_class
loc:@conv-maxpool-5/b
?
)conv-maxpool-5/b/Adam_1/Initializer/zerosConst*
valueB?*    *#
_class
loc:@conv-maxpool-5/b*
dtype0*
_output_shapes	
:?
?
conv-maxpool-5/b/Adam_1
VariableV2*#
_class
loc:@conv-maxpool-5/b*
shape:?*
_output_shapes	
:?*
dtype0
?
conv-maxpool-5/b/Adam_1/AssignAssignconv-maxpool-5/b/Adam_1)conv-maxpool-5/b/Adam_1/Initializer/zeros*#
_class
loc:@conv-maxpool-5/b*
_output_shapes	
:?*
T0
?
conv-maxpool-5/b/Adam_1/readIdentityconv-maxpool-5/b/Adam_1*#
_class
loc:@conv-maxpool-5/b*
_output_shapes	
:?*
T0
?
(W/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_class

loc:@W*
_output_shapes
:*
valueB"?  ?   
y
W/Adam/Initializer/zeros/ConstConst*
_output_shapes
: *
_class

loc:@W*
dtype0*
valueB
 *    
?
W/Adam/Initializer/zerosFill(W/Adam/Initializer/zeros/shape_as_tensorW/Adam/Initializer/zeros/Const* 
_output_shapes
:
??*
_class

loc:@W*
T0
p
W/Adam
VariableV2*
dtype0*
shape:
??*
_class

loc:@W* 
_output_shapes
:
??
z
W/Adam/AssignAssignW/AdamW/Adam/Initializer/zeros*
_class

loc:@W*
T0* 
_output_shapes
:
??
`
W/Adam/readIdentityW/Adam*
T0* 
_output_shapes
:
??*
_class

loc:@W
?
*W/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class

loc:@W*
dtype0*
valueB"?  ?   *
_output_shapes
:
{
 W/Adam_1/Initializer/zeros/ConstConst*
_class

loc:@W*
dtype0*
_output_shapes
: *
valueB
 *    
?
W/Adam_1/Initializer/zerosFill*W/Adam_1/Initializer/zeros/shape_as_tensor W/Adam_1/Initializer/zeros/Const*
_class

loc:@W*
T0* 
_output_shapes
:
??
r
W/Adam_1
VariableV2*
dtype0*
shape:
??*
_class

loc:@W* 
_output_shapes
:
??
?
W/Adam_1/AssignAssignW/Adam_1W/Adam_1/Initializer/zeros* 
_output_shapes
:
??*
T0*
_class

loc:@W
d
W/Adam_1/readIdentityW/Adam_1*
_class

loc:@W* 
_output_shapes
:
??*
T0
?
output/b/Adam/Initializer/zerosConst*
_class
loc:@output/b*
valueB?*    *
_output_shapes	
:?*
dtype0
t
output/b/Adam
VariableV2*
shape:?*
_class
loc:@output/b*
_output_shapes	
:?*
dtype0
?
output/b/Adam/AssignAssignoutput/b/Adamoutput/b/Adam/Initializer/zeros*
T0*
_output_shapes	
:?*
_class
loc:@output/b
p
output/b/Adam/readIdentityoutput/b/Adam*
T0*
_output_shapes	
:?*
_class
loc:@output/b
?
!output/b/Adam_1/Initializer/zerosConst*
_class
loc:@output/b*
valueB?*    *
dtype0*
_output_shapes	
:?
v
output/b/Adam_1
VariableV2*
_output_shapes	
:?*
dtype0*
shape:?*
_class
loc:@output/b
?
output/b/Adam_1/AssignAssignoutput/b/Adam_1!output/b/Adam_1/Initializer/zeros*
_class
loc:@output/b*
T0*
_output_shapes	
:?
t
output/b/Adam_1/readIdentityoutput/b/Adam_1*
_class
loc:@output/b*
_output_shapes	
:?*
T0
W
Adam/learning_rateConst*
valueB
 *o?:*
_output_shapes
: *
dtype0
O

Adam/beta1Const*
dtype0*
valueB
 *fff?*
_output_shapes
: 
O

Adam/beta2Const*
valueB
 *w??*
_output_shapes
: *
dtype0
Q
Adam/epsilonConst*
valueB
 *w?+2*
_output_shapes
: *
dtype0
?
Adam/update_embedding/W/UniqueUnique3gradients/embedding/embedding_lookup_grad/Reshape_1"/device:GPU:0*
T0*
_class
loc:@embedding/W*2
_output_shapes 
:?????????:?????????
?
Adam/update_embedding/W/ShapeShapeAdam/update_embedding/W/Unique"/device:GPU:0*
_class
loc:@embedding/W*
T0*
_output_shapes
:
?
+Adam/update_embedding/W/strided_slice/stackConst"/device:GPU:0*
_class
loc:@embedding/W*
dtype0*
_output_shapes
:*
valueB: 
?
-Adam/update_embedding/W/strided_slice/stack_1Const"/device:GPU:0*
dtype0*
valueB:*
_class
loc:@embedding/W*
_output_shapes
:
?
-Adam/update_embedding/W/strided_slice/stack_2Const"/device:GPU:0*
_output_shapes
:*
dtype0*
valueB:*
_class
loc:@embedding/W
?
%Adam/update_embedding/W/strided_sliceStridedSliceAdam/update_embedding/W/Shape+Adam/update_embedding/W/strided_slice/stack-Adam/update_embedding/W/strided_slice/stack_1-Adam/update_embedding/W/strided_slice/stack_2"/device:GPU:0*
_output_shapes
: *
Index0*
_class
loc:@embedding/W*
shrink_axis_mask*
T0
?
*Adam/update_embedding/W/UnsortedSegmentSumUnsortedSegmentSum1gradients/embedding/embedding_lookup_grad/Reshape Adam/update_embedding/W/Unique:1%Adam/update_embedding/W/strided_slice"/device:GPU:0*
Tindices0*(
_output_shapes
:??????????*
_class
loc:@embedding/W*
T0
?
Adam/update_embedding/W/sub/xConst"/device:GPU:0*
_output_shapes
: *
dtype0*
_class
loc:@embedding/W*
valueB
 *  ??
?
Adam/update_embedding/W/subSubAdam/update_embedding/W/sub/xbeta2_power/read"/device:GPU:0*
_output_shapes
: *
_class
loc:@embedding/W*
T0
?
Adam/update_embedding/W/SqrtSqrtAdam/update_embedding/W/sub"/device:GPU:0*
_class
loc:@embedding/W*
T0*
_output_shapes
: 
?
Adam/update_embedding/W/mulMulAdam/learning_rateAdam/update_embedding/W/Sqrt"/device:GPU:0*
_class
loc:@embedding/W*
T0*
_output_shapes
: 
?
Adam/update_embedding/W/sub_1/xConst"/device:GPU:0*
_class
loc:@embedding/W*
valueB
 *  ??*
_output_shapes
: *
dtype0
?
Adam/update_embedding/W/sub_1SubAdam/update_embedding/W/sub_1/xbeta1_power/read"/device:GPU:0*
_output_shapes
: *
T0*
_class
loc:@embedding/W
?
Adam/update_embedding/W/truedivRealDivAdam/update_embedding/W/mulAdam/update_embedding/W/sub_1"/device:GPU:0*
_output_shapes
: *
T0*
_class
loc:@embedding/W
?
Adam/update_embedding/W/sub_2/xConst"/device:GPU:0*
dtype0*
_output_shapes
: *
_class
loc:@embedding/W*
valueB
 *  ??
?
Adam/update_embedding/W/sub_2SubAdam/update_embedding/W/sub_2/x
Adam/beta1"/device:GPU:0*
_class
loc:@embedding/W*
_output_shapes
: *
T0
?
Adam/update_embedding/W/mul_1Mul*Adam/update_embedding/W/UnsortedSegmentSumAdam/update_embedding/W/sub_2"/device:GPU:0*(
_output_shapes
:??????????*
T0*
_class
loc:@embedding/W
?
Adam/update_embedding/W/mul_2Mulembedding/W/Adam/read
Adam/beta1"/device:GPU:0*!
_output_shapes
:???*
_class
loc:@embedding/W*
T0
?
Adam/update_embedding/W/AssignAssignembedding/W/AdamAdam/update_embedding/W/mul_2"/device:GPU:0*
T0*!
_output_shapes
:???*
_class
loc:@embedding/W*
use_locking( 
?
"Adam/update_embedding/W/ScatterAdd
ScatterAddembedding/W/AdamAdam/update_embedding/W/UniqueAdam/update_embedding/W/mul_1^Adam/update_embedding/W/Assign"/device:GPU:0*
T0*
_class
loc:@embedding/W*!
_output_shapes
:???*
Tindices0
?
Adam/update_embedding/W/mul_3Mul*Adam/update_embedding/W/UnsortedSegmentSum*Adam/update_embedding/W/UnsortedSegmentSum"/device:GPU:0*
_class
loc:@embedding/W*
T0*(
_output_shapes
:??????????
?
Adam/update_embedding/W/sub_3/xConst"/device:GPU:0*
dtype0*
_output_shapes
: *
valueB
 *  ??*
_class
loc:@embedding/W
?
Adam/update_embedding/W/sub_3SubAdam/update_embedding/W/sub_3/x
Adam/beta2"/device:GPU:0*
_output_shapes
: *
T0*
_class
loc:@embedding/W
?
Adam/update_embedding/W/mul_4MulAdam/update_embedding/W/mul_3Adam/update_embedding/W/sub_3"/device:GPU:0*
T0*(
_output_shapes
:??????????*
_class
loc:@embedding/W
?
Adam/update_embedding/W/mul_5Mulembedding/W/Adam_1/read
Adam/beta2"/device:GPU:0*
T0*
_class
loc:@embedding/W*!
_output_shapes
:???
?
 Adam/update_embedding/W/Assign_1Assignembedding/W/Adam_1Adam/update_embedding/W/mul_5"/device:GPU:0*!
_output_shapes
:???*
_class
loc:@embedding/W*
T0*
use_locking( 
?
$Adam/update_embedding/W/ScatterAdd_1
ScatterAddembedding/W/Adam_1Adam/update_embedding/W/UniqueAdam/update_embedding/W/mul_4!^Adam/update_embedding/W/Assign_1"/device:GPU:0*
T0*!
_output_shapes
:???*
_class
loc:@embedding/W*
Tindices0
?
Adam/update_embedding/W/Sqrt_1Sqrt$Adam/update_embedding/W/ScatterAdd_1"/device:GPU:0*
T0*!
_output_shapes
:???*
_class
loc:@embedding/W
?
Adam/update_embedding/W/mul_6MulAdam/update_embedding/W/truediv"Adam/update_embedding/W/ScatterAdd"/device:GPU:0*!
_output_shapes
:???*
T0*
_class
loc:@embedding/W
?
Adam/update_embedding/W/addAddV2Adam/update_embedding/W/Sqrt_1Adam/epsilon"/device:GPU:0*
_class
loc:@embedding/W*
T0*!
_output_shapes
:???
?
!Adam/update_embedding/W/truediv_1RealDivAdam/update_embedding/W/mul_6Adam/update_embedding/W/add"/device:GPU:0*
T0*!
_output_shapes
:???*
_class
loc:@embedding/W
?
!Adam/update_embedding/W/AssignSub	AssignSubembedding/W!Adam/update_embedding/W/truediv_1"/device:GPU:0*!
_output_shapes
:???*
_class
loc:@embedding/W*
T0
?
"Adam/update_embedding/W/group_depsNoOp"^Adam/update_embedding/W/AssignSub#^Adam/update_embedding/W/ScatterAdd%^Adam/update_embedding/W/ScatterAdd_1"/device:GPU:0*
_class
loc:@embedding/W
?
&Adam/update_conv-maxpool-3/W/ApplyAdam	ApplyAdamconv-maxpool-3/Wconv-maxpool-3/W/Adamconv-maxpool-3/W/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon=gradients/conv-maxpool-3/conv_grad/tuple/control_dependency_1*(
_output_shapes
:??*#
_class
loc:@conv-maxpool-3/W*
T0
?
&Adam/update_conv-maxpool-3/b/ApplyAdam	ApplyAdamconv-maxpool-3/bconv-maxpool-3/b/Adamconv-maxpool-3/b/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon@gradients/conv-maxpool-3/BiasAdd_grad/tuple/control_dependency_1*#
_class
loc:@conv-maxpool-3/b*
_output_shapes	
:?*
T0
?
&Adam/update_conv-maxpool-4/W/ApplyAdam	ApplyAdamconv-maxpool-4/Wconv-maxpool-4/W/Adamconv-maxpool-4/W/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon=gradients/conv-maxpool-4/conv_grad/tuple/control_dependency_1*
T0*(
_output_shapes
:??*#
_class
loc:@conv-maxpool-4/W
?
&Adam/update_conv-maxpool-4/b/ApplyAdam	ApplyAdamconv-maxpool-4/bconv-maxpool-4/b/Adamconv-maxpool-4/b/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon@gradients/conv-maxpool-4/BiasAdd_grad/tuple/control_dependency_1*
_output_shapes	
:?*#
_class
loc:@conv-maxpool-4/b*
T0
?
&Adam/update_conv-maxpool-5/W/ApplyAdam	ApplyAdamconv-maxpool-5/Wconv-maxpool-5/W/Adamconv-maxpool-5/W/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon=gradients/conv-maxpool-5/conv_grad/tuple/control_dependency_1*
T0*(
_output_shapes
:??*#
_class
loc:@conv-maxpool-5/W
?
&Adam/update_conv-maxpool-5/b/ApplyAdam	ApplyAdamconv-maxpool-5/bconv-maxpool-5/b/Adamconv-maxpool-5/b/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon@gradients/conv-maxpool-5/BiasAdd_grad/tuple/control_dependency_1*
_output_shapes	
:?*#
_class
loc:@conv-maxpool-5/b*
T0
?
Adam/update_W/ApplyAdam	ApplyAdamWW/AdamW/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN_1* 
_output_shapes
:
??*
T0*
_class

loc:@W
?
Adam/update_output/b/ApplyAdam	ApplyAdamoutput/boutput/b/Adamoutput/b/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN*
_output_shapes	
:?*
_class
loc:@output/b*
T0
?
Adam/mulMulbeta1_power/read
Adam/beta1^Adam/update_W/ApplyAdam'^Adam/update_conv-maxpool-3/W/ApplyAdam'^Adam/update_conv-maxpool-3/b/ApplyAdam'^Adam/update_conv-maxpool-4/W/ApplyAdam'^Adam/update_conv-maxpool-4/b/ApplyAdam'^Adam/update_conv-maxpool-5/W/ApplyAdam'^Adam/update_conv-maxpool-5/b/ApplyAdam#^Adam/update_embedding/W/group_deps^Adam/update_output/b/ApplyAdam*
_output_shapes
: *
_class

loc:@W*
T0
v
Adam/AssignAssignbeta1_powerAdam/mul*
use_locking( *
T0*
_output_shapes
: *
_class

loc:@W
?

Adam/mul_1Mulbeta2_power/read
Adam/beta2^Adam/update_W/ApplyAdam'^Adam/update_conv-maxpool-3/W/ApplyAdam'^Adam/update_conv-maxpool-3/b/ApplyAdam'^Adam/update_conv-maxpool-4/W/ApplyAdam'^Adam/update_conv-maxpool-4/b/ApplyAdam'^Adam/update_conv-maxpool-5/W/ApplyAdam'^Adam/update_conv-maxpool-5/b/ApplyAdam#^Adam/update_embedding/W/group_deps^Adam/update_output/b/ApplyAdam*
_output_shapes
: *
_class

loc:@W*
T0
z
Adam/Assign_1Assignbeta2_power
Adam/mul_1*
use_locking( *
_class

loc:@W*
T0*
_output_shapes
: 
?
Adam/update/NoOpNoOp^Adam/Assign^Adam/Assign_1^Adam/update_W/ApplyAdam'^Adam/update_conv-maxpool-3/W/ApplyAdam'^Adam/update_conv-maxpool-3/b/ApplyAdam'^Adam/update_conv-maxpool-4/W/ApplyAdam'^Adam/update_conv-maxpool-4/b/ApplyAdam'^Adam/update_conv-maxpool-5/W/ApplyAdam'^Adam/update_conv-maxpool-5/b/ApplyAdam^Adam/update_output/b/ApplyAdam
N
Adam/update/NoOp_1NoOp#^Adam/update_embedding/W/group_deps"/device:GPU:0
;
Adam/updateNoOp^Adam/update/NoOp^Adam/update/NoOp_1
z

Adam/valueConst^Adam/update*
dtype0*
value	B :*
_class
loc:@global_step*
_output_shapes
: 
k
Adam	AssignAddglobal_step
Adam/value*
T0*
_class
loc:@global_step*
_output_shapes
: 
s
embedding/W_0/grad/hist/tagConst*
_output_shapes
: *
dtype0*(
valueB Bembedding/W_0/grad/hist
u
+embedding/W_0/grad/hist/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
w
-embedding/W_0/grad/hist/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
w
-embedding/W_0/grad/hist/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
?
%embedding/W_0/grad/hist/strided_sliceStridedSlice.gradients/embedding/embedding_lookup_grad/Cast+embedding/W_0/grad/hist/strided_slice/stack-embedding/W_0/grad/hist/strided_slice/stack_1-embedding/W_0/grad/hist/strided_slice/stack_2*
shrink_axis_mask*
Index0*
_output_shapes
: *
T0
?
embedding/W_0/grad/hist/valuesUnsortedSegmentSum1gradients/embedding/embedding_lookup_grad/Reshape3gradients/embedding/embedding_lookup_grad/Reshape_1%embedding/W_0/grad/hist/strided_slice*
Tindices0*!
_output_shapes
:???*
T0
?
embedding/W_0/grad/histHistogramSummaryembedding/W_0/grad/hist/tagembedding/W_0/grad/hist/values*
_output_shapes
: 
k
!zero_fraction/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
m
#zero_fraction/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
m
#zero_fraction/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
?
zero_fraction/strided_sliceStridedSlice.gradients/embedding/embedding_lookup_grad/Cast!zero_fraction/strided_slice/stack#zero_fraction/strided_slice/stack_1#zero_fraction/strided_slice/stack_2*
Index0*
shrink_axis_mask*
T0*
_output_shapes
: 
?
zero_fraction/valueUnsortedSegmentSum1gradients/embedding/embedding_lookup_grad/Reshape3gradients/embedding/embedding_lookup_grad/Reshape_1zero_fraction/strided_slice*
T0*
Tindices0*!
_output_shapes
:???
W
zero_fraction/SizeConst*
_output_shapes
: *
valueB
	 R???*
dtype0	
_
zero_fraction/LessEqual/yConst*
dtype0	*
valueB	 R????*
_output_shapes
: 
t
zero_fraction/LessEqual	LessEqualzero_fraction/Sizezero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
x
zero_fraction/cond/SwitchSwitchzero_fraction/LessEqualzero_fraction/LessEqual*
T0
*
_output_shapes
: : 
e
zero_fraction/cond/switch_tIdentityzero_fraction/cond/Switch:1*
_output_shapes
: *
T0

c
zero_fraction/cond/switch_fIdentityzero_fraction/cond/Switch*
T0
*
_output_shapes
: 
`
zero_fraction/cond/pred_idIdentityzero_fraction/LessEqual*
T0
*
_output_shapes
: 
?
&zero_fraction/cond/count_nonzero/zerosConst^zero_fraction/cond/switch_t*
dtype0*
valueB
 *    *
_output_shapes
: 
?
0zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchzero_fraction/valuezero_fraction/cond/pred_id*
T0*&
_class
loc:@zero_fraction/value*.
_output_shapes
:???:???
?
)zero_fraction/cond/count_nonzero/NotEqualNotEqual2zero_fraction/cond/count_nonzero/NotEqual/Switch:1&zero_fraction/cond/count_nonzero/zeros*
T0*!
_output_shapes
:???
?
%zero_fraction/cond/count_nonzero/CastCast)zero_fraction/cond/count_nonzero/NotEqual*!
_output_shapes
:???*

DstT0*

SrcT0

?
&zero_fraction/cond/count_nonzero/ConstConst^zero_fraction/cond/switch_t*
dtype0*
_output_shapes
:*
valueB"       
?
.zero_fraction/cond/count_nonzero/nonzero_countSum%zero_fraction/cond/count_nonzero/Cast&zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: 

zero_fraction/cond/CastCast.zero_fraction/cond/count_nonzero/nonzero_count*
_output_shapes
: *

DstT0	*

SrcT0
?
(zero_fraction/cond/count_nonzero_1/zerosConst^zero_fraction/cond/switch_f*
_output_shapes
: *
dtype0*
valueB
 *    
?
2zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchzero_fraction/valuezero_fraction/cond/pred_id*&
_class
loc:@zero_fraction/value*.
_output_shapes
:???:???*
T0
?
+zero_fraction/cond/count_nonzero_1/NotEqualNotEqual2zero_fraction/cond/count_nonzero_1/NotEqual/Switch(zero_fraction/cond/count_nonzero_1/zeros*
T0*!
_output_shapes
:???
?
'zero_fraction/cond/count_nonzero_1/CastCast+zero_fraction/cond/count_nonzero_1/NotEqual*

SrcT0
*

DstT0	*!
_output_shapes
:???
?
(zero_fraction/cond/count_nonzero_1/ConstConst^zero_fraction/cond/switch_f*
dtype0*
valueB"       *
_output_shapes
:
?
0zero_fraction/cond/count_nonzero_1/nonzero_countSum'zero_fraction/cond/count_nonzero_1/Cast(zero_fraction/cond/count_nonzero_1/Const*
_output_shapes
: *
T0	
?
zero_fraction/cond/MergeMerge0zero_fraction/cond/count_nonzero_1/nonzero_countzero_fraction/cond/Cast*
N*
_output_shapes
: : *
T0	
z
$zero_fraction/counts_to_fraction/subSubzero_fraction/Sizezero_fraction/cond/Merge*
T0	*
_output_shapes
: 
?
%zero_fraction/counts_to_fraction/CastCast$zero_fraction/counts_to_fraction/sub*

SrcT0	*

DstT0*
_output_shapes
: 
s
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size*

DstT0*
_output_shapes
: *

SrcT0	
?
(zero_fraction/counts_to_fraction/truedivRealDiv%zero_fraction/counts_to_fraction/Cast'zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
m
zero_fraction/fractionIdentity(zero_fraction/counts_to_fraction/truediv*
_output_shapes
: *
T0
|
 embedding/W_0/grad/sparsity/tagsConst*,
value#B! Bembedding/W_0/grad/sparsity*
dtype0*
_output_shapes
: 
?
embedding/W_0/grad/sparsityScalarSummary embedding/W_0/grad/sparsity/tagszero_fraction/fraction*
_output_shapes
: *
T0
}
 conv-maxpool-3/W_0/grad/hist/tagConst*
_output_shapes
: *
dtype0*-
value$B" Bconv-maxpool-3/W_0/grad/hist
?
conv-maxpool-3/W_0/grad/histHistogramSummary conv-maxpool-3/W_0/grad/hist/tag=gradients/conv-maxpool-3/conv_grad/tuple/control_dependency_1*
_output_shapes
: 
X
zero_fraction_1/SizeConst*
_output_shapes
: *
dtype0	*
valueB		 R??
a
zero_fraction_1/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R????
z
zero_fraction_1/LessEqual	LessEqualzero_fraction_1/Sizezero_fraction_1/LessEqual/y*
T0	*
_output_shapes
: 
~
zero_fraction_1/cond/SwitchSwitchzero_fraction_1/LessEqualzero_fraction_1/LessEqual*
_output_shapes
: : *
T0

i
zero_fraction_1/cond/switch_tIdentityzero_fraction_1/cond/Switch:1*
T0
*
_output_shapes
: 
g
zero_fraction_1/cond/switch_fIdentityzero_fraction_1/cond/Switch*
_output_shapes
: *
T0

d
zero_fraction_1/cond/pred_idIdentityzero_fraction_1/LessEqual*
T0
*
_output_shapes
: 
?
(zero_fraction_1/cond/count_nonzero/zerosConst^zero_fraction_1/cond/switch_t*
valueB
 *    *
_output_shapes
: *
dtype0
?
2zero_fraction_1/cond/count_nonzero/NotEqual/SwitchSwitch=gradients/conv-maxpool-3/conv_grad/tuple/control_dependency_1zero_fraction_1/cond/pred_id*
T0*<
_output_shapes*
(:??:??*J
_class@
><loc:@gradients/conv-maxpool-3/conv_grad/Conv2DBackpropFilter
?
+zero_fraction_1/cond/count_nonzero/NotEqualNotEqual4zero_fraction_1/cond/count_nonzero/NotEqual/Switch:1(zero_fraction_1/cond/count_nonzero/zeros*
T0*(
_output_shapes
:??
?
'zero_fraction_1/cond/count_nonzero/CastCast+zero_fraction_1/cond/count_nonzero/NotEqual*(
_output_shapes
:??*

DstT0*

SrcT0

?
(zero_fraction_1/cond/count_nonzero/ConstConst^zero_fraction_1/cond/switch_t*
_output_shapes
:*
dtype0*%
valueB"             
?
0zero_fraction_1/cond/count_nonzero/nonzero_countSum'zero_fraction_1/cond/count_nonzero/Cast(zero_fraction_1/cond/count_nonzero/Const*
_output_shapes
: *
T0
?
zero_fraction_1/cond/CastCast0zero_fraction_1/cond/count_nonzero/nonzero_count*
_output_shapes
: *

DstT0	*

SrcT0
?
*zero_fraction_1/cond/count_nonzero_1/zerosConst^zero_fraction_1/cond/switch_f*
dtype0*
valueB
 *    *
_output_shapes
: 
?
4zero_fraction_1/cond/count_nonzero_1/NotEqual/SwitchSwitch=gradients/conv-maxpool-3/conv_grad/tuple/control_dependency_1zero_fraction_1/cond/pred_id*J
_class@
><loc:@gradients/conv-maxpool-3/conv_grad/Conv2DBackpropFilter*<
_output_shapes*
(:??:??*
T0
?
-zero_fraction_1/cond/count_nonzero_1/NotEqualNotEqual4zero_fraction_1/cond/count_nonzero_1/NotEqual/Switch*zero_fraction_1/cond/count_nonzero_1/zeros*
T0*(
_output_shapes
:??
?
)zero_fraction_1/cond/count_nonzero_1/CastCast-zero_fraction_1/cond/count_nonzero_1/NotEqual*(
_output_shapes
:??*

SrcT0
*

DstT0	
?
*zero_fraction_1/cond/count_nonzero_1/ConstConst^zero_fraction_1/cond/switch_f*
_output_shapes
:*%
valueB"             *
dtype0
?
2zero_fraction_1/cond/count_nonzero_1/nonzero_countSum)zero_fraction_1/cond/count_nonzero_1/Cast*zero_fraction_1/cond/count_nonzero_1/Const*
_output_shapes
: *
T0	
?
zero_fraction_1/cond/MergeMerge2zero_fraction_1/cond/count_nonzero_1/nonzero_countzero_fraction_1/cond/Cast*
T0	*
_output_shapes
: : *
N
?
&zero_fraction_1/counts_to_fraction/subSubzero_fraction_1/Sizezero_fraction_1/cond/Merge*
T0	*
_output_shapes
: 
?
'zero_fraction_1/counts_to_fraction/CastCast&zero_fraction_1/counts_to_fraction/sub*

SrcT0	*

DstT0*
_output_shapes
: 
w
)zero_fraction_1/counts_to_fraction/Cast_1Castzero_fraction_1/Size*

SrcT0	*

DstT0*
_output_shapes
: 
?
*zero_fraction_1/counts_to_fraction/truedivRealDiv'zero_fraction_1/counts_to_fraction/Cast)zero_fraction_1/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
q
zero_fraction_1/fractionIdentity*zero_fraction_1/counts_to_fraction/truediv*
_output_shapes
: *
T0
?
%conv-maxpool-3/W_0/grad/sparsity/tagsConst*
dtype0*
_output_shapes
: *1
value(B& B conv-maxpool-3/W_0/grad/sparsity
?
 conv-maxpool-3/W_0/grad/sparsityScalarSummary%conv-maxpool-3/W_0/grad/sparsity/tagszero_fraction_1/fraction*
T0*
_output_shapes
: 
}
 conv-maxpool-3/b_0/grad/hist/tagConst*
dtype0*-
value$B" Bconv-maxpool-3/b_0/grad/hist*
_output_shapes
: 
?
conv-maxpool-3/b_0/grad/histHistogramSummary conv-maxpool-3/b_0/grad/hist/tag@gradients/conv-maxpool-3/BiasAdd_grad/tuple/control_dependency_1*
_output_shapes
: 
W
zero_fraction_2/SizeConst*
value
B	 R?*
dtype0	*
_output_shapes
: 
a
zero_fraction_2/LessEqual/yConst*
dtype0	*
_output_shapes
: *
valueB	 R????
z
zero_fraction_2/LessEqual	LessEqualzero_fraction_2/Sizezero_fraction_2/LessEqual/y*
_output_shapes
: *
T0	
~
zero_fraction_2/cond/SwitchSwitchzero_fraction_2/LessEqualzero_fraction_2/LessEqual*
_output_shapes
: : *
T0

i
zero_fraction_2/cond/switch_tIdentityzero_fraction_2/cond/Switch:1*
_output_shapes
: *
T0

g
zero_fraction_2/cond/switch_fIdentityzero_fraction_2/cond/Switch*
T0
*
_output_shapes
: 
d
zero_fraction_2/cond/pred_idIdentityzero_fraction_2/LessEqual*
_output_shapes
: *
T0

?
(zero_fraction_2/cond/count_nonzero/zerosConst^zero_fraction_2/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    
?
2zero_fraction_2/cond/count_nonzero/NotEqual/SwitchSwitch@gradients/conv-maxpool-3/BiasAdd_grad/tuple/control_dependency_1zero_fraction_2/cond/pred_id*
T0*D
_class:
86loc:@gradients/conv-maxpool-3/BiasAdd_grad/BiasAddGrad*"
_output_shapes
:?:?
?
+zero_fraction_2/cond/count_nonzero/NotEqualNotEqual4zero_fraction_2/cond/count_nonzero/NotEqual/Switch:1(zero_fraction_2/cond/count_nonzero/zeros*
_output_shapes	
:?*
T0
?
'zero_fraction_2/cond/count_nonzero/CastCast+zero_fraction_2/cond/count_nonzero/NotEqual*

SrcT0
*

DstT0*
_output_shapes	
:?
?
(zero_fraction_2/cond/count_nonzero/ConstConst^zero_fraction_2/cond/switch_t*
_output_shapes
:*
dtype0*
valueB: 
?
0zero_fraction_2/cond/count_nonzero/nonzero_countSum'zero_fraction_2/cond/count_nonzero/Cast(zero_fraction_2/cond/count_nonzero/Const*
T0*
_output_shapes
: 
?
zero_fraction_2/cond/CastCast0zero_fraction_2/cond/count_nonzero/nonzero_count*
_output_shapes
: *

DstT0	*

SrcT0
?
*zero_fraction_2/cond/count_nonzero_1/zerosConst^zero_fraction_2/cond/switch_f*
_output_shapes
: *
dtype0*
valueB
 *    
?
4zero_fraction_2/cond/count_nonzero_1/NotEqual/SwitchSwitch@gradients/conv-maxpool-3/BiasAdd_grad/tuple/control_dependency_1zero_fraction_2/cond/pred_id*
T0*"
_output_shapes
:?:?*D
_class:
86loc:@gradients/conv-maxpool-3/BiasAdd_grad/BiasAddGrad
?
-zero_fraction_2/cond/count_nonzero_1/NotEqualNotEqual4zero_fraction_2/cond/count_nonzero_1/NotEqual/Switch*zero_fraction_2/cond/count_nonzero_1/zeros*
T0*
_output_shapes	
:?
?
)zero_fraction_2/cond/count_nonzero_1/CastCast-zero_fraction_2/cond/count_nonzero_1/NotEqual*
_output_shapes	
:?*

DstT0	*

SrcT0

?
*zero_fraction_2/cond/count_nonzero_1/ConstConst^zero_fraction_2/cond/switch_f*
_output_shapes
:*
valueB: *
dtype0
?
2zero_fraction_2/cond/count_nonzero_1/nonzero_countSum)zero_fraction_2/cond/count_nonzero_1/Cast*zero_fraction_2/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 
?
zero_fraction_2/cond/MergeMerge2zero_fraction_2/cond/count_nonzero_1/nonzero_countzero_fraction_2/cond/Cast*
_output_shapes
: : *
T0	*
N
?
&zero_fraction_2/counts_to_fraction/subSubzero_fraction_2/Sizezero_fraction_2/cond/Merge*
T0	*
_output_shapes
: 
?
'zero_fraction_2/counts_to_fraction/CastCast&zero_fraction_2/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0
w
)zero_fraction_2/counts_to_fraction/Cast_1Castzero_fraction_2/Size*

SrcT0	*
_output_shapes
: *

DstT0
?
*zero_fraction_2/counts_to_fraction/truedivRealDiv'zero_fraction_2/counts_to_fraction/Cast)zero_fraction_2/counts_to_fraction/Cast_1*
_output_shapes
: *
T0
q
zero_fraction_2/fractionIdentity*zero_fraction_2/counts_to_fraction/truediv*
_output_shapes
: *
T0
?
%conv-maxpool-3/b_0/grad/sparsity/tagsConst*
dtype0*1
value(B& B conv-maxpool-3/b_0/grad/sparsity*
_output_shapes
: 
?
 conv-maxpool-3/b_0/grad/sparsityScalarSummary%conv-maxpool-3/b_0/grad/sparsity/tagszero_fraction_2/fraction*
T0*
_output_shapes
: 
}
 conv-maxpool-4/W_0/grad/hist/tagConst*
dtype0*
_output_shapes
: *-
value$B" Bconv-maxpool-4/W_0/grad/hist
?
conv-maxpool-4/W_0/grad/histHistogramSummary conv-maxpool-4/W_0/grad/hist/tag=gradients/conv-maxpool-4/conv_grad/tuple/control_dependency_1*
_output_shapes
: 
X
zero_fraction_3/SizeConst*
_output_shapes
: *
valueB		 R??	*
dtype0	
a
zero_fraction_3/LessEqual/yConst*
dtype0	*
valueB	 R????*
_output_shapes
: 
z
zero_fraction_3/LessEqual	LessEqualzero_fraction_3/Sizezero_fraction_3/LessEqual/y*
T0	*
_output_shapes
: 
~
zero_fraction_3/cond/SwitchSwitchzero_fraction_3/LessEqualzero_fraction_3/LessEqual*
_output_shapes
: : *
T0

i
zero_fraction_3/cond/switch_tIdentityzero_fraction_3/cond/Switch:1*
_output_shapes
: *
T0

g
zero_fraction_3/cond/switch_fIdentityzero_fraction_3/cond/Switch*
_output_shapes
: *
T0

d
zero_fraction_3/cond/pred_idIdentityzero_fraction_3/LessEqual*
_output_shapes
: *
T0

?
(zero_fraction_3/cond/count_nonzero/zerosConst^zero_fraction_3/cond/switch_t*
valueB
 *    *
_output_shapes
: *
dtype0
?
2zero_fraction_3/cond/count_nonzero/NotEqual/SwitchSwitch=gradients/conv-maxpool-4/conv_grad/tuple/control_dependency_1zero_fraction_3/cond/pred_id*J
_class@
><loc:@gradients/conv-maxpool-4/conv_grad/Conv2DBackpropFilter*<
_output_shapes*
(:??:??*
T0
?
+zero_fraction_3/cond/count_nonzero/NotEqualNotEqual4zero_fraction_3/cond/count_nonzero/NotEqual/Switch:1(zero_fraction_3/cond/count_nonzero/zeros*
T0*(
_output_shapes
:??
?
'zero_fraction_3/cond/count_nonzero/CastCast+zero_fraction_3/cond/count_nonzero/NotEqual*(
_output_shapes
:??*

DstT0*

SrcT0

?
(zero_fraction_3/cond/count_nonzero/ConstConst^zero_fraction_3/cond/switch_t*
_output_shapes
:*%
valueB"             *
dtype0
?
0zero_fraction_3/cond/count_nonzero/nonzero_countSum'zero_fraction_3/cond/count_nonzero/Cast(zero_fraction_3/cond/count_nonzero/Const*
_output_shapes
: *
T0
?
zero_fraction_3/cond/CastCast0zero_fraction_3/cond/count_nonzero/nonzero_count*

DstT0	*
_output_shapes
: *

SrcT0
?
*zero_fraction_3/cond/count_nonzero_1/zerosConst^zero_fraction_3/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
?
4zero_fraction_3/cond/count_nonzero_1/NotEqual/SwitchSwitch=gradients/conv-maxpool-4/conv_grad/tuple/control_dependency_1zero_fraction_3/cond/pred_id*J
_class@
><loc:@gradients/conv-maxpool-4/conv_grad/Conv2DBackpropFilter*<
_output_shapes*
(:??:??*
T0
?
-zero_fraction_3/cond/count_nonzero_1/NotEqualNotEqual4zero_fraction_3/cond/count_nonzero_1/NotEqual/Switch*zero_fraction_3/cond/count_nonzero_1/zeros*
T0*(
_output_shapes
:??
?
)zero_fraction_3/cond/count_nonzero_1/CastCast-zero_fraction_3/cond/count_nonzero_1/NotEqual*(
_output_shapes
:??*

SrcT0
*

DstT0	
?
*zero_fraction_3/cond/count_nonzero_1/ConstConst^zero_fraction_3/cond/switch_f*
dtype0*
_output_shapes
:*%
valueB"             
?
2zero_fraction_3/cond/count_nonzero_1/nonzero_countSum)zero_fraction_3/cond/count_nonzero_1/Cast*zero_fraction_3/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 
?
zero_fraction_3/cond/MergeMerge2zero_fraction_3/cond/count_nonzero_1/nonzero_countzero_fraction_3/cond/Cast*
T0	*
_output_shapes
: : *
N
?
&zero_fraction_3/counts_to_fraction/subSubzero_fraction_3/Sizezero_fraction_3/cond/Merge*
T0	*
_output_shapes
: 
?
'zero_fraction_3/counts_to_fraction/CastCast&zero_fraction_3/counts_to_fraction/sub*

DstT0*

SrcT0	*
_output_shapes
: 
w
)zero_fraction_3/counts_to_fraction/Cast_1Castzero_fraction_3/Size*

DstT0*
_output_shapes
: *

SrcT0	
?
*zero_fraction_3/counts_to_fraction/truedivRealDiv'zero_fraction_3/counts_to_fraction/Cast)zero_fraction_3/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
q
zero_fraction_3/fractionIdentity*zero_fraction_3/counts_to_fraction/truediv*
T0*
_output_shapes
: 
?
%conv-maxpool-4/W_0/grad/sparsity/tagsConst*
dtype0*
_output_shapes
: *1
value(B& B conv-maxpool-4/W_0/grad/sparsity
?
 conv-maxpool-4/W_0/grad/sparsityScalarSummary%conv-maxpool-4/W_0/grad/sparsity/tagszero_fraction_3/fraction*
_output_shapes
: *
T0
}
 conv-maxpool-4/b_0/grad/hist/tagConst*-
value$B" Bconv-maxpool-4/b_0/grad/hist*
dtype0*
_output_shapes
: 
?
conv-maxpool-4/b_0/grad/histHistogramSummary conv-maxpool-4/b_0/grad/hist/tag@gradients/conv-maxpool-4/BiasAdd_grad/tuple/control_dependency_1*
_output_shapes
: 
W
zero_fraction_4/SizeConst*
value
B	 R?*
dtype0	*
_output_shapes
: 
a
zero_fraction_4/LessEqual/yConst*
_output_shapes
: *
valueB	 R????*
dtype0	
z
zero_fraction_4/LessEqual	LessEqualzero_fraction_4/Sizezero_fraction_4/LessEqual/y*
T0	*
_output_shapes
: 
~
zero_fraction_4/cond/SwitchSwitchzero_fraction_4/LessEqualzero_fraction_4/LessEqual*
_output_shapes
: : *
T0

i
zero_fraction_4/cond/switch_tIdentityzero_fraction_4/cond/Switch:1*
T0
*
_output_shapes
: 
g
zero_fraction_4/cond/switch_fIdentityzero_fraction_4/cond/Switch*
_output_shapes
: *
T0

d
zero_fraction_4/cond/pred_idIdentityzero_fraction_4/LessEqual*
T0
*
_output_shapes
: 
?
(zero_fraction_4/cond/count_nonzero/zerosConst^zero_fraction_4/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    
?
2zero_fraction_4/cond/count_nonzero/NotEqual/SwitchSwitch@gradients/conv-maxpool-4/BiasAdd_grad/tuple/control_dependency_1zero_fraction_4/cond/pred_id*"
_output_shapes
:?:?*
T0*D
_class:
86loc:@gradients/conv-maxpool-4/BiasAdd_grad/BiasAddGrad
?
+zero_fraction_4/cond/count_nonzero/NotEqualNotEqual4zero_fraction_4/cond/count_nonzero/NotEqual/Switch:1(zero_fraction_4/cond/count_nonzero/zeros*
T0*
_output_shapes	
:?
?
'zero_fraction_4/cond/count_nonzero/CastCast+zero_fraction_4/cond/count_nonzero/NotEqual*

DstT0*
_output_shapes	
:?*

SrcT0

?
(zero_fraction_4/cond/count_nonzero/ConstConst^zero_fraction_4/cond/switch_t*
_output_shapes
:*
valueB: *
dtype0
?
0zero_fraction_4/cond/count_nonzero/nonzero_countSum'zero_fraction_4/cond/count_nonzero/Cast(zero_fraction_4/cond/count_nonzero/Const*
_output_shapes
: *
T0
?
zero_fraction_4/cond/CastCast0zero_fraction_4/cond/count_nonzero/nonzero_count*
_output_shapes
: *

SrcT0*

DstT0	
?
*zero_fraction_4/cond/count_nonzero_1/zerosConst^zero_fraction_4/cond/switch_f*
_output_shapes
: *
valueB
 *    *
dtype0
?
4zero_fraction_4/cond/count_nonzero_1/NotEqual/SwitchSwitch@gradients/conv-maxpool-4/BiasAdd_grad/tuple/control_dependency_1zero_fraction_4/cond/pred_id*"
_output_shapes
:?:?*
T0*D
_class:
86loc:@gradients/conv-maxpool-4/BiasAdd_grad/BiasAddGrad
?
-zero_fraction_4/cond/count_nonzero_1/NotEqualNotEqual4zero_fraction_4/cond/count_nonzero_1/NotEqual/Switch*zero_fraction_4/cond/count_nonzero_1/zeros*
T0*
_output_shapes	
:?
?
)zero_fraction_4/cond/count_nonzero_1/CastCast-zero_fraction_4/cond/count_nonzero_1/NotEqual*

SrcT0
*

DstT0	*
_output_shapes	
:?
?
*zero_fraction_4/cond/count_nonzero_1/ConstConst^zero_fraction_4/cond/switch_f*
_output_shapes
:*
valueB: *
dtype0
?
2zero_fraction_4/cond/count_nonzero_1/nonzero_countSum)zero_fraction_4/cond/count_nonzero_1/Cast*zero_fraction_4/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 
?
zero_fraction_4/cond/MergeMerge2zero_fraction_4/cond/count_nonzero_1/nonzero_countzero_fraction_4/cond/Cast*
N*
_output_shapes
: : *
T0	
?
&zero_fraction_4/counts_to_fraction/subSubzero_fraction_4/Sizezero_fraction_4/cond/Merge*
T0	*
_output_shapes
: 
?
'zero_fraction_4/counts_to_fraction/CastCast&zero_fraction_4/counts_to_fraction/sub*

SrcT0	*

DstT0*
_output_shapes
: 
w
)zero_fraction_4/counts_to_fraction/Cast_1Castzero_fraction_4/Size*

SrcT0	*

DstT0*
_output_shapes
: 
?
*zero_fraction_4/counts_to_fraction/truedivRealDiv'zero_fraction_4/counts_to_fraction/Cast)zero_fraction_4/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
q
zero_fraction_4/fractionIdentity*zero_fraction_4/counts_to_fraction/truediv*
_output_shapes
: *
T0
?
%conv-maxpool-4/b_0/grad/sparsity/tagsConst*
_output_shapes
: *1
value(B& B conv-maxpool-4/b_0/grad/sparsity*
dtype0
?
 conv-maxpool-4/b_0/grad/sparsityScalarSummary%conv-maxpool-4/b_0/grad/sparsity/tagszero_fraction_4/fraction*
T0*
_output_shapes
: 
}
 conv-maxpool-5/W_0/grad/hist/tagConst*-
value$B" Bconv-maxpool-5/W_0/grad/hist*
_output_shapes
: *
dtype0
?
conv-maxpool-5/W_0/grad/histHistogramSummary conv-maxpool-5/W_0/grad/hist/tag=gradients/conv-maxpool-5/conv_grad/tuple/control_dependency_1*
_output_shapes
: 
X
zero_fraction_5/SizeConst*
_output_shapes
: *
valueB		 R??*
dtype0	
a
zero_fraction_5/LessEqual/yConst*
_output_shapes
: *
valueB	 R????*
dtype0	
z
zero_fraction_5/LessEqual	LessEqualzero_fraction_5/Sizezero_fraction_5/LessEqual/y*
_output_shapes
: *
T0	
~
zero_fraction_5/cond/SwitchSwitchzero_fraction_5/LessEqualzero_fraction_5/LessEqual*
_output_shapes
: : *
T0

i
zero_fraction_5/cond/switch_tIdentityzero_fraction_5/cond/Switch:1*
_output_shapes
: *
T0

g
zero_fraction_5/cond/switch_fIdentityzero_fraction_5/cond/Switch*
T0
*
_output_shapes
: 
d
zero_fraction_5/cond/pred_idIdentityzero_fraction_5/LessEqual*
_output_shapes
: *
T0

?
(zero_fraction_5/cond/count_nonzero/zerosConst^zero_fraction_5/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
?
2zero_fraction_5/cond/count_nonzero/NotEqual/SwitchSwitch=gradients/conv-maxpool-5/conv_grad/tuple/control_dependency_1zero_fraction_5/cond/pred_id*<
_output_shapes*
(:??:??*J
_class@
><loc:@gradients/conv-maxpool-5/conv_grad/Conv2DBackpropFilter*
T0
?
+zero_fraction_5/cond/count_nonzero/NotEqualNotEqual4zero_fraction_5/cond/count_nonzero/NotEqual/Switch:1(zero_fraction_5/cond/count_nonzero/zeros*
T0*(
_output_shapes
:??
?
'zero_fraction_5/cond/count_nonzero/CastCast+zero_fraction_5/cond/count_nonzero/NotEqual*(
_output_shapes
:??*

SrcT0
*

DstT0
?
(zero_fraction_5/cond/count_nonzero/ConstConst^zero_fraction_5/cond/switch_t*%
valueB"             *
_output_shapes
:*
dtype0
?
0zero_fraction_5/cond/count_nonzero/nonzero_countSum'zero_fraction_5/cond/count_nonzero/Cast(zero_fraction_5/cond/count_nonzero/Const*
_output_shapes
: *
T0
?
zero_fraction_5/cond/CastCast0zero_fraction_5/cond/count_nonzero/nonzero_count*
_output_shapes
: *

DstT0	*

SrcT0
?
*zero_fraction_5/cond/count_nonzero_1/zerosConst^zero_fraction_5/cond/switch_f*
valueB
 *    *
_output_shapes
: *
dtype0
?
4zero_fraction_5/cond/count_nonzero_1/NotEqual/SwitchSwitch=gradients/conv-maxpool-5/conv_grad/tuple/control_dependency_1zero_fraction_5/cond/pred_id*J
_class@
><loc:@gradients/conv-maxpool-5/conv_grad/Conv2DBackpropFilter*<
_output_shapes*
(:??:??*
T0
?
-zero_fraction_5/cond/count_nonzero_1/NotEqualNotEqual4zero_fraction_5/cond/count_nonzero_1/NotEqual/Switch*zero_fraction_5/cond/count_nonzero_1/zeros*
T0*(
_output_shapes
:??
?
)zero_fraction_5/cond/count_nonzero_1/CastCast-zero_fraction_5/cond/count_nonzero_1/NotEqual*(
_output_shapes
:??*

SrcT0
*

DstT0	
?
*zero_fraction_5/cond/count_nonzero_1/ConstConst^zero_fraction_5/cond/switch_f*
_output_shapes
:*%
valueB"             *
dtype0
?
2zero_fraction_5/cond/count_nonzero_1/nonzero_countSum)zero_fraction_5/cond/count_nonzero_1/Cast*zero_fraction_5/cond/count_nonzero_1/Const*
_output_shapes
: *
T0	
?
zero_fraction_5/cond/MergeMerge2zero_fraction_5/cond/count_nonzero_1/nonzero_countzero_fraction_5/cond/Cast*
N*
T0	*
_output_shapes
: : 
?
&zero_fraction_5/counts_to_fraction/subSubzero_fraction_5/Sizezero_fraction_5/cond/Merge*
_output_shapes
: *
T0	
?
'zero_fraction_5/counts_to_fraction/CastCast&zero_fraction_5/counts_to_fraction/sub*

SrcT0	*

DstT0*
_output_shapes
: 
w
)zero_fraction_5/counts_to_fraction/Cast_1Castzero_fraction_5/Size*

SrcT0	*

DstT0*
_output_shapes
: 
?
*zero_fraction_5/counts_to_fraction/truedivRealDiv'zero_fraction_5/counts_to_fraction/Cast)zero_fraction_5/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
q
zero_fraction_5/fractionIdentity*zero_fraction_5/counts_to_fraction/truediv*
T0*
_output_shapes
: 
?
%conv-maxpool-5/W_0/grad/sparsity/tagsConst*1
value(B& B conv-maxpool-5/W_0/grad/sparsity*
dtype0*
_output_shapes
: 
?
 conv-maxpool-5/W_0/grad/sparsityScalarSummary%conv-maxpool-5/W_0/grad/sparsity/tagszero_fraction_5/fraction*
T0*
_output_shapes
: 
}
 conv-maxpool-5/b_0/grad/hist/tagConst*
_output_shapes
: *-
value$B" Bconv-maxpool-5/b_0/grad/hist*
dtype0
?
conv-maxpool-5/b_0/grad/histHistogramSummary conv-maxpool-5/b_0/grad/hist/tag@gradients/conv-maxpool-5/BiasAdd_grad/tuple/control_dependency_1*
_output_shapes
: 
W
zero_fraction_6/SizeConst*
_output_shapes
: *
value
B	 R?*
dtype0	
a
zero_fraction_6/LessEqual/yConst*
_output_shapes
: *
valueB	 R????*
dtype0	
z
zero_fraction_6/LessEqual	LessEqualzero_fraction_6/Sizezero_fraction_6/LessEqual/y*
T0	*
_output_shapes
: 
~
zero_fraction_6/cond/SwitchSwitchzero_fraction_6/LessEqualzero_fraction_6/LessEqual*
T0
*
_output_shapes
: : 
i
zero_fraction_6/cond/switch_tIdentityzero_fraction_6/cond/Switch:1*
T0
*
_output_shapes
: 
g
zero_fraction_6/cond/switch_fIdentityzero_fraction_6/cond/Switch*
_output_shapes
: *
T0

d
zero_fraction_6/cond/pred_idIdentityzero_fraction_6/LessEqual*
_output_shapes
: *
T0

?
(zero_fraction_6/cond/count_nonzero/zerosConst^zero_fraction_6/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
?
2zero_fraction_6/cond/count_nonzero/NotEqual/SwitchSwitch@gradients/conv-maxpool-5/BiasAdd_grad/tuple/control_dependency_1zero_fraction_6/cond/pred_id*D
_class:
86loc:@gradients/conv-maxpool-5/BiasAdd_grad/BiasAddGrad*
T0*"
_output_shapes
:?:?
?
+zero_fraction_6/cond/count_nonzero/NotEqualNotEqual4zero_fraction_6/cond/count_nonzero/NotEqual/Switch:1(zero_fraction_6/cond/count_nonzero/zeros*
T0*
_output_shapes	
:?
?
'zero_fraction_6/cond/count_nonzero/CastCast+zero_fraction_6/cond/count_nonzero/NotEqual*

SrcT0
*
_output_shapes	
:?*

DstT0
?
(zero_fraction_6/cond/count_nonzero/ConstConst^zero_fraction_6/cond/switch_t*
dtype0*
_output_shapes
:*
valueB: 
?
0zero_fraction_6/cond/count_nonzero/nonzero_countSum'zero_fraction_6/cond/count_nonzero/Cast(zero_fraction_6/cond/count_nonzero/Const*
T0*
_output_shapes
: 
?
zero_fraction_6/cond/CastCast0zero_fraction_6/cond/count_nonzero/nonzero_count*

SrcT0*

DstT0	*
_output_shapes
: 
?
*zero_fraction_6/cond/count_nonzero_1/zerosConst^zero_fraction_6/cond/switch_f*
valueB
 *    *
_output_shapes
: *
dtype0
?
4zero_fraction_6/cond/count_nonzero_1/NotEqual/SwitchSwitch@gradients/conv-maxpool-5/BiasAdd_grad/tuple/control_dependency_1zero_fraction_6/cond/pred_id*
T0*D
_class:
86loc:@gradients/conv-maxpool-5/BiasAdd_grad/BiasAddGrad*"
_output_shapes
:?:?
?
-zero_fraction_6/cond/count_nonzero_1/NotEqualNotEqual4zero_fraction_6/cond/count_nonzero_1/NotEqual/Switch*zero_fraction_6/cond/count_nonzero_1/zeros*
_output_shapes	
:?*
T0
?
)zero_fraction_6/cond/count_nonzero_1/CastCast-zero_fraction_6/cond/count_nonzero_1/NotEqual*

SrcT0
*

DstT0	*
_output_shapes	
:?
?
*zero_fraction_6/cond/count_nonzero_1/ConstConst^zero_fraction_6/cond/switch_f*
valueB: *
dtype0*
_output_shapes
:
?
2zero_fraction_6/cond/count_nonzero_1/nonzero_countSum)zero_fraction_6/cond/count_nonzero_1/Cast*zero_fraction_6/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 
?
zero_fraction_6/cond/MergeMerge2zero_fraction_6/cond/count_nonzero_1/nonzero_countzero_fraction_6/cond/Cast*
_output_shapes
: : *
T0	*
N
?
&zero_fraction_6/counts_to_fraction/subSubzero_fraction_6/Sizezero_fraction_6/cond/Merge*
T0	*
_output_shapes
: 
?
'zero_fraction_6/counts_to_fraction/CastCast&zero_fraction_6/counts_to_fraction/sub*

SrcT0	*

DstT0*
_output_shapes
: 
w
)zero_fraction_6/counts_to_fraction/Cast_1Castzero_fraction_6/Size*
_output_shapes
: *

DstT0*

SrcT0	
?
*zero_fraction_6/counts_to_fraction/truedivRealDiv'zero_fraction_6/counts_to_fraction/Cast)zero_fraction_6/counts_to_fraction/Cast_1*
_output_shapes
: *
T0
q
zero_fraction_6/fractionIdentity*zero_fraction_6/counts_to_fraction/truediv*
_output_shapes
: *
T0
?
%conv-maxpool-5/b_0/grad/sparsity/tagsConst*1
value(B& B conv-maxpool-5/b_0/grad/sparsity*
_output_shapes
: *
dtype0
?
 conv-maxpool-5/b_0/grad/sparsityScalarSummary%conv-maxpool-5/b_0/grad/sparsity/tagszero_fraction_6/fraction*
_output_shapes
: *
T0
_
W_0/grad/hist/tagConst*
dtype0*
_output_shapes
: *
valueB BW_0/grad/hist
^
W_0/grad/histHistogramSummaryW_0/grad/hist/taggradients/AddN_1*
_output_shapes
: 
X
zero_fraction_7/SizeConst*
dtype0	*
_output_shapes
: *
valueB		 R??
a
zero_fraction_7/LessEqual/yConst*
_output_shapes
: *
valueB	 R????*
dtype0	
z
zero_fraction_7/LessEqual	LessEqualzero_fraction_7/Sizezero_fraction_7/LessEqual/y*
_output_shapes
: *
T0	
~
zero_fraction_7/cond/SwitchSwitchzero_fraction_7/LessEqualzero_fraction_7/LessEqual*
T0
*
_output_shapes
: : 
i
zero_fraction_7/cond/switch_tIdentityzero_fraction_7/cond/Switch:1*
T0
*
_output_shapes
: 
g
zero_fraction_7/cond/switch_fIdentityzero_fraction_7/cond/Switch*
_output_shapes
: *
T0

d
zero_fraction_7/cond/pred_idIdentityzero_fraction_7/LessEqual*
T0
*
_output_shapes
: 
?
(zero_fraction_7/cond/count_nonzero/zerosConst^zero_fraction_7/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    
?
2zero_fraction_7/cond/count_nonzero/NotEqual/SwitchSwitchgradients/AddN_1zero_fraction_7/cond/pred_id*
T0*3
_class)
'%loc:@gradients/output/L2Loss_grad/mul*,
_output_shapes
:
??:
??
?
+zero_fraction_7/cond/count_nonzero/NotEqualNotEqual4zero_fraction_7/cond/count_nonzero/NotEqual/Switch:1(zero_fraction_7/cond/count_nonzero/zeros* 
_output_shapes
:
??*
T0
?
'zero_fraction_7/cond/count_nonzero/CastCast+zero_fraction_7/cond/count_nonzero/NotEqual*

SrcT0
* 
_output_shapes
:
??*

DstT0
?
(zero_fraction_7/cond/count_nonzero/ConstConst^zero_fraction_7/cond/switch_t*
_output_shapes
:*
valueB"       *
dtype0
?
0zero_fraction_7/cond/count_nonzero/nonzero_countSum'zero_fraction_7/cond/count_nonzero/Cast(zero_fraction_7/cond/count_nonzero/Const*
_output_shapes
: *
T0
?
zero_fraction_7/cond/CastCast0zero_fraction_7/cond/count_nonzero/nonzero_count*

SrcT0*

DstT0	*
_output_shapes
: 
?
*zero_fraction_7/cond/count_nonzero_1/zerosConst^zero_fraction_7/cond/switch_f*
dtype0*
valueB
 *    *
_output_shapes
: 
?
4zero_fraction_7/cond/count_nonzero_1/NotEqual/SwitchSwitchgradients/AddN_1zero_fraction_7/cond/pred_id*,
_output_shapes
:
??:
??*3
_class)
'%loc:@gradients/output/L2Loss_grad/mul*
T0
?
-zero_fraction_7/cond/count_nonzero_1/NotEqualNotEqual4zero_fraction_7/cond/count_nonzero_1/NotEqual/Switch*zero_fraction_7/cond/count_nonzero_1/zeros*
T0* 
_output_shapes
:
??
?
)zero_fraction_7/cond/count_nonzero_1/CastCast-zero_fraction_7/cond/count_nonzero_1/NotEqual* 
_output_shapes
:
??*

SrcT0
*

DstT0	
?
*zero_fraction_7/cond/count_nonzero_1/ConstConst^zero_fraction_7/cond/switch_f*
dtype0*
_output_shapes
:*
valueB"       
?
2zero_fraction_7/cond/count_nonzero_1/nonzero_countSum)zero_fraction_7/cond/count_nonzero_1/Cast*zero_fraction_7/cond/count_nonzero_1/Const*
_output_shapes
: *
T0	
?
zero_fraction_7/cond/MergeMerge2zero_fraction_7/cond/count_nonzero_1/nonzero_countzero_fraction_7/cond/Cast*
_output_shapes
: : *
N*
T0	
?
&zero_fraction_7/counts_to_fraction/subSubzero_fraction_7/Sizezero_fraction_7/cond/Merge*
T0	*
_output_shapes
: 
?
'zero_fraction_7/counts_to_fraction/CastCast&zero_fraction_7/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0
w
)zero_fraction_7/counts_to_fraction/Cast_1Castzero_fraction_7/Size*

DstT0*
_output_shapes
: *

SrcT0	
?
*zero_fraction_7/counts_to_fraction/truedivRealDiv'zero_fraction_7/counts_to_fraction/Cast)zero_fraction_7/counts_to_fraction/Cast_1*
_output_shapes
: *
T0
q
zero_fraction_7/fractionIdentity*zero_fraction_7/counts_to_fraction/truediv*
_output_shapes
: *
T0
h
W_0/grad/sparsity/tagsConst*"
valueB BW_0/grad/sparsity*
_output_shapes
: *
dtype0
u
W_0/grad/sparsityScalarSummaryW_0/grad/sparsity/tagszero_fraction_7/fraction*
T0*
_output_shapes
: 
m
output/b_0/grad/hist/tagConst*
_output_shapes
: *
dtype0*%
valueB Boutput/b_0/grad/hist
j
output/b_0/grad/histHistogramSummaryoutput/b_0/grad/hist/taggradients/AddN*
_output_shapes
: 
W
zero_fraction_8/SizeConst*
value
B	 R?*
_output_shapes
: *
dtype0	
a
zero_fraction_8/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R????
z
zero_fraction_8/LessEqual	LessEqualzero_fraction_8/Sizezero_fraction_8/LessEqual/y*
_output_shapes
: *
T0	
~
zero_fraction_8/cond/SwitchSwitchzero_fraction_8/LessEqualzero_fraction_8/LessEqual*
T0
*
_output_shapes
: : 
i
zero_fraction_8/cond/switch_tIdentityzero_fraction_8/cond/Switch:1*
T0
*
_output_shapes
: 
g
zero_fraction_8/cond/switch_fIdentityzero_fraction_8/cond/Switch*
_output_shapes
: *
T0

d
zero_fraction_8/cond/pred_idIdentityzero_fraction_8/LessEqual*
T0
*
_output_shapes
: 
?
(zero_fraction_8/cond/count_nonzero/zerosConst^zero_fraction_8/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    
?
2zero_fraction_8/cond/count_nonzero/NotEqual/SwitchSwitchgradients/AddNzero_fraction_8/cond/pred_id*5
_class+
)'loc:@gradients/output/L2Loss_1_grad/mul*
T0*"
_output_shapes
:?:?
?
+zero_fraction_8/cond/count_nonzero/NotEqualNotEqual4zero_fraction_8/cond/count_nonzero/NotEqual/Switch:1(zero_fraction_8/cond/count_nonzero/zeros*
_output_shapes	
:?*
T0
?
'zero_fraction_8/cond/count_nonzero/CastCast+zero_fraction_8/cond/count_nonzero/NotEqual*

DstT0*

SrcT0
*
_output_shapes	
:?
?
(zero_fraction_8/cond/count_nonzero/ConstConst^zero_fraction_8/cond/switch_t*
_output_shapes
:*
valueB: *
dtype0
?
0zero_fraction_8/cond/count_nonzero/nonzero_countSum'zero_fraction_8/cond/count_nonzero/Cast(zero_fraction_8/cond/count_nonzero/Const*
_output_shapes
: *
T0
?
zero_fraction_8/cond/CastCast0zero_fraction_8/cond/count_nonzero/nonzero_count*
_output_shapes
: *

SrcT0*

DstT0	
?
*zero_fraction_8/cond/count_nonzero_1/zerosConst^zero_fraction_8/cond/switch_f*
valueB
 *    *
_output_shapes
: *
dtype0
?
4zero_fraction_8/cond/count_nonzero_1/NotEqual/SwitchSwitchgradients/AddNzero_fraction_8/cond/pred_id*
T0*5
_class+
)'loc:@gradients/output/L2Loss_1_grad/mul*"
_output_shapes
:?:?
?
-zero_fraction_8/cond/count_nonzero_1/NotEqualNotEqual4zero_fraction_8/cond/count_nonzero_1/NotEqual/Switch*zero_fraction_8/cond/count_nonzero_1/zeros*
_output_shapes	
:?*
T0
?
)zero_fraction_8/cond/count_nonzero_1/CastCast-zero_fraction_8/cond/count_nonzero_1/NotEqual*
_output_shapes	
:?*

SrcT0
*

DstT0	
?
*zero_fraction_8/cond/count_nonzero_1/ConstConst^zero_fraction_8/cond/switch_f*
dtype0*
valueB: *
_output_shapes
:
?
2zero_fraction_8/cond/count_nonzero_1/nonzero_countSum)zero_fraction_8/cond/count_nonzero_1/Cast*zero_fraction_8/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 
?
zero_fraction_8/cond/MergeMerge2zero_fraction_8/cond/count_nonzero_1/nonzero_countzero_fraction_8/cond/Cast*
_output_shapes
: : *
N*
T0	
?
&zero_fraction_8/counts_to_fraction/subSubzero_fraction_8/Sizezero_fraction_8/cond/Merge*
_output_shapes
: *
T0	
?
'zero_fraction_8/counts_to_fraction/CastCast&zero_fraction_8/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0
w
)zero_fraction_8/counts_to_fraction/Cast_1Castzero_fraction_8/Size*

SrcT0	*
_output_shapes
: *

DstT0
?
*zero_fraction_8/counts_to_fraction/truedivRealDiv'zero_fraction_8/counts_to_fraction/Cast)zero_fraction_8/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
q
zero_fraction_8/fractionIdentity*zero_fraction_8/counts_to_fraction/truediv*
T0*
_output_shapes
: 
v
output/b_0/grad/sparsity/tagsConst*
dtype0*
_output_shapes
: *)
value B Boutput/b_0/grad/sparsity
?
output/b_0/grad/sparsityScalarSummaryoutput/b_0/grad/sparsity/tagszero_fraction_8/fraction*
_output_shapes
: *
T0
?
Merge/MergeSummaryMergeSummaryembedding/W_0/grad/histembedding/W_0/grad/sparsityconv-maxpool-3/W_0/grad/hist conv-maxpool-3/W_0/grad/sparsityconv-maxpool-3/b_0/grad/hist conv-maxpool-3/b_0/grad/sparsityconv-maxpool-4/W_0/grad/hist conv-maxpool-4/W_0/grad/sparsityconv-maxpool-4/b_0/grad/hist conv-maxpool-4/b_0/grad/sparsityconv-maxpool-5/W_0/grad/hist conv-maxpool-5/W_0/grad/sparsityconv-maxpool-5/b_0/grad/hist conv-maxpool-5/b_0/grad/sparsityW_0/grad/histW_0/grad/sparsityoutput/b_0/grad/histoutput/b_0/grad/sparsity*
_output_shapes
: *
N
R
loss_1/tagsConst*
valueB Bloss_1*
dtype0*
_output_shapes
: 
O
loss_1ScalarSummaryloss_1/tagsloss/add*
_output_shapes
: *
T0
Z
accuracy_1/tagsConst*
_output_shapes
: *
valueB B
accuracy_1*
dtype0
`

accuracy_1ScalarSummaryaccuracy_1/tagsaccuracy/accuracy*
_output_shapes
: *
T0
m
Merge_1/MergeSummaryMergeSummaryloss_1
accuracy_1Merge/MergeSummary*
N*
_output_shapes
: 
Y
Merge_2/MergeSummaryMergeSummaryloss_1
accuracy_1*
N*
_output_shapes
: 
Y
save/filename/inputConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
dtype0*
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
shape: *
_output_shapes
: *
dtype0
?
save/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:*?
value?B?BWBW/AdamBW/Adam_1Bbeta1_powerBbeta2_powerBconv-maxpool-3/WBconv-maxpool-3/W/AdamBconv-maxpool-3/W/Adam_1Bconv-maxpool-3/bBconv-maxpool-3/b/AdamBconv-maxpool-3/b/Adam_1Bconv-maxpool-4/WBconv-maxpool-4/W/AdamBconv-maxpool-4/W/Adam_1Bconv-maxpool-4/bBconv-maxpool-4/b/AdamBconv-maxpool-4/b/Adam_1Bconv-maxpool-5/WBconv-maxpool-5/W/AdamBconv-maxpool-5/W/Adam_1Bconv-maxpool-5/bBconv-maxpool-5/b/AdamBconv-maxpool-5/b/Adam_1Bembedding/WBembedding/W/AdamBembedding/W/Adam_1Bglobal_stepBoutput/bBoutput/b/AdamBoutput/b/Adam_1
?
save/SaveV2/shape_and_slicesConst*
_output_shapes
:*
dtype0*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
?
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesWW/AdamW/Adam_1beta1_powerbeta2_powerconv-maxpool-3/Wconv-maxpool-3/W/Adamconv-maxpool-3/W/Adam_1conv-maxpool-3/bconv-maxpool-3/b/Adamconv-maxpool-3/b/Adam_1conv-maxpool-4/Wconv-maxpool-4/W/Adamconv-maxpool-4/W/Adam_1conv-maxpool-4/bconv-maxpool-4/b/Adamconv-maxpool-4/b/Adam_1conv-maxpool-5/Wconv-maxpool-5/W/Adamconv-maxpool-5/W/Adam_1conv-maxpool-5/bconv-maxpool-5/b/Adamconv-maxpool-5/b/Adam_1embedding/Wembedding/W/Adamembedding/W/Adam_1global_stepoutput/boutput/b/Adamoutput/b/Adam_1*,
dtypes"
 2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
?
save/RestoreV2/tensor_namesConst"/device:CPU:0*?
value?B?BWBW/AdamBW/Adam_1Bbeta1_powerBbeta2_powerBconv-maxpool-3/WBconv-maxpool-3/W/AdamBconv-maxpool-3/W/Adam_1Bconv-maxpool-3/bBconv-maxpool-3/b/AdamBconv-maxpool-3/b/Adam_1Bconv-maxpool-4/WBconv-maxpool-4/W/AdamBconv-maxpool-4/W/Adam_1Bconv-maxpool-4/bBconv-maxpool-4/b/AdamBconv-maxpool-4/b/Adam_1Bconv-maxpool-5/WBconv-maxpool-5/W/AdamBconv-maxpool-5/W/Adam_1Bconv-maxpool-5/bBconv-maxpool-5/b/AdamBconv-maxpool-5/b/Adam_1Bembedding/WBembedding/W/AdamBembedding/W/Adam_1Bglobal_stepBoutput/bBoutput/b/AdamBoutput/b/Adam_1*
_output_shapes
:*
dtype0
?
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*,
dtypes"
 2*?
_output_shapesz
x::::::::::::::::::::::::::::::
i
save/AssignAssignWsave/RestoreV2*
T0* 
_output_shapes
:
??*
_class

loc:@W
r
save/Assign_1AssignW/Adamsave/RestoreV2:1* 
_output_shapes
:
??*
_class

loc:@W*
T0
t
save/Assign_2AssignW/Adam_1save/RestoreV2:2*
_class

loc:@W* 
_output_shapes
:
??*
T0
m
save/Assign_3Assignbeta1_powersave/RestoreV2:3*
_class

loc:@W*
T0*
_output_shapes
: 
m
save/Assign_4Assignbeta2_powersave/RestoreV2:4*
T0*
_class

loc:@W*
_output_shapes
: 
?
save/Assign_5Assignconv-maxpool-3/Wsave/RestoreV2:5*
T0*#
_class
loc:@conv-maxpool-3/W*(
_output_shapes
:??
?
save/Assign_6Assignconv-maxpool-3/W/Adamsave/RestoreV2:6*#
_class
loc:@conv-maxpool-3/W*(
_output_shapes
:??*
T0
?
save/Assign_7Assignconv-maxpool-3/W/Adam_1save/RestoreV2:7*#
_class
loc:@conv-maxpool-3/W*(
_output_shapes
:??*
T0
?
save/Assign_8Assignconv-maxpool-3/bsave/RestoreV2:8*
_output_shapes	
:?*#
_class
loc:@conv-maxpool-3/b*
T0
?
save/Assign_9Assignconv-maxpool-3/b/Adamsave/RestoreV2:9*#
_class
loc:@conv-maxpool-3/b*
T0*
_output_shapes	
:?
?
save/Assign_10Assignconv-maxpool-3/b/Adam_1save/RestoreV2:10*
T0*#
_class
loc:@conv-maxpool-3/b*
_output_shapes	
:?
?
save/Assign_11Assignconv-maxpool-4/Wsave/RestoreV2:11*(
_output_shapes
:??*
T0*#
_class
loc:@conv-maxpool-4/W
?
save/Assign_12Assignconv-maxpool-4/W/Adamsave/RestoreV2:12*
T0*(
_output_shapes
:??*#
_class
loc:@conv-maxpool-4/W
?
save/Assign_13Assignconv-maxpool-4/W/Adam_1save/RestoreV2:13*(
_output_shapes
:??*#
_class
loc:@conv-maxpool-4/W*
T0
?
save/Assign_14Assignconv-maxpool-4/bsave/RestoreV2:14*
_output_shapes	
:?*#
_class
loc:@conv-maxpool-4/b*
T0
?
save/Assign_15Assignconv-maxpool-4/b/Adamsave/RestoreV2:15*
T0*
_output_shapes	
:?*#
_class
loc:@conv-maxpool-4/b
?
save/Assign_16Assignconv-maxpool-4/b/Adam_1save/RestoreV2:16*#
_class
loc:@conv-maxpool-4/b*
_output_shapes	
:?*
T0
?
save/Assign_17Assignconv-maxpool-5/Wsave/RestoreV2:17*(
_output_shapes
:??*
T0*#
_class
loc:@conv-maxpool-5/W
?
save/Assign_18Assignconv-maxpool-5/W/Adamsave/RestoreV2:18*#
_class
loc:@conv-maxpool-5/W*(
_output_shapes
:??*
T0
?
save/Assign_19Assignconv-maxpool-5/W/Adam_1save/RestoreV2:19*(
_output_shapes
:??*
T0*#
_class
loc:@conv-maxpool-5/W
?
save/Assign_20Assignconv-maxpool-5/bsave/RestoreV2:20*#
_class
loc:@conv-maxpool-5/b*
_output_shapes	
:?*
T0
?
save/Assign_21Assignconv-maxpool-5/b/Adamsave/RestoreV2:21*#
_class
loc:@conv-maxpool-5/b*
_output_shapes	
:?*
T0
?
save/Assign_22Assignconv-maxpool-5/b/Adam_1save/RestoreV2:22*#
_class
loc:@conv-maxpool-5/b*
T0*
_output_shapes	
:?
?
save/Assign_23Assignembedding/Wsave/RestoreV2:23"/device:GPU:0*
T0*
_class
loc:@embedding/W*!
_output_shapes
:???
?
save/Assign_24Assignembedding/W/Adamsave/RestoreV2:24"/device:GPU:0*!
_output_shapes
:???*
_class
loc:@embedding/W*
T0
?
save/Assign_25Assignembedding/W/Adam_1save/RestoreV2:25"/device:GPU:0*!
_output_shapes
:???*
T0*
_class
loc:@embedding/W
y
save/Assign_26Assignglobal_stepsave/RestoreV2:26*
T0*
_output_shapes
: *
_class
loc:@global_step
x
save/Assign_27Assignoutput/bsave/RestoreV2:27*
T0*
_output_shapes	
:?*
_class
loc:@output/b
}
save/Assign_28Assignoutput/b/Adamsave/RestoreV2:28*
_output_shapes	
:?*
T0*
_class
loc:@output/b

save/Assign_29Assignoutput/b/Adam_1save/RestoreV2:29*
_output_shapes	
:?*
T0*
_class
loc:@output/b
?
save/restore_all/NoOpNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
a
save/restore_all/NoOp_1NoOp^save/Assign_23^save/Assign_24^save/Assign_25"/device:GPU:0
J
save/restore_allNoOp^save/restore_all/NoOp^save/restore_all/NoOp_1
?
	init/NoOpNoOp^W/Adam/Assign^W/Adam_1/Assign	^W/Assign^beta1_power/Assign^beta2_power/Assign^conv-maxpool-3/W/Adam/Assign^conv-maxpool-3/W/Adam_1/Assign^conv-maxpool-3/W/Assign^conv-maxpool-3/b/Adam/Assign^conv-maxpool-3/b/Adam_1/Assign^conv-maxpool-3/b/Assign^conv-maxpool-4/W/Adam/Assign^conv-maxpool-4/W/Adam_1/Assign^conv-maxpool-4/W/Assign^conv-maxpool-4/b/Adam/Assign^conv-maxpool-4/b/Adam_1/Assign^conv-maxpool-4/b/Assign^conv-maxpool-5/W/Adam/Assign^conv-maxpool-5/W/Adam_1/Assign^conv-maxpool-5/W/Assign^conv-maxpool-5/b/Adam/Assign^conv-maxpool-5/b/Adam_1/Assign^conv-maxpool-5/b/Assign^global_step/Assign^output/b/Adam/Assign^output/b/Adam_1/Assign^output/b/Assign
m
init/NoOp_1NoOp^embedding/W/Adam/Assign^embedding/W/Adam_1/Assign^embedding/W/Assign"/device:GPU:0
&
initNoOp
^init/NoOp^init/NoOp_1
[
save/filename_1/inputConst*
valueB Bmodel*
_output_shapes
: *
dtype0
r
save/filename_1PlaceholderWithDefaultsave/filename_1/input*
_output_shapes
: *
dtype0*
shape: 
i
save/Const_1PlaceholderWithDefaultsave/filename_1*
dtype0*
_output_shapes
: *
shape: 
?
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_d8aa3fc8f85d488cbcafeba488a6b4f4/part*
_output_shapes
: *
dtype0
f
save/StringJoin
StringJoinsave/Const_1save/StringJoin/inputs_1*
N*
_output_shapes
: 
Q
save/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
k
save/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
?
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
?
save/SaveV2_1/tensor_namesConst"/device:CPU:0*?
value?B?BWBW/AdamBW/Adam_1Bbeta1_powerBbeta2_powerBconv-maxpool-3/WBconv-maxpool-3/W/AdamBconv-maxpool-3/W/Adam_1Bconv-maxpool-3/bBconv-maxpool-3/b/AdamBconv-maxpool-3/b/Adam_1Bconv-maxpool-4/WBconv-maxpool-4/W/AdamBconv-maxpool-4/W/Adam_1Bconv-maxpool-4/bBconv-maxpool-4/b/AdamBconv-maxpool-4/b/Adam_1Bconv-maxpool-5/WBconv-maxpool-5/W/AdamBconv-maxpool-5/W/Adam_1Bconv-maxpool-5/bBconv-maxpool-5/b/AdamBconv-maxpool-5/b/Adam_1Bglobal_stepBoutput/bBoutput/b/AdamBoutput/b/Adam_1*
dtype0*
_output_shapes
:
?
save/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B 
?
save/SaveV2_1SaveV2save/ShardedFilenamesave/SaveV2_1/tensor_namessave/SaveV2_1/shape_and_slicesWW/AdamW/Adam_1beta1_powerbeta2_powerconv-maxpool-3/Wconv-maxpool-3/W/Adamconv-maxpool-3/W/Adam_1conv-maxpool-3/bconv-maxpool-3/b/Adamconv-maxpool-3/b/Adam_1conv-maxpool-4/Wconv-maxpool-4/W/Adamconv-maxpool-4/W/Adam_1conv-maxpool-4/bconv-maxpool-4/b/Adamconv-maxpool-4/b/Adam_1conv-maxpool-5/Wconv-maxpool-5/W/Adamconv-maxpool-5/W/Adam_1conv-maxpool-5/bconv-maxpool-5/b/Adamconv-maxpool-5/b/Adam_1global_stepoutput/boutput/b/Adamoutput/b/Adam_1"/device:CPU:0*)
dtypes
2
?
save/control_dependency_1Identitysave/ShardedFilename^save/SaveV2_1"/device:CPU:0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: *
T0
m
save/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
_output_shapes
: *
dtype0
?
save/ShardedFilename_1ShardedFilenamesave/StringJoinsave/ShardedFilename_1/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
?
save/SaveV2_2/tensor_namesConst"/device:CPU:0*F
value=B;Bembedding/WBembedding/W/AdamBembedding/W/Adam_1*
_output_shapes
:*
dtype0
z
save/SaveV2_2/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
_output_shapes
:*
dtype0
?
save/SaveV2_2SaveV2save/ShardedFilename_1save/SaveV2_2/tensor_namessave/SaveV2_2/shape_and_slicesembedding/Wembedding/W/Adamembedding/W/Adam_1"/device:CPU:0*
dtypes
2
?
save/control_dependency_2Identitysave/ShardedFilename_1^save/SaveV2_2"/device:CPU:0*
T0*
_output_shapes
: *)
_class
loc:@save/ShardedFilename_1
?
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilenamesave/ShardedFilename_1^save/control_dependency_1^save/control_dependency_2"/device:CPU:0*
T0*
N*
_output_shapes
:
w
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixessave/Const_1"/device:CPU:0
?
save/IdentityIdentitysave/Const_1^save/MergeV2Checkpoints^save/control_dependency_1^save/control_dependency_2"/device:CPU:0*
T0*
_output_shapes
: 
?
save/RestoreV2_1/tensor_namesConst"/device:CPU:0*
dtype0*?
value?B?BWBW/AdamBW/Adam_1Bbeta1_powerBbeta2_powerBconv-maxpool-3/WBconv-maxpool-3/W/AdamBconv-maxpool-3/W/Adam_1Bconv-maxpool-3/bBconv-maxpool-3/b/AdamBconv-maxpool-3/b/Adam_1Bconv-maxpool-4/WBconv-maxpool-4/W/AdamBconv-maxpool-4/W/Adam_1Bconv-maxpool-4/bBconv-maxpool-4/b/AdamBconv-maxpool-4/b/Adam_1Bconv-maxpool-5/WBconv-maxpool-5/W/AdamBconv-maxpool-5/W/Adam_1Bconv-maxpool-5/bBconv-maxpool-5/b/AdamBconv-maxpool-5/b/Adam_1Bglobal_stepBoutput/bBoutput/b/AdamBoutput/b/Adam_1*
_output_shapes
:
?
!save/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
dtype0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:
?
save/RestoreV2_1	RestoreV2save/Const_1save/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices"/device:CPU:0*)
dtypes
2*?
_output_shapesn
l:::::::::::::::::::::::::::
n
save/Assign_30AssignWsave/RestoreV2_1*
T0* 
_output_shapes
:
??*
_class

loc:@W
u
save/Assign_31AssignW/Adamsave/RestoreV2_1:1* 
_output_shapes
:
??*
T0*
_class

loc:@W
w
save/Assign_32AssignW/Adam_1save/RestoreV2_1:2* 
_output_shapes
:
??*
T0*
_class

loc:@W
p
save/Assign_33Assignbeta1_powersave/RestoreV2_1:3*
_class

loc:@W*
T0*
_output_shapes
: 
p
save/Assign_34Assignbeta2_powersave/RestoreV2_1:4*
_output_shapes
: *
T0*
_class

loc:@W
?
save/Assign_35Assignconv-maxpool-3/Wsave/RestoreV2_1:5*(
_output_shapes
:??*#
_class
loc:@conv-maxpool-3/W*
T0
?
save/Assign_36Assignconv-maxpool-3/W/Adamsave/RestoreV2_1:6*#
_class
loc:@conv-maxpool-3/W*
T0*(
_output_shapes
:??
?
save/Assign_37Assignconv-maxpool-3/W/Adam_1save/RestoreV2_1:7*
T0*(
_output_shapes
:??*#
_class
loc:@conv-maxpool-3/W
?
save/Assign_38Assignconv-maxpool-3/bsave/RestoreV2_1:8*
_output_shapes	
:?*
T0*#
_class
loc:@conv-maxpool-3/b
?
save/Assign_39Assignconv-maxpool-3/b/Adamsave/RestoreV2_1:9*
_output_shapes	
:?*
T0*#
_class
loc:@conv-maxpool-3/b
?
save/Assign_40Assignconv-maxpool-3/b/Adam_1save/RestoreV2_1:10*
_output_shapes	
:?*#
_class
loc:@conv-maxpool-3/b*
T0
?
save/Assign_41Assignconv-maxpool-4/Wsave/RestoreV2_1:11*#
_class
loc:@conv-maxpool-4/W*(
_output_shapes
:??*
T0
?
save/Assign_42Assignconv-maxpool-4/W/Adamsave/RestoreV2_1:12*#
_class
loc:@conv-maxpool-4/W*
T0*(
_output_shapes
:??
?
save/Assign_43Assignconv-maxpool-4/W/Adam_1save/RestoreV2_1:13*#
_class
loc:@conv-maxpool-4/W*
T0*(
_output_shapes
:??
?
save/Assign_44Assignconv-maxpool-4/bsave/RestoreV2_1:14*
_output_shapes	
:?*
T0*#
_class
loc:@conv-maxpool-4/b
?
save/Assign_45Assignconv-maxpool-4/b/Adamsave/RestoreV2_1:15*
_output_shapes	
:?*
T0*#
_class
loc:@conv-maxpool-4/b
?
save/Assign_46Assignconv-maxpool-4/b/Adam_1save/RestoreV2_1:16*
T0*#
_class
loc:@conv-maxpool-4/b*
_output_shapes	
:?
?
save/Assign_47Assignconv-maxpool-5/Wsave/RestoreV2_1:17*(
_output_shapes
:??*#
_class
loc:@conv-maxpool-5/W*
T0
?
save/Assign_48Assignconv-maxpool-5/W/Adamsave/RestoreV2_1:18*
T0*#
_class
loc:@conv-maxpool-5/W*(
_output_shapes
:??
?
save/Assign_49Assignconv-maxpool-5/W/Adam_1save/RestoreV2_1:19*
T0*(
_output_shapes
:??*#
_class
loc:@conv-maxpool-5/W
?
save/Assign_50Assignconv-maxpool-5/bsave/RestoreV2_1:20*#
_class
loc:@conv-maxpool-5/b*
T0*
_output_shapes	
:?
?
save/Assign_51Assignconv-maxpool-5/b/Adamsave/RestoreV2_1:21*
T0*#
_class
loc:@conv-maxpool-5/b*
_output_shapes	
:?
?
save/Assign_52Assignconv-maxpool-5/b/Adam_1save/RestoreV2_1:22*
_output_shapes	
:?*
T0*#
_class
loc:@conv-maxpool-5/b
{
save/Assign_53Assignglobal_stepsave/RestoreV2_1:23*
T0*
_class
loc:@global_step*
_output_shapes
: 
z
save/Assign_54Assignoutput/bsave/RestoreV2_1:24*
T0*
_class
loc:@output/b*
_output_shapes	
:?

save/Assign_55Assignoutput/b/Adamsave/RestoreV2_1:25*
_class
loc:@output/b*
_output_shapes	
:?*
T0
?
save/Assign_56Assignoutput/b/Adam_1save/RestoreV2_1:26*
_output_shapes	
:?*
_class
loc:@output/b*
T0
?
save/restore_shardNoOp^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_48^save/Assign_49^save/Assign_50^save/Assign_51^save/Assign_52^save/Assign_53^save/Assign_54^save/Assign_55^save/Assign_56
?
save/RestoreV2_2/tensor_namesConst"/device:CPU:0*
dtype0*F
value=B;Bembedding/WBembedding/W/AdamBembedding/W/Adam_1*
_output_shapes
:
}
!save/RestoreV2_2/shape_and_slicesConst"/device:CPU:0*
dtype0*
valueBB B B *
_output_shapes
:
?
save/RestoreV2_2	RestoreV2save/Const_1save/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:::
?
save/Assign_57Assignembedding/Wsave/RestoreV2_2"/device:GPU:0*!
_output_shapes
:???*
_class
loc:@embedding/W*
T0
?
save/Assign_58Assignembedding/W/Adamsave/RestoreV2_2:1"/device:GPU:0*!
_output_shapes
:???*
_class
loc:@embedding/W*
T0
?
save/Assign_59Assignembedding/W/Adam_1save/RestoreV2_2:2"/device:GPU:0*!
_output_shapes
:???*
T0*
_class
loc:@embedding/W
^
save/restore_shard_1NoOp^save/Assign_57^save/Assign_58^save/Assign_59"/device:GPU:0
4
save/restore_all_1/NoOpNoOp^save/restore_shard
G
save/restore_all_1/NoOp_1NoOp^save/restore_shard_1"/device:GPU:0
P
save/restore_all_1NoOp^save/restore_all_1/NoOp^save/restore_all_1/NoOp_1"w@
save/Const_1:0save/Identity:0save/restore_all_1 (5 @F8"
train_op

Adam"?b
cond_context?a?a
?
zero_fraction/cond/cond_textzero_fraction/cond/pred_id:0zero_fraction/cond/switch_t:0 *?
zero_fraction/cond/Cast:0
'zero_fraction/cond/count_nonzero/Cast:0
(zero_fraction/cond/count_nonzero/Const:0
2zero_fraction/cond/count_nonzero/NotEqual/Switch:1
+zero_fraction/cond/count_nonzero/NotEqual:0
0zero_fraction/cond/count_nonzero/nonzero_count:0
(zero_fraction/cond/count_nonzero/zeros:0
zero_fraction/cond/pred_id:0
zero_fraction/cond/switch_t:0
zero_fraction/value:0<
zero_fraction/cond/pred_id:0zero_fraction/cond/pred_id:0K
zero_fraction/value:02zero_fraction/cond/count_nonzero/NotEqual/Switch:1
?
zero_fraction/cond/cond_text_1zero_fraction/cond/pred_id:0zero_fraction/cond/switch_f:0*?
)zero_fraction/cond/count_nonzero_1/Cast:0
*zero_fraction/cond/count_nonzero_1/Const:0
4zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
-zero_fraction/cond/count_nonzero_1/NotEqual:0
2zero_fraction/cond/count_nonzero_1/nonzero_count:0
*zero_fraction/cond/count_nonzero_1/zeros:0
zero_fraction/cond/pred_id:0
zero_fraction/cond/switch_f:0
zero_fraction/value:0<
zero_fraction/cond/pred_id:0zero_fraction/cond/pred_id:0M
zero_fraction/value:04zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
?
zero_fraction_1/cond/cond_textzero_fraction_1/cond/pred_id:0zero_fraction_1/cond/switch_t:0 *?
?gradients/conv-maxpool-3/conv_grad/tuple/control_dependency_1:0
zero_fraction_1/cond/Cast:0
)zero_fraction_1/cond/count_nonzero/Cast:0
*zero_fraction_1/cond/count_nonzero/Const:0
4zero_fraction_1/cond/count_nonzero/NotEqual/Switch:1
-zero_fraction_1/cond/count_nonzero/NotEqual:0
2zero_fraction_1/cond/count_nonzero/nonzero_count:0
*zero_fraction_1/cond/count_nonzero/zeros:0
zero_fraction_1/cond/pred_id:0
zero_fraction_1/cond/switch_t:0@
zero_fraction_1/cond/pred_id:0zero_fraction_1/cond/pred_id:0w
?gradients/conv-maxpool-3/conv_grad/tuple/control_dependency_1:04zero_fraction_1/cond/count_nonzero/NotEqual/Switch:1
?
 zero_fraction_1/cond/cond_text_1zero_fraction_1/cond/pred_id:0zero_fraction_1/cond/switch_f:0*?
?gradients/conv-maxpool-3/conv_grad/tuple/control_dependency_1:0
+zero_fraction_1/cond/count_nonzero_1/Cast:0
,zero_fraction_1/cond/count_nonzero_1/Const:0
6zero_fraction_1/cond/count_nonzero_1/NotEqual/Switch:0
/zero_fraction_1/cond/count_nonzero_1/NotEqual:0
4zero_fraction_1/cond/count_nonzero_1/nonzero_count:0
,zero_fraction_1/cond/count_nonzero_1/zeros:0
zero_fraction_1/cond/pred_id:0
zero_fraction_1/cond/switch_f:0@
zero_fraction_1/cond/pred_id:0zero_fraction_1/cond/pred_id:0y
?gradients/conv-maxpool-3/conv_grad/tuple/control_dependency_1:06zero_fraction_1/cond/count_nonzero_1/NotEqual/Switch:0
?
zero_fraction_2/cond/cond_textzero_fraction_2/cond/pred_id:0zero_fraction_2/cond/switch_t:0 *?
Bgradients/conv-maxpool-3/BiasAdd_grad/tuple/control_dependency_1:0
zero_fraction_2/cond/Cast:0
)zero_fraction_2/cond/count_nonzero/Cast:0
*zero_fraction_2/cond/count_nonzero/Const:0
4zero_fraction_2/cond/count_nonzero/NotEqual/Switch:1
-zero_fraction_2/cond/count_nonzero/NotEqual:0
2zero_fraction_2/cond/count_nonzero/nonzero_count:0
*zero_fraction_2/cond/count_nonzero/zeros:0
zero_fraction_2/cond/pred_id:0
zero_fraction_2/cond/switch_t:0z
Bgradients/conv-maxpool-3/BiasAdd_grad/tuple/control_dependency_1:04zero_fraction_2/cond/count_nonzero/NotEqual/Switch:1@
zero_fraction_2/cond/pred_id:0zero_fraction_2/cond/pred_id:0
?
 zero_fraction_2/cond/cond_text_1zero_fraction_2/cond/pred_id:0zero_fraction_2/cond/switch_f:0*?
Bgradients/conv-maxpool-3/BiasAdd_grad/tuple/control_dependency_1:0
+zero_fraction_2/cond/count_nonzero_1/Cast:0
,zero_fraction_2/cond/count_nonzero_1/Const:0
6zero_fraction_2/cond/count_nonzero_1/NotEqual/Switch:0
/zero_fraction_2/cond/count_nonzero_1/NotEqual:0
4zero_fraction_2/cond/count_nonzero_1/nonzero_count:0
,zero_fraction_2/cond/count_nonzero_1/zeros:0
zero_fraction_2/cond/pred_id:0
zero_fraction_2/cond/switch_f:0|
Bgradients/conv-maxpool-3/BiasAdd_grad/tuple/control_dependency_1:06zero_fraction_2/cond/count_nonzero_1/NotEqual/Switch:0@
zero_fraction_2/cond/pred_id:0zero_fraction_2/cond/pred_id:0
?
zero_fraction_3/cond/cond_textzero_fraction_3/cond/pred_id:0zero_fraction_3/cond/switch_t:0 *?
?gradients/conv-maxpool-4/conv_grad/tuple/control_dependency_1:0
zero_fraction_3/cond/Cast:0
)zero_fraction_3/cond/count_nonzero/Cast:0
*zero_fraction_3/cond/count_nonzero/Const:0
4zero_fraction_3/cond/count_nonzero/NotEqual/Switch:1
-zero_fraction_3/cond/count_nonzero/NotEqual:0
2zero_fraction_3/cond/count_nonzero/nonzero_count:0
*zero_fraction_3/cond/count_nonzero/zeros:0
zero_fraction_3/cond/pred_id:0
zero_fraction_3/cond/switch_t:0w
?gradients/conv-maxpool-4/conv_grad/tuple/control_dependency_1:04zero_fraction_3/cond/count_nonzero/NotEqual/Switch:1@
zero_fraction_3/cond/pred_id:0zero_fraction_3/cond/pred_id:0
?
 zero_fraction_3/cond/cond_text_1zero_fraction_3/cond/pred_id:0zero_fraction_3/cond/switch_f:0*?
?gradients/conv-maxpool-4/conv_grad/tuple/control_dependency_1:0
+zero_fraction_3/cond/count_nonzero_1/Cast:0
,zero_fraction_3/cond/count_nonzero_1/Const:0
6zero_fraction_3/cond/count_nonzero_1/NotEqual/Switch:0
/zero_fraction_3/cond/count_nonzero_1/NotEqual:0
4zero_fraction_3/cond/count_nonzero_1/nonzero_count:0
,zero_fraction_3/cond/count_nonzero_1/zeros:0
zero_fraction_3/cond/pred_id:0
zero_fraction_3/cond/switch_f:0@
zero_fraction_3/cond/pred_id:0zero_fraction_3/cond/pred_id:0y
?gradients/conv-maxpool-4/conv_grad/tuple/control_dependency_1:06zero_fraction_3/cond/count_nonzero_1/NotEqual/Switch:0
?
zero_fraction_4/cond/cond_textzero_fraction_4/cond/pred_id:0zero_fraction_4/cond/switch_t:0 *?
Bgradients/conv-maxpool-4/BiasAdd_grad/tuple/control_dependency_1:0
zero_fraction_4/cond/Cast:0
)zero_fraction_4/cond/count_nonzero/Cast:0
*zero_fraction_4/cond/count_nonzero/Const:0
4zero_fraction_4/cond/count_nonzero/NotEqual/Switch:1
-zero_fraction_4/cond/count_nonzero/NotEqual:0
2zero_fraction_4/cond/count_nonzero/nonzero_count:0
*zero_fraction_4/cond/count_nonzero/zeros:0
zero_fraction_4/cond/pred_id:0
zero_fraction_4/cond/switch_t:0z
Bgradients/conv-maxpool-4/BiasAdd_grad/tuple/control_dependency_1:04zero_fraction_4/cond/count_nonzero/NotEqual/Switch:1@
zero_fraction_4/cond/pred_id:0zero_fraction_4/cond/pred_id:0
?
 zero_fraction_4/cond/cond_text_1zero_fraction_4/cond/pred_id:0zero_fraction_4/cond/switch_f:0*?
Bgradients/conv-maxpool-4/BiasAdd_grad/tuple/control_dependency_1:0
+zero_fraction_4/cond/count_nonzero_1/Cast:0
,zero_fraction_4/cond/count_nonzero_1/Const:0
6zero_fraction_4/cond/count_nonzero_1/NotEqual/Switch:0
/zero_fraction_4/cond/count_nonzero_1/NotEqual:0
4zero_fraction_4/cond/count_nonzero_1/nonzero_count:0
,zero_fraction_4/cond/count_nonzero_1/zeros:0
zero_fraction_4/cond/pred_id:0
zero_fraction_4/cond/switch_f:0@
zero_fraction_4/cond/pred_id:0zero_fraction_4/cond/pred_id:0|
Bgradients/conv-maxpool-4/BiasAdd_grad/tuple/control_dependency_1:06zero_fraction_4/cond/count_nonzero_1/NotEqual/Switch:0
?
zero_fraction_5/cond/cond_textzero_fraction_5/cond/pred_id:0zero_fraction_5/cond/switch_t:0 *?
?gradients/conv-maxpool-5/conv_grad/tuple/control_dependency_1:0
zero_fraction_5/cond/Cast:0
)zero_fraction_5/cond/count_nonzero/Cast:0
*zero_fraction_5/cond/count_nonzero/Const:0
4zero_fraction_5/cond/count_nonzero/NotEqual/Switch:1
-zero_fraction_5/cond/count_nonzero/NotEqual:0
2zero_fraction_5/cond/count_nonzero/nonzero_count:0
*zero_fraction_5/cond/count_nonzero/zeros:0
zero_fraction_5/cond/pred_id:0
zero_fraction_5/cond/switch_t:0w
?gradients/conv-maxpool-5/conv_grad/tuple/control_dependency_1:04zero_fraction_5/cond/count_nonzero/NotEqual/Switch:1@
zero_fraction_5/cond/pred_id:0zero_fraction_5/cond/pred_id:0
?
 zero_fraction_5/cond/cond_text_1zero_fraction_5/cond/pred_id:0zero_fraction_5/cond/switch_f:0*?
?gradients/conv-maxpool-5/conv_grad/tuple/control_dependency_1:0
+zero_fraction_5/cond/count_nonzero_1/Cast:0
,zero_fraction_5/cond/count_nonzero_1/Const:0
6zero_fraction_5/cond/count_nonzero_1/NotEqual/Switch:0
/zero_fraction_5/cond/count_nonzero_1/NotEqual:0
4zero_fraction_5/cond/count_nonzero_1/nonzero_count:0
,zero_fraction_5/cond/count_nonzero_1/zeros:0
zero_fraction_5/cond/pred_id:0
zero_fraction_5/cond/switch_f:0y
?gradients/conv-maxpool-5/conv_grad/tuple/control_dependency_1:06zero_fraction_5/cond/count_nonzero_1/NotEqual/Switch:0@
zero_fraction_5/cond/pred_id:0zero_fraction_5/cond/pred_id:0
?
zero_fraction_6/cond/cond_textzero_fraction_6/cond/pred_id:0zero_fraction_6/cond/switch_t:0 *?
Bgradients/conv-maxpool-5/BiasAdd_grad/tuple/control_dependency_1:0
zero_fraction_6/cond/Cast:0
)zero_fraction_6/cond/count_nonzero/Cast:0
*zero_fraction_6/cond/count_nonzero/Const:0
4zero_fraction_6/cond/count_nonzero/NotEqual/Switch:1
-zero_fraction_6/cond/count_nonzero/NotEqual:0
2zero_fraction_6/cond/count_nonzero/nonzero_count:0
*zero_fraction_6/cond/count_nonzero/zeros:0
zero_fraction_6/cond/pred_id:0
zero_fraction_6/cond/switch_t:0@
zero_fraction_6/cond/pred_id:0zero_fraction_6/cond/pred_id:0z
Bgradients/conv-maxpool-5/BiasAdd_grad/tuple/control_dependency_1:04zero_fraction_6/cond/count_nonzero/NotEqual/Switch:1
?
 zero_fraction_6/cond/cond_text_1zero_fraction_6/cond/pred_id:0zero_fraction_6/cond/switch_f:0*?
Bgradients/conv-maxpool-5/BiasAdd_grad/tuple/control_dependency_1:0
+zero_fraction_6/cond/count_nonzero_1/Cast:0
,zero_fraction_6/cond/count_nonzero_1/Const:0
6zero_fraction_6/cond/count_nonzero_1/NotEqual/Switch:0
/zero_fraction_6/cond/count_nonzero_1/NotEqual:0
4zero_fraction_6/cond/count_nonzero_1/nonzero_count:0
,zero_fraction_6/cond/count_nonzero_1/zeros:0
zero_fraction_6/cond/pred_id:0
zero_fraction_6/cond/switch_f:0@
zero_fraction_6/cond/pred_id:0zero_fraction_6/cond/pred_id:0|
Bgradients/conv-maxpool-5/BiasAdd_grad/tuple/control_dependency_1:06zero_fraction_6/cond/count_nonzero_1/NotEqual/Switch:0
?
zero_fraction_7/cond/cond_textzero_fraction_7/cond/pred_id:0zero_fraction_7/cond/switch_t:0 *?
gradients/AddN_1:0
zero_fraction_7/cond/Cast:0
)zero_fraction_7/cond/count_nonzero/Cast:0
*zero_fraction_7/cond/count_nonzero/Const:0
4zero_fraction_7/cond/count_nonzero/NotEqual/Switch:1
-zero_fraction_7/cond/count_nonzero/NotEqual:0
2zero_fraction_7/cond/count_nonzero/nonzero_count:0
*zero_fraction_7/cond/count_nonzero/zeros:0
zero_fraction_7/cond/pred_id:0
zero_fraction_7/cond/switch_t:0@
zero_fraction_7/cond/pred_id:0zero_fraction_7/cond/pred_id:0J
gradients/AddN_1:04zero_fraction_7/cond/count_nonzero/NotEqual/Switch:1
?
 zero_fraction_7/cond/cond_text_1zero_fraction_7/cond/pred_id:0zero_fraction_7/cond/switch_f:0*?
gradients/AddN_1:0
+zero_fraction_7/cond/count_nonzero_1/Cast:0
,zero_fraction_7/cond/count_nonzero_1/Const:0
6zero_fraction_7/cond/count_nonzero_1/NotEqual/Switch:0
/zero_fraction_7/cond/count_nonzero_1/NotEqual:0
4zero_fraction_7/cond/count_nonzero_1/nonzero_count:0
,zero_fraction_7/cond/count_nonzero_1/zeros:0
zero_fraction_7/cond/pred_id:0
zero_fraction_7/cond/switch_f:0@
zero_fraction_7/cond/pred_id:0zero_fraction_7/cond/pred_id:0L
gradients/AddN_1:06zero_fraction_7/cond/count_nonzero_1/NotEqual/Switch:0
?
zero_fraction_8/cond/cond_textzero_fraction_8/cond/pred_id:0zero_fraction_8/cond/switch_t:0 *?
gradients/AddN:0
zero_fraction_8/cond/Cast:0
)zero_fraction_8/cond/count_nonzero/Cast:0
*zero_fraction_8/cond/count_nonzero/Const:0
4zero_fraction_8/cond/count_nonzero/NotEqual/Switch:1
-zero_fraction_8/cond/count_nonzero/NotEqual:0
2zero_fraction_8/cond/count_nonzero/nonzero_count:0
*zero_fraction_8/cond/count_nonzero/zeros:0
zero_fraction_8/cond/pred_id:0
zero_fraction_8/cond/switch_t:0H
gradients/AddN:04zero_fraction_8/cond/count_nonzero/NotEqual/Switch:1@
zero_fraction_8/cond/pred_id:0zero_fraction_8/cond/pred_id:0
?
 zero_fraction_8/cond/cond_text_1zero_fraction_8/cond/pred_id:0zero_fraction_8/cond/switch_f:0*?
gradients/AddN:0
+zero_fraction_8/cond/count_nonzero_1/Cast:0
,zero_fraction_8/cond/count_nonzero_1/Const:0
6zero_fraction_8/cond/count_nonzero_1/NotEqual/Switch:0
/zero_fraction_8/cond/count_nonzero_1/NotEqual:0
4zero_fraction_8/cond/count_nonzero_1/nonzero_count:0
,zero_fraction_8/cond/count_nonzero_1/zeros:0
zero_fraction_8/cond/pred_id:0
zero_fraction_8/cond/switch_f:0@
zero_fraction_8/cond/pred_id:0zero_fraction_8/cond/pred_id:0J
gradients/AddN:06zero_fraction_8/cond/count_nonzero_1/NotEqual/Switch:0"?
trainable_variables??
U
embedding/W:0embedding/W/Assignembedding/W/read:02embedding/random_uniform:08
k
conv-maxpool-3/W:0conv-maxpool-3/W/Assignconv-maxpool-3/W/read:02!conv-maxpool-3/truncated_normal:08
`
conv-maxpool-3/b:0conv-maxpool-3/b/Assignconv-maxpool-3/b/read:02conv-maxpool-3/Const:08
k
conv-maxpool-4/W:0conv-maxpool-4/W/Assignconv-maxpool-4/W/read:02!conv-maxpool-4/truncated_normal:08
`
conv-maxpool-4/b:0conv-maxpool-4/b/Assignconv-maxpool-4/b/read:02conv-maxpool-4/Const:08
k
conv-maxpool-5/W:0conv-maxpool-5/W/Assignconv-maxpool-5/W/read:02!conv-maxpool-5/truncated_normal:08
`
conv-maxpool-5/b:0conv-maxpool-5/b/Assignconv-maxpool-5/b/read:02conv-maxpool-5/Const:08
;
W:0W/AssignW/read:02W/Initializer/random_uniform:08
@

output/b:0output/b/Assignoutput/b/read:02output/Const:08"?
	variables??
U
embedding/W:0embedding/W/Assignembedding/W/read:02embedding/random_uniform:08
k
conv-maxpool-3/W:0conv-maxpool-3/W/Assignconv-maxpool-3/W/read:02!conv-maxpool-3/truncated_normal:08
`
conv-maxpool-3/b:0conv-maxpool-3/b/Assignconv-maxpool-3/b/read:02conv-maxpool-3/Const:08
k
conv-maxpool-4/W:0conv-maxpool-4/W/Assignconv-maxpool-4/W/read:02!conv-maxpool-4/truncated_normal:08
`
conv-maxpool-4/b:0conv-maxpool-4/b/Assignconv-maxpool-4/b/read:02conv-maxpool-4/Const:08
k
conv-maxpool-5/W:0conv-maxpool-5/W/Assignconv-maxpool-5/W/read:02!conv-maxpool-5/truncated_normal:08
`
conv-maxpool-5/b:0conv-maxpool-5/b/Assignconv-maxpool-5/b/read:02conv-maxpool-5/Const:08
;
W:0W/AssignW/read:02W/Initializer/random_uniform:08
@

output/b:0output/b/Assignoutput/b/read:02output/Const:08
T
global_step:0global_step/Assignglobal_step/read:02global_step/initial_value:0
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0
l
embedding/W/Adam:0embedding/W/Adam/Assignembedding/W/Adam/read:02$embedding/W/Adam/Initializer/zeros:0
t
embedding/W/Adam_1:0embedding/W/Adam_1/Assignembedding/W/Adam_1/read:02&embedding/W/Adam_1/Initializer/zeros:0
?
conv-maxpool-3/W/Adam:0conv-maxpool-3/W/Adam/Assignconv-maxpool-3/W/Adam/read:02)conv-maxpool-3/W/Adam/Initializer/zeros:0
?
conv-maxpool-3/W/Adam_1:0conv-maxpool-3/W/Adam_1/Assignconv-maxpool-3/W/Adam_1/read:02+conv-maxpool-3/W/Adam_1/Initializer/zeros:0
?
conv-maxpool-3/b/Adam:0conv-maxpool-3/b/Adam/Assignconv-maxpool-3/b/Adam/read:02)conv-maxpool-3/b/Adam/Initializer/zeros:0
?
conv-maxpool-3/b/Adam_1:0conv-maxpool-3/b/Adam_1/Assignconv-maxpool-3/b/Adam_1/read:02+conv-maxpool-3/b/Adam_1/Initializer/zeros:0
?
conv-maxpool-4/W/Adam:0conv-maxpool-4/W/Adam/Assignconv-maxpool-4/W/Adam/read:02)conv-maxpool-4/W/Adam/Initializer/zeros:0
?
conv-maxpool-4/W/Adam_1:0conv-maxpool-4/W/Adam_1/Assignconv-maxpool-4/W/Adam_1/read:02+conv-maxpool-4/W/Adam_1/Initializer/zeros:0
?
conv-maxpool-4/b/Adam:0conv-maxpool-4/b/Adam/Assignconv-maxpool-4/b/Adam/read:02)conv-maxpool-4/b/Adam/Initializer/zeros:0
?
conv-maxpool-4/b/Adam_1:0conv-maxpool-4/b/Adam_1/Assignconv-maxpool-4/b/Adam_1/read:02+conv-maxpool-4/b/Adam_1/Initializer/zeros:0
?
conv-maxpool-5/W/Adam:0conv-maxpool-5/W/Adam/Assignconv-maxpool-5/W/Adam/read:02)conv-maxpool-5/W/Adam/Initializer/zeros:0
?
conv-maxpool-5/W/Adam_1:0conv-maxpool-5/W/Adam_1/Assignconv-maxpool-5/W/Adam_1/read:02+conv-maxpool-5/W/Adam_1/Initializer/zeros:0
?
conv-maxpool-5/b/Adam:0conv-maxpool-5/b/Adam/Assignconv-maxpool-5/b/Adam/read:02)conv-maxpool-5/b/Adam/Initializer/zeros:0
?
conv-maxpool-5/b/Adam_1:0conv-maxpool-5/b/Adam_1/Assignconv-maxpool-5/b/Adam_1/read:02+conv-maxpool-5/b/Adam_1/Initializer/zeros:0
D
W/Adam:0W/Adam/AssignW/Adam/read:02W/Adam/Initializer/zeros:0
L

W/Adam_1:0W/Adam_1/AssignW/Adam_1/read:02W/Adam_1/Initializer/zeros:0
`
output/b/Adam:0output/b/Adam/Assignoutput/b/Adam/read:02!output/b/Adam/Initializer/zeros:0
h
output/b/Adam_1:0output/b/Adam_1/Assignoutput/b/Adam_1/read:02#output/b/Adam_1/Initializer/zeros:0"?
	summaries?
?
embedding/W_0/grad/hist:0
embedding/W_0/grad/sparsity:0
conv-maxpool-3/W_0/grad/hist:0
"conv-maxpool-3/W_0/grad/sparsity:0
conv-maxpool-3/b_0/grad/hist:0
"conv-maxpool-3/b_0/grad/sparsity:0
conv-maxpool-4/W_0/grad/hist:0
"conv-maxpool-4/W_0/grad/sparsity:0
conv-maxpool-4/b_0/grad/hist:0
"conv-maxpool-4/b_0/grad/sparsity:0
conv-maxpool-5/W_0/grad/hist:0
"conv-maxpool-5/W_0/grad/sparsity:0
conv-maxpool-5/b_0/grad/hist:0
"conv-maxpool-5/b_0/grad/sparsity:0
W_0/grad/hist:0
W_0/grad/sparsity:0
output/b_0/grad/hist:0
output/b_0/grad/sparsity:0
loss_1:0
accuracy_1:0