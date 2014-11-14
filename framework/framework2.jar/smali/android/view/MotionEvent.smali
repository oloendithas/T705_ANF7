.class public final Landroid/view/MotionEvent;
.super Landroid/view/InputEvent;
.source "MotionEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/MotionEvent$PointerProperties;,
        Landroid/view/MotionEvent$PointerCoords;
    }
.end annotation


# static fields
.field public static final ACTION_CANCEL:I = 0x3

.field public static final ACTION_DOWN:I = 0x0

.field public static final ACTION_HOVER_ENTER:I = 0x9

.field public static final ACTION_HOVER_EXIT:I = 0xa

.field public static final ACTION_HOVER_MOVE:I = 0x7

.field public static final ACTION_MASK:I = 0xff

.field public static final ACTION_MOVE:I = 0x2

.field public static final ACTION_OUTSIDE:I = 0x4

.field public static final ACTION_PEN_CANCEL:I = 0xe

.field public static final ACTION_PEN_DOWN:I = 0xb

.field public static final ACTION_PEN_MOVE:I = 0xd

.field public static final ACTION_PEN_UP:I = 0xc

.field public static final ACTION_POINTER_1_DOWN:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_1_UP:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_2_DOWN:I = 0x105
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_2_UP:I = 0x106
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_3_DOWN:I = 0x205
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_3_UP:I = 0x206
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_DOWN:I = 0x5

.field public static final ACTION_POINTER_ID_MASK:I = 0xff00
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_ID_SHIFT:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_INDEX_MASK:I = 0xff00

.field public static final ACTION_POINTER_INDEX_SHIFT:I = 0x8

.field public static final ACTION_POINTER_UP:I = 0x6

.field public static final ACTION_SCROLL:I = 0x8

.field public static final ACTION_UP:I = 0x1

.field public static final AXIS_ANGLE:I = 0x33

.field public static final AXIS_BRAKE:I = 0x17

.field public static final AXIS_DISTANCE:I = 0x18

.field public static final AXIS_ECCEN:I = 0x35

.field public static final AXIS_GAS:I = 0x16

.field public static final AXIS_GENERIC_1:I = 0x20

.field public static final AXIS_GENERIC_10:I = 0x29

.field public static final AXIS_GENERIC_11:I = 0x2a

.field public static final AXIS_GENERIC_12:I = 0x2b

.field public static final AXIS_GENERIC_13:I = 0x2c

.field public static final AXIS_GENERIC_14:I = 0x2d

.field public static final AXIS_GENERIC_15:I = 0x2e

.field public static final AXIS_GENERIC_16:I = 0x2f

.field public static final AXIS_GENERIC_2:I = 0x21

.field public static final AXIS_GENERIC_3:I = 0x22

.field public static final AXIS_GENERIC_4:I = 0x23

.field public static final AXIS_GENERIC_5:I = 0x24

.field public static final AXIS_GENERIC_6:I = 0x25

.field public static final AXIS_GENERIC_7:I = 0x26

.field public static final AXIS_GENERIC_8:I = 0x27

.field public static final AXIS_GENERIC_9:I = 0x28

.field public static final AXIS_HAT_X:I = 0xf

.field public static final AXIS_HAT_Y:I = 0x10

.field public static final AXIS_HSCROLL:I = 0xa

.field public static final AXIS_LTRIGGER:I = 0x11

.field public static final AXIS_ORIENTATION:I = 0x8

.field public static final AXIS_PALM:I = 0x34

.field public static final AXIS_PRESSURE:I = 0x2

.field public static final AXIS_RTRIGGER:I = 0x12

.field public static final AXIS_RUDDER:I = 0x14

.field public static final AXIS_RX:I = 0xc

.field public static final AXIS_RY:I = 0xd

.field public static final AXIS_RZ:I = 0xe

.field public static final AXIS_SIZE:I = 0x3

.field public static final AXIS_SUMSIZE:I = 0x36

.field public static final AXIS_SURFACE_MAJOR:I = 0x31

.field public static final AXIS_SURFACE_MINOR:I = 0x32

.field public static final AXIS_SURFACE_SIZE:I = 0x30

.field private static final AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final AXIS_THROTTLE:I = 0x13

.field public static final AXIS_TILT:I = 0x19

.field public static final AXIS_TOOL_MAJOR:I = 0x6

.field public static final AXIS_TOOL_MINOR:I = 0x7

.field public static final AXIS_TOUCH_MAJOR:I = 0x4

.field public static final AXIS_TOUCH_MINOR:I = 0x5

.field public static final AXIS_VSCROLL:I = 0x9

.field public static final AXIS_WHEEL:I = 0x15

.field public static final AXIS_X:I = 0x0

.field public static final AXIS_Y:I = 0x1

.field public static final AXIS_Z:I = 0xb

.field public static final BUTTON_BACK:I = 0x8

.field public static final BUTTON_FORWARD:I = 0x10

.field public static final BUTTON_PRIMARY:I = 0x1

.field public static final BUTTON_SECONDARY:I = 0x2

.field private static final BUTTON_SYMBOLIC_NAMES:[Ljava/lang/String;

.field public static final BUTTON_TERTIARY:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final EDGE_BOTTOM:I = 0x2

.field public static final EDGE_LEFT:I = 0x4

.field public static final EDGE_RIGHT:I = 0x8

.field public static final EDGE_TOP:I = 0x1

.field public static final FLAG_TAINTED:I = -0x80000000

.field public static final FLAG_WINDOW_IS_OBSCURED:I = 0x1

.field private static final HISTORY_CURRENT:I = -0x80000000

.field public static final HW_REVISION_VALUE:I = 0x5

.field public static final INVALID_POINTER_ID:I = -0x1

.field private static final MAX_RECYCLED:I = 0xa

.field private static final NS_PER_MS:J = 0xf4240L

.field public static final TOOL_TYPE_ERASER:I = 0x4

.field public static final TOOL_TYPE_FINGER:I = 0x1

.field public static final TOOL_TYPE_MOUSE:I = 0x3

.field public static final TOOL_TYPE_STYLUS:I = 0x2

.field private static final TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOOL_TYPE_UNKNOWN:I

.field private static final gRecyclerLock:Ljava/lang/Object;

.field private static gRecyclerTop:Landroid/view/MotionEvent;

.field private static gRecyclerUsed:I

.field private static final gSharedTempLock:Ljava/lang/Object;

.field private static gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private static gSharedTempPointerIndexMap:[I

.field private static gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;


# instance fields
.field private mNativePtr:I

.field private mNext:Landroid/view/MotionEvent;

.field mScaleFactorX:F

.field mScaleFactorY:F

.field mScaledWindowOffsetX:F

.field mScaledWindowOffsetY:F


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1170
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Landroid/view/MotionEvent;->AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    .line 1172
    sget-object v0, Landroid/view/MotionEvent;->AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    .line 1173
    .local v0, "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string v1, "AXIS_X"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1174
    const-string v1, "AXIS_Y"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1175
    const-string v1, "AXIS_PRESSURE"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1176
    const-string v1, "AXIS_SIZE"

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1177
    const-string v1, "AXIS_TOUCH_MAJOR"

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1178
    const/4 v1, 0x5

    const-string v2, "AXIS_TOUCH_MINOR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1179
    const/4 v1, 0x6

    const-string v2, "AXIS_TOOL_MAJOR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1180
    const/4 v1, 0x7

    const-string v2, "AXIS_TOOL_MINOR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1181
    const/16 v1, 0x8

    const-string v2, "AXIS_ORIENTATION"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1182
    const/16 v1, 0x9

    const-string v2, "AXIS_VSCROLL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1183
    const/16 v1, 0xa

    const-string v2, "AXIS_HSCROLL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1184
    const/16 v1, 0xb

    const-string v2, "AXIS_Z"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1185
    const/16 v1, 0xc

    const-string v2, "AXIS_RX"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1186
    const/16 v1, 0xd

    const-string v2, "AXIS_RY"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1187
    const/16 v1, 0xe

    const-string v2, "AXIS_RZ"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1188
    const/16 v1, 0xf

    const-string v2, "AXIS_HAT_X"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1189
    const/16 v1, 0x10

    const-string v2, "AXIS_HAT_Y"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1190
    const/16 v1, 0x11

    const-string v2, "AXIS_LTRIGGER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1191
    const/16 v1, 0x12

    const-string v2, "AXIS_RTRIGGER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1192
    const/16 v1, 0x13

    const-string v2, "AXIS_THROTTLE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1193
    const/16 v1, 0x14

    const-string v2, "AXIS_RUDDER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1194
    const/16 v1, 0x15

    const-string v2, "AXIS_WHEEL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1195
    const/16 v1, 0x16

    const-string v2, "AXIS_GAS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1196
    const/16 v1, 0x17

    const-string v2, "AXIS_BRAKE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1197
    const/16 v1, 0x18

    const-string v2, "AXIS_DISTANCE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1198
    const/16 v1, 0x19

    const-string v2, "AXIS_TILT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1199
    const/16 v1, 0x20

    const-string v2, "AXIS_GENERIC_1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1200
    const/16 v1, 0x21

    const-string v2, "AXIS_GENERIC_2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1201
    const/16 v1, 0x22

    const-string v2, "AXIS_GENERIC_3"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1202
    const/16 v1, 0x23

    const-string v2, "AXIS_GENERIC_4"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1203
    const/16 v1, 0x24

    const-string v2, "AXIS_GENERIC_5"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1204
    const/16 v1, 0x25

    const-string v2, "AXIS_GENERIC_6"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1205
    const/16 v1, 0x26

    const-string v2, "AXIS_GENERIC_7"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1206
    const/16 v1, 0x27

    const-string v2, "AXIS_GENERIC_8"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1207
    const/16 v1, 0x28

    const-string v2, "AXIS_GENERIC_9"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1208
    const/16 v1, 0x29

    const-string v2, "AXIS_GENERIC_10"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1209
    const/16 v1, 0x2a

    const-string v2, "AXIS_GENERIC_11"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1210
    const/16 v1, 0x2b

    const-string v2, "AXIS_GENERIC_12"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1211
    const/16 v1, 0x2c

    const-string v2, "AXIS_GENERIC_13"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1212
    const/16 v1, 0x2d

    const-string v2, "AXIS_GENERIC_14"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1213
    const/16 v1, 0x2e

    const-string v2, "AXIS_GENERIC_15"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1214
    const/16 v1, 0x2f

    const-string v2, "AXIS_GENERIC_16"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1218
    const/16 v1, 0x30

    const-string v2, "AXIS_SURFACE_SIZE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1219
    const/16 v1, 0x31

    const-string v2, "AXIS_SURFACE_MAJOR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1220
    const/16 v1, 0x32

    const-string v2, "AXIS_SURFACE_MINOR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1221
    const/16 v1, 0x33

    const-string v2, "AXIS_ANGLE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1222
    const/16 v1, 0x34

    const-string v2, "AXIS_PALM"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1223
    const/16 v1, 0x36

    const-string v2, "AXIS_SUMSIZE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1224
    const/16 v1, 0x35

    const-string v2, "AXIS_ECCEN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1229
    const-string/jumbo v1, "ro.revision"

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_163

    .line 1287
    :cond_163
    const/16 v1, 0x20

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "BUTTON_PRIMARY"

    aput-object v2, v1, v4

    const-string v2, "BUTTON_SECONDARY"

    aput-object v2, v1, v5

    const-string v2, "BUTTON_TERTIARY"

    aput-object v2, v1, v6

    const-string v2, "BUTTON_BACK"

    aput-object v2, v1, v7

    const-string v2, "BUTTON_FORWARD"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "0x00000020"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "0x00000040"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "0x00000080"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "0x00000100"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "0x00000200"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "0x00000400"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "0x00000800"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "0x00001000"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "0x00002000"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "0x00004000"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "0x00008000"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "0x00010000"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "0x00020000"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "0x00040000"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "0x00080000"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "0x00100000"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "0x00200000"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "0x00400000"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "0x00800000"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "0x01000000"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "0x02000000"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "0x04000000"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "0x08000000"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "0x10000000"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "0x20000000"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "0x40000000"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "0x80000000"

    aput-object v3, v1, v2

    sput-object v1, Landroid/view/MotionEvent;->BUTTON_SYMBOLIC_NAMES:[Ljava/lang/String;

    .line 1363
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Landroid/view/MotionEvent;->TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    .line 1365
    sget-object v0, Landroid/view/MotionEvent;->TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    .line 1366
    const-string v1, "TOOL_TYPE_UNKNOWN"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1367
    const-string v1, "TOOL_TYPE_FINGER"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1368
    const-string v1, "TOOL_TYPE_STYLUS"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1369
    const-string v1, "TOOL_TYPE_MOUSE"

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1370
    const-string v1, "TOOL_TYPE_ERASER"

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1377
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    .line 1383
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    .line 3544
    new-instance v1, Landroid/view/MotionEvent$1;

    invoke-direct {v1}, Landroid/view/MotionEvent$1;-><init>()V

    sput-object v1, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/high16 v1, 0x3f800000

    const/4 v0, 0x0

    .line 1461
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 2589
    iput v1, p0, Landroid/view/MotionEvent;->mScaleFactorX:F

    .line 2590
    iput v1, p0, Landroid/view/MotionEvent;->mScaleFactorY:F

    .line 2591
    iput v0, p0, Landroid/view/MotionEvent;->mScaledWindowOffsetX:F

    .line 2592
    iput v0, p0, Landroid/view/MotionEvent;->mScaledWindowOffsetY:F

    .line 1462
    return-void
.end method

.method public static actionToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "action"    # I

    .prologue
    .line 3425
    packed-switch p0, :pswitch_data_62

    .line 3445
    :pswitch_3
    const v1, 0xff00

    and-int/2addr v1, p0

    shr-int/lit8 v0, v1, 0x8

    .line 3446
    .local v0, "index":I
    and-int/lit16 v1, p0, 0xff

    packed-switch v1, :pswitch_data_7c

    .line 3452
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .end local v0    # "index":I
    :goto_12
    return-object v1

    .line 3427
    :pswitch_13
    const-string v1, "ACTION_DOWN"

    goto :goto_12

    .line 3429
    :pswitch_16
    const-string v1, "ACTION_UP"

    goto :goto_12

    .line 3431
    :pswitch_19
    const-string v1, "ACTION_CANCEL"

    goto :goto_12

    .line 3433
    :pswitch_1c
    const-string v1, "ACTION_OUTSIDE"

    goto :goto_12

    .line 3435
    :pswitch_1f
    const-string v1, "ACTION_MOVE"

    goto :goto_12

    .line 3437
    :pswitch_22
    const-string v1, "ACTION_HOVER_MOVE"

    goto :goto_12

    .line 3439
    :pswitch_25
    const-string v1, "ACTION_SCROLL"

    goto :goto_12

    .line 3441
    :pswitch_28
    const-string v1, "ACTION_HOVER_ENTER"

    goto :goto_12

    .line 3443
    :pswitch_2b
    const-string v1, "ACTION_HOVER_EXIT"

    goto :goto_12

    .line 3448
    .restart local v0    # "index":I
    :pswitch_2e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_POINTER_DOWN("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_12

    .line 3450
    :pswitch_48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_POINTER_UP("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_12

    .line 3425
    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_13
        :pswitch_16
        :pswitch_1f
        :pswitch_19
        :pswitch_1c
        :pswitch_3
        :pswitch_3
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
    .end packed-switch

    .line 3446
    :pswitch_data_7c
    .packed-switch 0x5
        :pswitch_2e
        :pswitch_48
    .end packed-switch
.end method

.method public static axisFromString(Ljava/lang/String;)I
    .registers 6
    .param p0, "symbolicName"    # Ljava/lang/String;

    .prologue
    .line 3477
    if-nez p0, :cond_b

    .line 3478
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "symbolicName must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3481
    :cond_b
    sget-object v3, Landroid/view/MotionEvent;->AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 3482
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v0, :cond_24

    .line 3483
    sget-object v3, Landroid/view/MotionEvent;->AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 3491
    .end local v2    # "i":I
    :goto_20
    return v2

    .line 3482
    .restart local v2    # "i":I
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 3489
    :cond_24
    const/16 v3, 0xa

    :try_start_26
    invoke-static {p0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_29} :catch_2b

    move-result v2

    goto :goto_20

    .line 3490
    :catch_2b
    move-exception v1

    .line 3491
    .local v1, "ex":Ljava/lang/NumberFormatException;
    const/4 v2, -0x1

    goto :goto_20
.end method

.method public static axisToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "axis"    # I

    .prologue
    .line 3464
    sget-object v1, Landroid/view/MotionEvent;->AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3465
    .local v0, "symbolicName":Ljava/lang/String;
    if-eqz v0, :cond_b

    .end local v0    # "symbolicName":Ljava/lang/String;
    :goto_a
    return-object v0

    .restart local v0    # "symbolicName":Ljava/lang/String;
    :cond_b
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static buttonStateToString(I)Ljava/lang/String;
    .registers 6
    .param p0, "buttonState"    # I

    .prologue
    .line 3506
    if-nez p0, :cond_5

    .line 3507
    const-string v2, "0"

    .line 3528
    :cond_4
    :goto_4
    return-object v2

    .line 3509
    :cond_5
    const/4 v3, 0x0

    .line 3510
    .local v3, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 3511
    .local v0, "i":I
    :goto_7
    if-eqz p0, :cond_2d

    .line 3512
    and-int/lit8 v4, p0, 0x1

    if-eqz v4, :cond_22

    const/4 v1, 0x1

    .line 3513
    .local v1, "isSet":Z
    :goto_e
    ushr-int/lit8 p0, p0, 0x1

    .line 3514
    if-eqz v1, :cond_1f

    .line 3515
    sget-object v4, Landroid/view/MotionEvent;->BUTTON_SYMBOLIC_NAMES:[Ljava/lang/String;

    aget-object v2, v4, v0

    .line 3516
    .local v2, "name":Ljava/lang/String;
    if-nez v3, :cond_24

    .line 3517
    if-eqz p0, :cond_4

    .line 3520
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "result":Ljava/lang/StringBuilder;
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3526
    .end local v2    # "name":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/StringBuilder;
    :cond_1f
    :goto_1f
    add-int/lit8 v0, v0, 0x1

    .line 3527
    goto :goto_7

    .line 3512
    .end local v1    # "isSet":Z
    :cond_22
    const/4 v1, 0x0

    goto :goto_e

    .line 3522
    .restart local v1    # "isSet":Z
    .restart local v2    # "name":Ljava/lang/String;
    :cond_24
    const/16 v4, 0x7c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3523
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 3528
    .end local v1    # "isSet":Z
    .end local v2    # "name":Ljava/lang/String;
    :cond_2d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method private static final clamp(FFF)F
    .registers 4
    .param p0, "value"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    .prologue
    .line 3250
    cmpg-float v0, p0, p1

    if-gez v0, :cond_5

    .line 3255
    .end local p1    # "low":F
    :goto_4
    return p1

    .line 3252
    .restart local p1    # "low":F
    :cond_5
    cmpl-float v0, p0, p2

    if-lez v0, :cond_b

    move p1, p2

    .line 3253
    goto :goto_4

    :cond_b
    move p1, p0

    .line 3255
    goto :goto_4
.end method

.method public static createFromParcelBody(Landroid/os/Parcel;)Landroid/view/MotionEvent;
    .registers 3
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 3558
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    .line 3559
    .local v0, "ev":Landroid/view/MotionEvent;
    iget v1, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v1, p0}, Landroid/view/MotionEvent;->nativeReadFromParcel(ILandroid/os/Parcel;)I

    move-result v1

    iput v1, v0, Landroid/view/MotionEvent;->mNativePtr:I

    .line 3560
    return-object v0
.end method

.method private static final ensureSharedTempPointerCapacity(I)V
    .registers 3
    .param p0, "desiredCapacity"    # I

    .prologue
    .line 1389
    sget-object v1, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-eqz v1, :cond_9

    sget-object v1, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v1, v1

    if-ge v1, p0, :cond_28

    .line 1391
    :cond_9
    sget-object v1, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-eqz v1, :cond_15

    sget-object v1, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v0, v1

    .line 1392
    .local v0, "capacity":I
    :goto_10
    if-ge v0, p0, :cond_18

    .line 1393
    mul-int/lit8 v0, v0, 0x2

    goto :goto_10

    .line 1391
    .end local v0    # "capacity":I
    :cond_15
    const/16 v0, 0x8

    goto :goto_10

    .line 1395
    .restart local v0    # "capacity":I
    :cond_18
    invoke-static {v0}, Landroid/view/MotionEvent$PointerCoords;->createArray(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    sput-object v1, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 1396
    invoke-static {v0}, Landroid/view/MotionEvent$PointerProperties;->createArray(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v1

    sput-object v1, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 1397
    new-array v1, v0, [I

    sput-object v1, Landroid/view/MotionEvent;->gSharedTempPointerIndexMap:[I

    .line 1399
    .end local v0    # "capacity":I
    :cond_28
    return-void
.end method

.method private static native nativeAddBatch(IJ[Landroid/view/MotionEvent$PointerCoords;I)V
.end method

.method private static native nativeCopy(IIZ)I
.end method

.method private static native nativeDispose(I)V
.end method

.method private static native nativeFindPointerIndex(II)I
.end method

.method private static native nativeGetAction(I)I
.end method

.method private static native nativeGetAxisValue(IIII)F
.end method

.method private static native nativeGetButtonState(I)I
.end method

.method private static native nativeGetDeviceId(I)I
.end method

.method private static native nativeGetDisplayId(I)I
.end method

.method private static native nativeGetDownTimeNanos(I)J
.end method

.method private static native nativeGetEdgeFlags(I)I
.end method

.method private static native nativeGetEventTimeNanos(II)J
.end method

.method private static native nativeGetFlags(I)I
.end method

.method private static native nativeGetHistorySize(I)I
.end method

.method private static native nativeGetMetaState(I)I
.end method

.method private static native nativeGetPointerCoords(IIILandroid/view/MotionEvent$PointerCoords;)V
.end method

.method private static native nativeGetPointerCount(I)I
.end method

.method private static native nativeGetPointerId(II)I
.end method

.method private static native nativeGetPointerProperties(IILandroid/view/MotionEvent$PointerProperties;)V
.end method

.method private static native nativeGetRawAxisValue(IIII)F
.end method

.method private static native nativeGetSource(I)I
.end method

.method private static native nativeGetToolType(II)I
.end method

.method private static native nativeGetXOffset(I)F
.end method

.method private static native nativeGetXPrecision(I)F
.end method

.method private static native nativeGetYOffset(I)F
.end method

.method private static native nativeGetYPrecision(I)F
.end method

.method private static native nativeInitialize(IIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)I
.end method

.method private static native nativeIsTouchEvent(I)Z
.end method

.method private static native nativeOffsetLocation(IFF)V
.end method

.method private static native nativeReadFromParcel(ILandroid/os/Parcel;)I
.end method

.method private static native nativeScale(IF)V
.end method

.method private static native nativeSetAction(II)V
.end method

.method private static native nativeSetDownTimeNanos(IJ)V
.end method

.method private static native nativeSetEdgeFlags(II)V
.end method

.method private static native nativeSetFlags(II)V
.end method

.method private static native nativeSetSource(II)I
.end method

.method private static native nativeTransform(ILandroid/graphics/Matrix;)V
.end method

.method private static native nativeWriteToParcel(ILandroid/os/Parcel;)V
.end method

.method private static obtain()Landroid/view/MotionEvent;
    .registers 3

    .prologue
    .line 1478
    sget-object v2, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1479
    :try_start_3
    sget-object v0, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    .line 1480
    .local v0, "ev":Landroid/view/MotionEvent;
    if-nez v0, :cond_e

    .line 1481
    new-instance v0, Landroid/view/MotionEvent;

    .end local v0    # "ev":Landroid/view/MotionEvent;
    invoke-direct {v0}, Landroid/view/MotionEvent;-><init>()V

    monitor-exit v2

    .line 1488
    .restart local v0    # "ev":Landroid/view/MotionEvent;
    :goto_d
    return-object v0

    .line 1483
    :cond_e
    iget-object v1, v0, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    sput-object v1, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    .line 1484
    sget v1, Landroid/view/MotionEvent;->gRecyclerUsed:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/view/MotionEvent;->gRecyclerUsed:I

    .line 1485
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_20

    .line 1486
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    .line 1487
    invoke-virtual {v0}, Landroid/view/InputEvent;->prepareForReuse()V

    goto :goto_d

    .line 1485
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public static obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;
    .registers 37
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "x"    # F
    .param p6, "y"    # F
    .param p7, "pressure"    # F
    .param p8, "size"    # F
    .param p9, "metaState"    # I
    .param p10, "xPrecision"    # F
    .param p11, "yPrecision"    # F
    .param p12, "deviceId"    # I
    .param p13, "edgeFlags"    # I

    .prologue
    .line 1629
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v21

    .line 1630
    .local v21, "ev":Landroid/view/MotionEvent;
    sget-object v22, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v22

    .line 1631
    const/4 v1, 0x1

    :try_start_8
    invoke-static {v1}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 1632
    sget-object v19, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 1633
    .local v19, "pp":[Landroid/view/MotionEvent$PointerProperties;
    const/4 v1, 0x0

    aget-object v1, v19, v1

    invoke-virtual {v1}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 1634
    const/4 v1, 0x0

    aget-object v1, v19, v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 1636
    sget-object v20, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 1637
    .local v20, "pc":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v1, 0x0

    aget-object v1, v20, v1

    invoke-virtual {v1}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 1638
    const/4 v1, 0x0

    aget-object v1, v20, v1

    move/from16 v0, p5

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1639
    const/4 v1, 0x0

    aget-object v1, v20, v1

    move/from16 v0, p6

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1640
    const/4 v1, 0x0

    aget-object v1, v20, v1

    move/from16 v0, p7

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 1641
    const/4 v1, 0x0

    aget-object v1, v20, v1

    move/from16 v0, p8

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 1643
    move-object/from16 v0, v21

    iget v1, v0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/32 v6, 0xf4240

    mul-long v14, p0, v6

    const-wide/32 v6, 0xf4240

    mul-long v16, p2, v6

    const/16 v18, 0x1

    move/from16 v2, p12

    move/from16 v4, p4

    move/from16 v6, p13

    move/from16 v7, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-static/range {v1 .. v20}, Landroid/view/MotionEvent;->nativeInitialize(IIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)I

    move-result v1

    move-object/from16 v0, v21

    iput v1, v0, Landroid/view/MotionEvent;->mNativePtr:I

    .line 1648
    monitor-exit v22

    return-object v21

    .line 1649
    .end local v19    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    .end local v20    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    :catchall_69
    move-exception v1

    monitor-exit v22
    :try_end_6b
    .catchall {:try_start_8 .. :try_end_6b} :catchall_69

    throw v1
.end method

.method public static obtain(JJIFFI)Landroid/view/MotionEvent;
    .registers 22
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "x"    # F
    .param p6, "y"    # F
    .param p7, "metaState"    # I

    .prologue
    .line 1710
    const/high16 v7, 0x3f800000

    const/high16 v8, 0x3f800000

    const/high16 v10, 0x3f800000

    const/high16 v11, 0x3f800000

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v9, p7

    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(JJIIFFFFIFFII)Landroid/view/MotionEvent;
    .registers 29
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "pointerCount"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "pressure"    # F
    .param p9, "size"    # F
    .param p10, "metaState"    # I
    .param p11, "xPrecision"    # F
    .param p12, "yPrecision"    # F
    .param p13, "deviceId"    # I
    .param p14, "edgeFlags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1689
    move-wide v0, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    move/from16 v13, p14

    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;
    .registers 35
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "pointerCount"    # I
    .param p6, "pointerIds"    # [I
    .param p7, "pointerCoords"    # [Landroid/view/MotionEvent$PointerCoords;
    .param p8, "metaState"    # I
    .param p9, "xPrecision"    # F
    .param p10, "yPrecision"    # F
    .param p11, "deviceId"    # I
    .param p12, "edgeFlags"    # I
    .param p13, "source"    # I
    .param p14, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1584
    sget-object v19, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v19

    .line 1585
    :try_start_3
    invoke-static/range {p5 .. p5}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 1586
    sget-object v8, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 1587
    .local v8, "pp":[Landroid/view/MotionEvent$PointerProperties;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_a
    move/from16 v0, v18

    move/from16 v1, p5

    if-ge v0, v1, :cond_1e

    .line 1588
    aget-object v2, v8, v18

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 1589
    aget-object v2, v8, v18

    aget v3, p6, v18

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 1587
    add-int/lit8 v18, v18, 0x1

    goto :goto_a

    .line 1591
    :cond_1e
    const/4 v11, 0x0

    move-wide/from16 v2, p0

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    monitor-exit v19

    return-object v2

    .line 1594
    .end local v8    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    .end local v18    # "i":I
    :catchall_3d
    move-exception v2

    monitor-exit v19
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw v2
.end method

.method public static obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;
    .registers 38
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "pointerCount"    # I
    .param p6, "pointerProperties"    # [Landroid/view/MotionEvent$PointerProperties;
    .param p7, "pointerCoords"    # [Landroid/view/MotionEvent$PointerCoords;
    .param p8, "metaState"    # I
    .param p9, "buttonState"    # I
    .param p10, "xPrecision"    # F
    .param p11, "yPrecision"    # F
    .param p12, "deviceId"    # I
    .param p13, "edgeFlags"    # I
    .param p14, "source"    # I
    .param p15, "flags"    # I

    .prologue
    .line 1524
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v21

    .line 1525
    .local v21, "ev":Landroid/view/MotionEvent;
    move-object/from16 v0, v21

    iget v1, v0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/32 v2, 0xf4240

    mul-long v14, p0, v2

    const-wide/32 v2, 0xf4240

    mul-long v16, p2, v2

    move/from16 v2, p12

    move/from16 v3, p14

    move/from16 v4, p4

    move/from16 v5, p15

    move/from16 v6, p13

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v18, p5

    move-object/from16 v19, p6

    move-object/from16 v20, p7

    invoke-static/range {v1 .. v20}, Landroid/view/MotionEvent;->nativeInitialize(IIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)I

    move-result v1

    move-object/from16 v0, v21

    iput v1, v0, Landroid/view/MotionEvent;->mNativePtr:I

    .line 1530
    return-object v21
.end method

.method public static obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;
    .registers 39
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "pointerCount"    # I
    .param p6, "pointerProperties"    # [Landroid/view/MotionEvent$PointerProperties;
    .param p7, "pointerCoords"    # [Landroid/view/MotionEvent$PointerCoords;
    .param p8, "metaState"    # I
    .param p9, "buttonState"    # I
    .param p10, "displayId"    # I
    .param p11, "xPrecision"    # F
    .param p12, "yPrecision"    # F
    .param p13, "deviceId"    # I
    .param p14, "edgeFlags"    # I
    .param p15, "source"    # I
    .param p16, "flags"    # I

    .prologue
    .line 1541
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v21

    .line 1542
    .local v21, "ev":Landroid/view/MotionEvent;
    move-object/from16 v0, v21

    iget v1, v0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/32 v2, 0xf4240

    mul-long v14, p0, v2

    const-wide/32 v2, 0xf4240

    mul-long v16, p2, v2

    move/from16 v2, p13

    move/from16 v3, p15

    move/from16 v4, p4

    move/from16 v5, p16

    move/from16 v6, p14

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v18, p5

    move-object/from16 v19, p6

    move-object/from16 v20, p7

    invoke-static/range {v1 .. v20}, Landroid/view/MotionEvent;->nativeInitialize(IIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)I

    move-result v1

    move-object/from16 v0, v21

    iput v1, v0, Landroid/view/MotionEvent;->mNativePtr:I

    .line 1547
    return-object v21
.end method

.method public static obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 5
    .param p0, "other"    # Landroid/view/MotionEvent;

    .prologue
    .line 1718
    if-nez p0, :cond_b

    .line 1719
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "other motion event must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1722
    :cond_b
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    .line 1723
    .local v0, "ev":Landroid/view/MotionEvent;
    iget v1, v0, Landroid/view/MotionEvent;->mNativePtr:I

    iget v2, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/view/MotionEvent;->nativeCopy(IIZ)I

    move-result v1

    iput v1, v0, Landroid/view/MotionEvent;->mNativePtr:I

    .line 1724
    return-object v0
.end method

.method public static obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 5
    .param p0, "other"    # Landroid/view/MotionEvent;

    .prologue
    .line 1732
    if-nez p0, :cond_b

    .line 1733
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "other motion event must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1736
    :cond_b
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    .line 1737
    .local v0, "ev":Landroid/view/MotionEvent;
    iget v1, v0, Landroid/view/MotionEvent;->mNativePtr:I

    iget v2, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/MotionEvent;->nativeCopy(IIZ)I

    move-result v1

    iput v1, v0, Landroid/view/MotionEvent;->mNativePtr:I

    .line 1738
    return-object v0
.end method

.method public static toolTypeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "toolType"    # I

    .prologue
    .line 3540
    sget-object v1, Landroid/view/MotionEvent;->TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3541
    .local v0, "symbolicName":Ljava/lang/String;
    if-eqz v0, :cond_b

    .end local v0    # "symbolicName":Ljava/lang/String;
    :goto_a
    return-object v0

    .restart local v0    # "symbolicName":Ljava/lang/String;
    :cond_b
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method


# virtual methods
.method public final addBatch(JFFFFI)V
    .registers 13
    .param p1, "eventTime"    # J
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "pressure"    # F
    .param p6, "size"    # F
    .param p7, "metaState"    # I

    .prologue
    .line 3143
    sget-object v2, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3144
    const/4 v1, 0x1

    :try_start_4
    invoke-static {v1}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 3145
    sget-object v0, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 3146
    .local v0, "pc":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 3147
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput p3, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3148
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput p4, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 3149
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput p5, v1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 3150
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput p6, v1, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 3152
    iget v1, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const-wide/32 v3, 0xf4240

    mul-long/2addr v3, p1

    invoke-static {v1, v3, v4, v0, p7}, Landroid/view/MotionEvent;->nativeAddBatch(IJ[Landroid/view/MotionEvent$PointerCoords;I)V

    .line 3153
    monitor-exit v2

    .line 3154
    return-void

    .line 3153
    .end local v0    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    :catchall_2e
    move-exception v1

    monitor-exit v2
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public final addBatch(J[Landroid/view/MotionEvent$PointerCoords;I)V
    .registers 8
    .param p1, "eventTime"    # J
    .param p3, "pointerCoords"    # [Landroid/view/MotionEvent$PointerCoords;
    .param p4, "metaState"    # I

    .prologue
    .line 3168
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const-wide/32 v1, 0xf4240

    mul-long/2addr v1, p1

    invoke-static {v0, v1, v2, p3, p4}, Landroid/view/MotionEvent;->nativeAddBatch(IJ[Landroid/view/MotionEvent$PointerCoords;I)V

    .line 3169
    return-void
.end method

.method public final addBatch(Landroid/view/MotionEvent;)Z
    .registers 16
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 3184
    iget v11, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v11}, Landroid/view/MotionEvent;->nativeGetAction(I)I

    move-result v0

    .line 3185
    .local v0, "action":I
    const/4 v11, 0x2

    if-eq v0, v11, :cond_e

    const/4 v11, 0x7

    if-eq v0, v11, :cond_e

    .line 3186
    const/4 v11, 0x0

    .line 3229
    :goto_d
    return v11

    .line 3188
    :cond_e
    iget v11, p1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v11}, Landroid/view/MotionEvent;->nativeGetAction(I)I

    move-result v11

    if-eq v0, v11, :cond_18

    .line 3189
    const/4 v11, 0x0

    goto :goto_d

    .line 3192
    :cond_18
    iget v11, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v11}, Landroid/view/MotionEvent;->nativeGetDeviceId(I)I

    move-result v11

    iget v12, p1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v12}, Landroid/view/MotionEvent;->nativeGetDeviceId(I)I

    move-result v12

    if-ne v11, v12, :cond_42

    iget v11, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v11}, Landroid/view/MotionEvent;->nativeGetSource(I)I

    move-result v11

    iget v12, p1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v12}, Landroid/view/MotionEvent;->nativeGetSource(I)I

    move-result v12

    if-ne v11, v12, :cond_42

    iget v11, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v11}, Landroid/view/MotionEvent;->nativeGetFlags(I)I

    move-result v11

    iget v12, p1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v12}, Landroid/view/MotionEvent;->nativeGetFlags(I)I

    move-result v12

    if-eq v11, v12, :cond_44

    .line 3195
    :cond_42
    const/4 v11, 0x0

    goto :goto_d

    .line 3198
    :cond_44
    iget v11, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v11}, Landroid/view/MotionEvent;->nativeGetPointerCount(I)I

    move-result v9

    .line 3199
    .local v9, "pointerCount":I
    iget v11, p1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v11}, Landroid/view/MotionEvent;->nativeGetPointerCount(I)I

    move-result v11

    if-eq v9, v11, :cond_54

    .line 3200
    const/4 v11, 0x0

    goto :goto_d

    .line 3203
    :cond_54
    sget-object v12, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v12

    .line 3204
    const/4 v11, 0x2

    :try_start_58
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-static {v11}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 3205
    sget-object v10, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 3206
    .local v10, "pp":[Landroid/view/MotionEvent$PointerProperties;
    sget-object v8, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 3208
    .local v8, "pc":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_64
    if-ge v6, v9, :cond_8b

    .line 3209
    iget v11, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v13, 0x0

    aget-object v13, v10, v13

    invoke-static {v11, v6, v13}, Landroid/view/MotionEvent;->nativeGetPointerProperties(IILandroid/view/MotionEvent$PointerProperties;)V

    .line 3210
    iget v11, p1, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v13, 0x1

    aget-object v13, v10, v13

    invoke-static {v11, v6, v13}, Landroid/view/MotionEvent;->nativeGetPointerProperties(IILandroid/view/MotionEvent$PointerProperties;)V

    .line 3211
    const/4 v11, 0x0

    aget-object v11, v10, v11

    const/4 v13, 0x1

    aget-object v13, v10, v13

    # invokes: Landroid/view/MotionEvent$PointerProperties;->equals(Landroid/view/MotionEvent$PointerProperties;)Z
    invoke-static {v11, v13}, Landroid/view/MotionEvent$PointerProperties;->access$000(Landroid/view/MotionEvent$PointerProperties;Landroid/view/MotionEvent$PointerProperties;)Z

    move-result v11

    if-nez v11, :cond_88

    .line 3212
    const/4 v11, 0x0

    monitor-exit v12

    goto :goto_d

    .line 3228
    .end local v6    # "i":I
    .end local v8    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    .end local v10    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    :catchall_85
    move-exception v11

    monitor-exit v12
    :try_end_87
    .catchall {:try_start_58 .. :try_end_87} :catchall_85

    throw v11

    .line 3208
    .restart local v6    # "i":I
    .restart local v8    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    .restart local v10    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    :cond_88
    add-int/lit8 v6, v6, 0x1

    goto :goto_64

    .line 3216
    :cond_8b
    :try_start_8b
    iget v11, p1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v11}, Landroid/view/MotionEvent;->nativeGetMetaState(I)I

    move-result v7

    .line 3217
    .local v7, "metaState":I
    iget v11, p1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v11}, Landroid/view/MotionEvent;->nativeGetHistorySize(I)I

    move-result v5

    .line 3218
    .local v5, "historySize":I
    const/4 v3, 0x0

    .local v3, "h":I
    :goto_98
    if-gt v3, v5, :cond_bb

    .line 3219
    if-ne v3, v5, :cond_ab

    const/high16 v4, -0x80000000

    .line 3221
    .local v4, "historyPos":I
    :goto_9e
    const/4 v6, 0x0

    :goto_9f
    if-ge v6, v9, :cond_ad

    .line 3222
    iget v11, p1, Landroid/view/MotionEvent;->mNativePtr:I

    aget-object v13, v8, v6

    invoke-static {v11, v6, v4, v13}, Landroid/view/MotionEvent;->nativeGetPointerCoords(IIILandroid/view/MotionEvent$PointerCoords;)V

    .line 3221
    add-int/lit8 v6, v6, 0x1

    goto :goto_9f

    .end local v4    # "historyPos":I
    :cond_ab
    move v4, v3

    .line 3219
    goto :goto_9e

    .line 3225
    .restart local v4    # "historyPos":I
    :cond_ad
    iget v11, p1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v11, v4}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(II)J

    move-result-wide v1

    .line 3226
    .local v1, "eventTimeNanos":J
    iget v11, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v11, v1, v2, v8, v7}, Landroid/view/MotionEvent;->nativeAddBatch(IJ[Landroid/view/MotionEvent$PointerCoords;I)V

    .line 3218
    add-int/lit8 v3, v3, 0x1

    goto :goto_98

    .line 3228
    .end local v1    # "eventTimeNanos":J
    .end local v4    # "historyPos":I
    :cond_bb
    monitor-exit v12
    :try_end_bc
    .catchall {:try_start_8b .. :try_end_bc} :catchall_85

    .line 3229
    const/4 v11, 0x1

    goto/16 :goto_d
.end method

.method public final clampNoHistory(FFFF)Landroid/view/MotionEvent;
    .registers 30
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 3263
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v22

    .line 3264
    .local v22, "ev":Landroid/view/MotionEvent;
    sget-object v24, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v24

    .line 3265
    :try_start_7
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v2}, Landroid/view/MotionEvent;->nativeGetPointerCount(I)I

    move-result v19

    .line 3267
    .local v19, "pointerCount":I
    invoke-static/range {v19 .. v19}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 3268
    sget-object v20, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 3269
    .local v20, "pp":[Landroid/view/MotionEvent$PointerProperties;
    sget-object v21, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 3271
    .local v21, "pc":[Landroid/view/MotionEvent$PointerCoords;
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_18
    move/from16 v0, v23

    move/from16 v1, v19

    if-ge v0, v1, :cond_59

    .line 3272
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/MotionEvent;->mNativePtr:I

    aget-object v3, v20, v23

    move/from16 v0, v23

    invoke-static {v2, v0, v3}, Landroid/view/MotionEvent;->nativeGetPointerProperties(IILandroid/view/MotionEvent$PointerProperties;)V

    .line 3273
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/MotionEvent;->mNativePtr:I

    const/high16 v3, -0x80000000

    aget-object v4, v21, v23

    move/from16 v0, v23

    invoke-static {v2, v0, v3, v4}, Landroid/view/MotionEvent;->nativeGetPointerCoords(IIILandroid/view/MotionEvent$PointerCoords;)V

    .line 3274
    aget-object v2, v21, v23

    aget-object v3, v21, v23

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    move/from16 v0, p1

    move/from16 v1, p3

    invoke-static {v3, v0, v1}, Landroid/view/MotionEvent;->clamp(FFF)F

    move-result v3

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3275
    aget-object v2, v21, v23

    aget-object v3, v21, v23

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    move/from16 v0, p2

    move/from16 v1, p4

    invoke-static {v3, v0, v1}, Landroid/view/MotionEvent;->clamp(FFF)F

    move-result v3

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 3271
    add-int/lit8 v23, v23, 0x1

    goto :goto_18

    .line 3277
    :cond_59
    move-object/from16 v0, v22

    iget v2, v0, Landroid/view/MotionEvent;->mNativePtr:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v3}, Landroid/view/MotionEvent;->nativeGetDeviceId(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v4}, Landroid/view/MotionEvent;->nativeGetSource(I)I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v5}, Landroid/view/MotionEvent;->nativeGetAction(I)I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v6}, Landroid/view/MotionEvent;->nativeGetFlags(I)I

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v7}, Landroid/view/MotionEvent;->nativeGetEdgeFlags(I)I

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v8}, Landroid/view/MotionEvent;->nativeGetMetaState(I)I

    move-result v8

    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v9}, Landroid/view/MotionEvent;->nativeGetButtonState(I)I

    move-result v9

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v10}, Landroid/view/MotionEvent;->nativeGetDisplayId(I)I

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v11}, Landroid/view/MotionEvent;->nativeGetXOffset(I)F

    move-result v11

    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v12}, Landroid/view/MotionEvent;->nativeGetYOffset(I)F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v13}, Landroid/view/MotionEvent;->nativeGetXPrecision(I)F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v14}, Landroid/view/MotionEvent;->nativeGetYPrecision(I)F

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v15}, Landroid/view/MotionEvent;->nativeGetDownTimeNanos(I)J

    move-result-wide v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/MotionEvent;->mNativePtr:I

    move/from16 v17, v0

    const/high16 v18, -0x80000000

    invoke-static/range {v17 .. v18}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(II)J

    move-result-wide v17

    invoke-static/range {v2 .. v21}, Landroid/view/MotionEvent;->nativeInitialize(IIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)I

    move-result v2

    move-object/from16 v0, v22

    iput v2, v0, Landroid/view/MotionEvent;->mNativePtr:I

    .line 3287
    monitor-exit v24

    return-object v22

    .line 3288
    .end local v19    # "pointerCount":I
    .end local v20    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    .end local v21    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    .end local v23    # "i":I
    :catchall_db
    move-exception v2

    monitor-exit v24
    :try_end_dd
    .catchall {:try_start_7 .. :try_end_dd} :catchall_db

    throw v2
.end method

.method public bridge synthetic copy()Landroid/view/InputEvent;
    .registers 2

    .prologue
    .line 170
    invoke-virtual {p0}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public copy()Landroid/view/MotionEvent;
    .registers 2

    .prologue
    .line 1744
    invoke-static {p0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1467
    :try_start_0
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    if-eqz v0, :cond_c

    .line 1468
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeDispose(I)V

    .line 1469
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/MotionEvent;->mNativePtr:I
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_10

    .line 1472
    :cond_c
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1474
    return-void

    .line 1472
    :catchall_10
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final findPointerIndex(I)I
    .registers 3
    .param p1, "pointerId"    # I

    .prologue
    .line 2203
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/view/MotionEvent;->nativeFindPointerIndex(II)I

    move-result v0

    return v0
.end method

.method public final getAction()I
    .registers 2

    .prologue
    .line 1807
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetAction(I)I

    move-result v0

    return v0
.end method

.method public final getActionIndex()I
    .registers 3

    .prologue
    .line 1830
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetAction(I)I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public final getActionMasked()I
    .registers 2

    .prologue
    .line 1816
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetAction(I)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final getAdjustedRawXForScaledWindow()F
    .registers 4

    .prologue
    .line 2608
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 2609
    .local v0, "rawX":F
    iget v1, p0, Landroid/view/MotionEvent;->mScaledWindowOffsetX:F

    sub-float v1, v0, v1

    iget v2, p0, Landroid/view/MotionEvent;->mScaleFactorX:F

    mul-float v0, v1, v2

    .line 2610
    return v0
.end method

.method public final getAdjustedRawYForScaledWindow()F
    .registers 4

    .prologue
    .line 2615
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    .line 2616
    .local v0, "rawY":F
    iget v1, p0, Landroid/view/MotionEvent;->mScaledWindowOffsetY:F

    sub-float v1, v0, v1

    iget v2, p0, Landroid/view/MotionEvent;->mScaleFactorY:F

    mul-float v0, v1, v2

    .line 2617
    return v0
.end method

.method public final getAngle()F
    .registers 5

    .prologue
    .line 2108
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/16 v1, 0x33

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getAngle(I)F
    .registers 5
    .param p1, "pointerIndex"    # I

    .prologue
    .line 2432
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/16 v1, 0x33

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getAxisValue(I)F
    .registers 5
    .param p1, "axis"    # I

    .prologue
    .line 2020
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    invoke-static {v0, p1, v1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getAxisValue(II)F
    .registers 5
    .param p1, "axis"    # I
    .param p2, "pointerIndex"    # I

    .prologue
    .line 2492
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/high16 v1, -0x80000000

    invoke-static {v0, p1, p2, v1}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getButtonState()I
    .registers 2

    .prologue
    .line 2550
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetButtonState(I)I

    move-result v0

    return v0
.end method

.method public final getDeviceId()I
    .registers 2

    .prologue
    .line 1784
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetDeviceId(I)I

    move-result v0

    return v0
.end method

.method public final getDisplayId()I
    .registers 2

    .prologue
    .line 2558
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetDisplayId(I)I

    move-result v0

    return v0
.end method

.method public final getDownTime()J
    .registers 5

    .prologue
    .line 1876
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetDownTimeNanos(I)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final getEccen()F
    .registers 6

    .prologue
    const/16 v4, 0x35

    const/4 v3, 0x0

    const/high16 v2, -0x80000000

    .line 2088
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, v4, v3, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_13

    .line 2090
    const/high16 v0, -0x40800000

    .line 2094
    :goto_12
    return v0

    :cond_13
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, v4, v3, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    goto :goto_12
.end method

.method public final getEccen(I)F
    .registers 6
    .param p1, "pointerIndex"    # I

    .prologue
    const/16 v3, 0x35

    const/high16 v2, -0x80000000

    .line 2411
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x0

    invoke-static {v0, v3, v1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_13

    .line 2413
    const/high16 v0, -0x40800000

    .line 2417
    :goto_12
    return v0

    :cond_13
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, v3, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    goto :goto_12
.end method

.method public final getEdgeFlags()I
    .registers 2

    .prologue
    .line 3070
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetEdgeFlags(I)I

    move-result v0

    return v0
.end method

.method public final getEventTime()J
    .registers 5

    .prologue
    .line 1898
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(II)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final getEventTimeNano()J
    .registers 3

    .prologue
    .line 1917
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getFlags()I
    .registers 2

    .prologue
    .line 1854
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetFlags(I)I

    move-result v0

    return v0
.end method

.method public final getHistoricalAxisValue(II)F
    .registers 5
    .param p1, "axis"    # I
    .param p2, "pos"    # I

    .prologue
    .line 2852
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalAxisValue(III)F
    .registers 5
    .param p1, "axis"    # I
    .param p2, "pointerIndex"    # I
    .param p3, "pos"    # I

    .prologue
    .line 3033
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1, p2, p3}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalEventTime(I)J
    .registers 6
    .param p1, "pos"    # I

    .prologue
    .line 2674
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(II)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final getHistoricalEventTimeNano(I)J
    .registers 4
    .param p1, "pos"    # I

    .prologue
    .line 2700
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getHistoricalOrientation(I)F
    .registers 5
    .param p1, "pos"    # I

    .prologue
    .line 2835
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalOrientation(II)F
    .registers 5
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .prologue
    .line 3014
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/16 v1, 0x8

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V
    .registers 5
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I
    .param p3, "outPointerCoords"    # Landroid/view/MotionEvent$PointerCoords;

    .prologue
    .line 3054
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1, p2, p3}, Landroid/view/MotionEvent;->nativeGetPointerCoords(IIILandroid/view/MotionEvent$PointerCoords;)V

    .line 3055
    return-void
.end method

.method public final getHistoricalPressure(I)F
    .registers 5
    .param p1, "pos"    # I

    .prologue
    .line 2745
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalPressure(II)F
    .registers 5
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .prologue
    .line 2906
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x2

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalSize(I)F
    .registers 5
    .param p1, "pos"    # I

    .prologue
    .line 2760
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalSize(II)F
    .registers 5
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .prologue
    .line 2924
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x3

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalToolMajor(I)F
    .registers 5
    .param p1, "pos"    # I

    .prologue
    .line 2805
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalToolMajor(II)F
    .registers 5
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .prologue
    .line 2978
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x6

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalToolMinor(I)F
    .registers 5
    .param p1, "pos"    # I

    .prologue
    .line 2820
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalToolMinor(II)F
    .registers 5
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .prologue
    .line 2996
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x7

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalTouchMajor(I)F
    .registers 5
    .param p1, "pos"    # I

    .prologue
    .line 2775
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalTouchMajor(II)F
    .registers 5
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .prologue
    .line 2942
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x4

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalTouchMinor(I)F
    .registers 5
    .param p1, "pos"    # I

    .prologue
    .line 2790
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalTouchMinor(II)F
    .registers 5
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .prologue
    .line 2960
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x5

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalX(I)F
    .registers 4
    .param p1, "pos"    # I

    .prologue
    const/4 v1, 0x0

    .line 2715
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, v1, v1, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalX(II)F
    .registers 5
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .prologue
    .line 2870
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalY(I)F
    .registers 5
    .param p1, "pos"    # I

    .prologue
    .line 2730
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalY(II)F
    .registers 5
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .prologue
    .line 2888
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x1

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistorySize()I
    .registers 2

    .prologue
    .line 2654
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetHistorySize(I)I

    move-result v0

    return v0
.end method

.method public final getMetaState()I
    .registers 2

    .prologue
    .line 2535
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetMetaState(I)I

    move-result v0

    return v0
.end method

.method public final getOrientation()F
    .registers 5

    .prologue
    .line 2007
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getOrientation(I)F
    .registers 5
    .param p1, "pointerIndex"    # I

    .prologue
    .line 2347
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/16 v1, 0x8

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getPalm()F
    .registers 5

    .prologue
    .line 2121
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/16 v1, 0x34

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getPalm(I)F
    .registers 5
    .param p1, "pointerIndex"    # I

    .prologue
    .line 2445
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/16 v1, 0x34

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V
    .registers 5
    .param p1, "pointerIndex"    # I
    .param p2, "outPointerCoords"    # Landroid/view/MotionEvent$PointerCoords;

    .prologue
    .line 2506
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/high16 v1, -0x80000000

    invoke-static {v0, p1, v1, p2}, Landroid/view/MotionEvent;->nativeGetPointerCoords(IIILandroid/view/MotionEvent$PointerCoords;)V

    .line 2507
    return-void
.end method

.method public final getPointerCount()I
    .registers 2

    .prologue
    .line 2161
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetPointerCount(I)I

    move-result v0

    return v0
.end method

.method public final getPointerId(I)I
    .registers 3
    .param p1, "pointerIndex"    # I

    .prologue
    .line 2173
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/view/MotionEvent;->nativeGetPointerId(II)I

    move-result v0

    return v0
.end method

.method public final getPointerIdBits()I
    .registers 6

    .prologue
    .line 3296
    const/4 v1, 0x0

    .line 3297
    .local v1, "idBits":I
    iget v3, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v3}, Landroid/view/MotionEvent;->nativeGetPointerCount(I)I

    move-result v2

    .line 3298
    .local v2, "pointerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    if-ge v0, v2, :cond_16

    .line 3299
    const/4 v3, 0x1

    iget v4, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v4, v0}, Landroid/view/MotionEvent;->nativeGetPointerId(II)I

    move-result v4

    shl-int/2addr v3, v4

    or-int/2addr v1, v3

    .line 3298
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 3301
    :cond_16
    return v1
.end method

.method public final getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V
    .registers 4
    .param p1, "pointerIndex"    # I
    .param p2, "outPointerProperties"    # Landroid/view/MotionEvent$PointerProperties;

    .prologue
    .line 2521
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1, p2}, Landroid/view/MotionEvent;->nativeGetPointerProperties(IILandroid/view/MotionEvent$PointerProperties;)V

    .line 2522
    return-void
.end method

.method public final getPressure()F
    .registers 5

    .prologue
    .line 1947
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getPressure(I)F
    .registers 5
    .param p1, "pointerIndex"    # I

    .prologue
    .line 2250
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x2

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getRawX()F
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2572
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/high16 v1, -0x80000000

    invoke-static {v0, v2, v2, v1}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getRawY()F
    .registers 5

    .prologue
    .line 2585
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getSize()F
    .registers 5

    .prologue
    .line 1957
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getSize(I)F
    .registers 5
    .param p1, "pointerIndex"    # I

    .prologue
    .line 2268
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x3

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getSource()I
    .registers 2

    .prologue
    .line 1790
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetSource(I)I

    move-result v0

    return v0
.end method

.method public final getSumSize()Ljava/lang/Float;
    .registers 6

    .prologue
    const/16 v4, 0x36

    const/4 v3, 0x0

    const/high16 v2, -0x80000000

    .line 2133
    const-string/jumbo v0, "ro.revision"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_10

    .line 2147
    :cond_10
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/16 v1, 0x35

    invoke-static {v0, v1, v3, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2c

    .line 2149
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, v4, v3, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    const v1, 0x3f99999a

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 2152
    :goto_2b
    return-object v0

    :cond_2c
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, v4, v3, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_2b
.end method

.method public final getSumSize(I)Ljava/lang/Float;
    .registers 7
    .param p1, "pointerIndex"    # I

    .prologue
    const/16 v4, 0x36

    const/high16 v3, -0x80000000

    .line 2456
    const-string/jumbo v0, "ro.revision"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_f

    .line 2469
    :cond_f
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/16 v1, 0x35

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2c

    .line 2471
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, v4, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    const v1, 0x3f99999a

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 2474
    :goto_2b
    return-object v0

    :cond_2c
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, v4, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_2b
.end method

.method public final getSurfaceMajor()F
    .registers 6

    .prologue
    const/16 v4, 0x31

    const/4 v3, 0x0

    const/high16 v2, -0x80000000

    .line 2048
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/16 v1, 0x35

    invoke-static {v0, v1, v3, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_19

    .line 2050
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, v4, v3, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    .line 2054
    :goto_18
    return v0

    :cond_19
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, v4, v3, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    const/high16 v1, 0x40400000

    mul-float/2addr v0, v1

    goto :goto_18
.end method

.method public final getSurfaceMajor(I)F
    .registers 7
    .param p1, "pointerIndex"    # I

    .prologue
    const/16 v4, 0x31

    const/high16 v3, -0x80000000

    .line 2371
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/16 v1, 0x35

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_19

    .line 2373
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, v4, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    .line 2377
    :goto_18
    return v0

    :cond_19
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, v4, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    const/high16 v1, 0x40400000

    mul-float/2addr v0, v1

    goto :goto_18
.end method

.method public final getSurfaceMinor()F
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/high16 v2, -0x80000000

    .line 2068
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/16 v1, 0x35

    invoke-static {v0, v1, v3, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_19

    .line 2070
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/16 v1, 0x32

    invoke-static {v0, v1, v3, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    .line 2074
    :goto_18
    return v0

    :cond_19
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x5

    invoke-static {v0, v1, v3, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    goto :goto_18
.end method

.method public final getSurfaceMinor(I)F
    .registers 7
    .param p1, "pointerIndex"    # I

    .prologue
    const/16 v4, 0x32

    const/high16 v3, -0x80000000

    .line 2391
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/16 v1, 0x35

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_19

    .line 2393
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, v4, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    .line 2397
    :goto_18
    return v0

    :cond_19
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, v4, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    goto :goto_18
.end method

.method public final getSurfaceSize()F
    .registers 6

    .prologue
    const/16 v4, 0x30

    const/4 v3, 0x0

    const/high16 v2, -0x80000000

    .line 2028
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, v4, v3, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_17

    .line 2030
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, v4, v3, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    .line 2034
    :goto_16
    return v0

    :cond_17
    const/high16 v0, -0x40800000

    goto :goto_16
.end method

.method public final getSurfaceSize(I)F
    .registers 5
    .param p1, "pointerIndex"    # I

    .prologue
    .line 2358
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/16 v1, 0x30

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getToolMajor()F
    .registers 5

    .prologue
    .line 1987
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getToolMajor(I)F
    .registers 5
    .param p1, "pointerIndex"    # I

    .prologue
    .line 2312
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x6

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getToolMinor()F
    .registers 5

    .prologue
    .line 1997
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getToolMinor(I)F
    .registers 5
    .param p1, "pointerIndex"    # I

    .prologue
    .line 2328
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x7

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getToolType(I)I
    .registers 3
    .param p1, "pointerIndex"    # I

    .prologue
    .line 2191
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/view/MotionEvent;->nativeGetToolType(II)I

    move-result v0

    return v0
.end method

.method public final getTouchMajor()F
    .registers 5

    .prologue
    .line 1967
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    const/high16 v1, 0x40400000

    mul-float/2addr v0, v1

    return v0
.end method

.method public final getTouchMajor(I)F
    .registers 5
    .param p1, "pointerIndex"    # I

    .prologue
    .line 2282
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x4

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    const/high16 v1, 0x40400000

    mul-float/2addr v0, v1

    return v0
.end method

.method public final getTouchMinor()F
    .registers 5

    .prologue
    .line 1977
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getTouchMinor(I)F
    .registers 5
    .param p1, "pointerIndex"    # I

    .prologue
    .line 2296
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x5

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getX()F
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1927
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/high16 v1, -0x80000000

    invoke-static {v0, v2, v2, v1}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getX(I)F
    .registers 5
    .param p1, "pointerIndex"    # I

    .prologue
    .line 2218
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getXPrecision()F
    .registers 2

    .prologue
    .line 2630
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetXPrecision(I)F

    move-result v0

    return v0
.end method

.method public final getY()F
    .registers 5

    .prologue
    .line 1937
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getY(I)F
    .registers 5
    .param p1, "pointerIndex"    # I

    .prologue
    .line 2233
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x1

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getYPrecision()F
    .registers 2

    .prologue
    .line 2642
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetYPrecision(I)F

    move-result v0

    return v0
.end method

.method public final isTainted()Z
    .registers 3

    .prologue
    .line 1860
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    .line 1861
    .local v0, "flags":I
    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public final isTouchEvent()Z
    .registers 2

    .prologue
    .line 1845
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeIsTouchEvent(I)Z

    move-result v0

    return v0
.end method

.method public final isWithinBoundsNoHistory(FFFF)Z
    .registers 13
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v7, -0x80000000

    .line 3238
    iget v6, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v6}, Landroid/view/MotionEvent;->nativeGetPointerCount(I)I

    move-result v1

    .line 3239
    .local v1, "pointerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    if-ge v0, v1, :cond_2d

    .line 3240
    iget v6, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v6, v4, v0, v7}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v2

    .line 3241
    .local v2, "x":F
    iget v6, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v6, v5, v0, v7}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v3

    .line 3242
    .local v3, "y":F
    cmpg-float v6, v2, p1

    if-ltz v6, :cond_29

    cmpl-float v6, v2, p3

    if-gtz v6, :cond_29

    cmpg-float v6, v3, p2

    if-ltz v6, :cond_29

    cmpl-float v6, v3, p4

    if-lez v6, :cond_2a

    .line 3246
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_29
    :goto_29
    return v4

    .line 3239
    .restart local v2    # "x":F
    .restart local v3    # "y":F
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_2d
    move v4, v5

    .line 3246
    goto :goto_29
.end method

.method public final offsetLocation(FF)V
    .registers 5
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .prologue
    const/4 v1, 0x0

    .line 3096
    cmpl-float v0, p1, v1

    if-nez v0, :cond_9

    cmpl-float v0, p2, v1

    if-eqz v0, :cond_e

    .line 3097
    :cond_9
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1, p2}, Landroid/view/MotionEvent;->nativeOffsetLocation(IFF)V

    .line 3099
    :cond_e
    return-void
.end method

.method public final recycle()V
    .registers 4

    .prologue
    .line 1753
    invoke-super {p0}, Landroid/view/InputEvent;->recycle()V

    .line 1755
    sget-object v1, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1756
    :try_start_6
    sget v0, Landroid/view/MotionEvent;->gRecyclerUsed:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_18

    .line 1757
    sget v0, Landroid/view/MotionEvent;->gRecyclerUsed:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/view/MotionEvent;->gRecyclerUsed:I

    .line 1758
    sget-object v0, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    iput-object v0, p0, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    .line 1759
    sput-object p0, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    .line 1761
    :cond_18
    monitor-exit v1

    .line 1762
    return-void

    .line 1761
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public final scale(F)V
    .registers 3
    .param p1, "scale"    # F

    .prologue
    .line 1776
    const/high16 v0, 0x3f800000

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    .line 1777
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/view/MotionEvent;->nativeScale(IF)V

    .line 1779
    :cond_b
    return-void
.end method

.method public final setAction(I)V
    .registers 3
    .param p1, "action"    # I

    .prologue
    .line 3087
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/view/MotionEvent;->nativeSetAction(II)V

    .line 3088
    return-void
.end method

.method public final setDownTime(J)V
    .registers 6
    .param p1, "downTime"    # J

    .prologue
    .line 1886
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const-wide/32 v1, 0xf4240

    mul-long/2addr v1, p1

    invoke-static {v0, v1, v2}, Landroid/view/MotionEvent;->nativeSetDownTimeNanos(IJ)V

    .line 1887
    return-void
.end method

.method public final setEdgeFlags(I)V
    .registers 3
    .param p1, "flags"    # I

    .prologue
    .line 3080
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/view/MotionEvent;->nativeSetEdgeFlags(II)V

    .line 3081
    return-void
.end method

.method public final setLocation(FF)V
    .registers 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 3109
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 3110
    .local v0, "oldX":F
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 3111
    .local v1, "oldY":F
    sub-float v2, p1, v0

    sub-float v3, p2, v1

    invoke-virtual {p0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3112
    return-void
.end method

.method public setScale(FF)V
    .registers 3
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .prologue
    .line 2596
    iput p1, p0, Landroid/view/MotionEvent;->mScaleFactorX:F

    .line 2597
    iput p2, p0, Landroid/view/MotionEvent;->mScaleFactorY:F

    .line 2598
    return-void
.end method

.method public setScaledWindowOffset(FF)V
    .registers 3
    .param p1, "offsetX"    # F
    .param p2, "offsetY"    # F

    .prologue
    .line 2602
    iput p1, p0, Landroid/view/MotionEvent;->mScaledWindowOffsetX:F

    .line 2603
    iput p2, p0, Landroid/view/MotionEvent;->mScaledWindowOffsetY:F

    .line 2604
    return-void
.end method

.method public final setSource(I)V
    .registers 3
    .param p1, "source"    # I

    .prologue
    .line 1796
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/view/MotionEvent;->nativeSetSource(II)I

    .line 1797
    return-void
.end method

.method public final setTainted(Z)V
    .registers 5
    .param p1, "tainted"    # Z

    .prologue
    .line 1867
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    .line 1868
    .local v0, "flags":I
    iget v2, p0, Landroid/view/MotionEvent;->mNativePtr:I

    if-eqz p1, :cond_f

    const/high16 v1, -0x80000000

    or-int/2addr v1, v0

    :goto_b
    invoke-static {v2, v1}, Landroid/view/MotionEvent;->nativeSetFlags(II)V

    .line 1869
    return-void

    .line 1868
    :cond_f
    const v1, 0x7fffffff

    and-int/2addr v1, v0

    goto :goto_b
.end method

.method public final split(I)Landroid/view/MotionEvent;
    .registers 39
    .param p1, "idBits"    # I

    .prologue
    .line 3309
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v23

    .line 3310
    .local v23, "ev":Landroid/view/MotionEvent;
    sget-object v36, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v36

    .line 3311
    :try_start_7
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v3}, Landroid/view/MotionEvent;->nativeGetPointerCount(I)I

    move-result v35

    .line 3312
    .local v35, "oldPointerCount":I
    invoke-static/range {v35 .. v35}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 3313
    sget-object v21, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 3314
    .local v21, "pp":[Landroid/view/MotionEvent$PointerProperties;
    sget-object v22, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 3315
    .local v22, "pc":[Landroid/view/MotionEvent$PointerCoords;
    sget-object v29, Landroid/view/MotionEvent;->gSharedTempPointerIndexMap:[I

    .line 3317
    .local v29, "map":[I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v3}, Landroid/view/MotionEvent;->nativeGetAction(I)I

    move-result v32

    .line 3318
    .local v32, "oldAction":I
    move/from16 v0, v32

    and-int/lit16 v0, v0, 0xff

    move/from16 v33, v0

    .line 3319
    .local v33, "oldActionMasked":I
    const v3, 0xff00

    and-int v3, v3, v32

    shr-int/lit8 v34, v3, 0x8

    .line 3321
    .local v34, "oldActionPointerIndex":I
    const/16 v30, -0x1

    .line 3322
    .local v30, "newActionPointerIndex":I
    const/16 v20, 0x0

    .line 3323
    .local v20, "newPointerCount":I
    const/16 v31, 0x0

    .line 3324
    .local v31, "newIdBits":I
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_35
    move/from16 v0, v27

    move/from16 v1, v35

    if-ge v0, v1, :cond_62

    .line 3325
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/MotionEvent;->mNativePtr:I

    aget-object v4, v21, v20

    move/from16 v0, v27

    invoke-static {v3, v0, v4}, Landroid/view/MotionEvent;->nativeGetPointerProperties(IILandroid/view/MotionEvent$PointerProperties;)V

    .line 3326
    const/4 v3, 0x1

    aget-object v4, v21, v20

    iget v4, v4, Landroid/view/MotionEvent$PointerProperties;->id:I

    shl-int v28, v3, v4

    .line 3327
    .local v28, "idBit":I
    and-int v3, v28, p1

    if-eqz v3, :cond_5f

    .line 3328
    move/from16 v0, v27

    move/from16 v1, v34

    if-ne v0, v1, :cond_59

    .line 3329
    move/from16 v30, v20

    .line 3331
    :cond_59
    aput v27, v29, v20

    .line 3332
    add-int/lit8 v20, v20, 0x1

    .line 3333
    or-int v31, v31, v28

    .line 3324
    :cond_5f
    add-int/lit8 v27, v27, 0x1

    goto :goto_35

    .line 3337
    .end local v28    # "idBit":I
    :cond_62
    if-nez v20, :cond_6f

    .line 3338
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "idBits did not match any ids in the event"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3384
    .end local v20    # "newPointerCount":I
    .end local v21    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    .end local v22    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    .end local v27    # "i":I
    .end local v29    # "map":[I
    .end local v30    # "newActionPointerIndex":I
    .end local v31    # "newIdBits":I
    .end local v32    # "oldAction":I
    .end local v33    # "oldActionMasked":I
    .end local v34    # "oldActionPointerIndex":I
    .end local v35    # "oldPointerCount":I
    :catchall_6c
    move-exception v3

    monitor-exit v36
    :try_end_6e
    .catchall {:try_start_7 .. :try_end_6e} :catchall_6c

    throw v3

    .line 3342
    .restart local v20    # "newPointerCount":I
    .restart local v21    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    .restart local v22    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    .restart local v27    # "i":I
    .restart local v29    # "map":[I
    .restart local v30    # "newActionPointerIndex":I
    .restart local v31    # "newIdBits":I
    .restart local v32    # "oldAction":I
    .restart local v33    # "oldActionMasked":I
    .restart local v34    # "oldActionPointerIndex":I
    .restart local v35    # "oldPointerCount":I
    :cond_6f
    const/4 v3, 0x5

    move/from16 v0, v33

    if-eq v0, v3, :cond_79

    const/4 v3, 0x6

    move/from16 v0, v33

    if-ne v0, v3, :cond_bf

    .line 3343
    :cond_79
    if-gez v30, :cond_ac

    .line 3345
    const/4 v6, 0x2

    .line 3360
    .local v6, "newAction":I
    :goto_7c
    :try_start_7c
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v3}, Landroid/view/MotionEvent;->nativeGetHistorySize(I)I

    move-result v26

    .line 3361
    .local v26, "historySize":I
    const/16 v24, 0x0

    .local v24, "h":I
    :goto_86
    move/from16 v0, v24

    move/from16 v1, v26

    if-gt v0, v1, :cond_150

    .line 3362
    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_c2

    const/high16 v25, -0x80000000

    .line 3364
    .local v25, "historyPos":I
    :goto_94
    const/16 v27, 0x0

    :goto_96
    move/from16 v0, v27

    move/from16 v1, v20

    if-ge v0, v1, :cond_c5

    .line 3365
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/MotionEvent;->mNativePtr:I

    aget v4, v29, v27

    aget-object v5, v22, v27

    move/from16 v0, v25

    invoke-static {v3, v4, v0, v5}, Landroid/view/MotionEvent;->nativeGetPointerCoords(IIILandroid/view/MotionEvent$PointerCoords;)V

    .line 3364
    add-int/lit8 v27, v27, 0x1

    goto :goto_96

    .line 3346
    .end local v6    # "newAction":I
    .end local v24    # "h":I
    .end local v25    # "historyPos":I
    .end local v26    # "historySize":I
    :cond_ac
    const/4 v3, 0x1

    move/from16 v0, v20

    if-ne v0, v3, :cond_ba

    .line 3348
    const/4 v3, 0x5

    move/from16 v0, v33

    if-ne v0, v3, :cond_b8

    const/4 v6, 0x0

    .restart local v6    # "newAction":I
    :goto_b7
    goto :goto_7c

    .end local v6    # "newAction":I
    :cond_b8
    const/4 v6, 0x1

    goto :goto_b7

    .line 3352
    :cond_ba
    shl-int/lit8 v3, v30, 0x8

    or-int v6, v33, v3

    .restart local v6    # "newAction":I
    goto :goto_7c

    .line 3357
    .end local v6    # "newAction":I
    :cond_bf
    move/from16 v6, v32

    .restart local v6    # "newAction":I
    goto :goto_7c

    .restart local v24    # "h":I
    .restart local v26    # "historySize":I
    :cond_c2
    move/from16 v25, v24

    .line 3362
    goto :goto_94

    .line 3368
    .restart local v25    # "historyPos":I
    :cond_c5
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/MotionEvent;->mNativePtr:I

    move/from16 v0, v25

    invoke-static {v3, v0}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(II)J

    move-result-wide v18

    .line 3369
    .local v18, "eventTimeNanos":J
    if-nez v24, :cond_143

    .line 3370
    move-object/from16 v0, v23

    iget v3, v0, Landroid/view/MotionEvent;->mNativePtr:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v4}, Landroid/view/MotionEvent;->nativeGetDeviceId(I)I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v5}, Landroid/view/MotionEvent;->nativeGetSource(I)I

    move-result v5

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v7}, Landroid/view/MotionEvent;->nativeGetFlags(I)I

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v8}, Landroid/view/MotionEvent;->nativeGetEdgeFlags(I)I

    move-result v8

    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v9}, Landroid/view/MotionEvent;->nativeGetMetaState(I)I

    move-result v9

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v10}, Landroid/view/MotionEvent;->nativeGetButtonState(I)I

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v11}, Landroid/view/MotionEvent;->nativeGetDisplayId(I)I

    move-result v11

    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v12}, Landroid/view/MotionEvent;->nativeGetXOffset(I)F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v13}, Landroid/view/MotionEvent;->nativeGetYOffset(I)F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v14}, Landroid/view/MotionEvent;->nativeGetXPrecision(I)F

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v15}, Landroid/view/MotionEvent;->nativeGetYPrecision(I)F

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/MotionEvent;->mNativePtr:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/view/MotionEvent;->nativeGetDownTimeNanos(I)J

    move-result-wide v16

    invoke-static/range {v3 .. v22}, Landroid/view/MotionEvent;->nativeInitialize(IIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)I

    move-result v3

    move-object/from16 v0, v23

    iput v3, v0, Landroid/view/MotionEvent;->mNativePtr:I

    .line 3361
    :goto_13f
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_86

    .line 3380
    :cond_143
    move-object/from16 v0, v23

    iget v3, v0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v4, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, v22

    invoke-static {v3, v0, v1, v2, v4}, Landroid/view/MotionEvent;->nativeAddBatch(IJ[Landroid/view/MotionEvent$PointerCoords;I)V

    goto :goto_13f

    .line 3383
    .end local v18    # "eventTimeNanos":J
    .end local v25    # "historyPos":I
    :cond_150
    monitor-exit v36
    :try_end_151
    .catchall {:try_start_7c .. :try_end_151} :catchall_6c

    return-object v23
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 3389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3390
    .local v1, "msg":Ljava/lang/StringBuilder;
    const-string v3, "MotionEvent { action="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3392
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 3393
    .local v2, "pointerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1b
    if-ge v0, v2, :cond_80

    .line 3394
    const-string v3, ", id["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3395
    const-string v3, ", x["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 3396
    const-string v3, ", y["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 3397
    const-string v3, ", toolType["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    invoke-static {v4}, Landroid/view/MotionEvent;->toolTypeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3393
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 3401
    :cond_80
    const-string v3, ", buttonState="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    invoke-static {v4}, Landroid/view/MotionEvent;->buttonStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3402
    const-string v3, ", metaState="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v4

    invoke-static {v4}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3403
    const-string v3, ", flags=0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3404
    const-string v3, ", edgeFlags=0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3405
    const-string v3, ", pointerCount="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3406
    const-string v3, ", historySize="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3407
    const-string v3, ", eventTime="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3408
    const-string v3, ", downTime="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3409
    const-string v3, ", deviceId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3410
    const-string v3, ", source=0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3411
    const-string v3, " }"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3412
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public final transform(Landroid/graphics/Matrix;)V
    .registers 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 3120
    if-nez p1, :cond_b

    .line 3121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "matrix must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3124
    :cond_b
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/view/MotionEvent;->nativeTransform(ILandroid/graphics/Matrix;)V

    .line 3125
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 3564
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3565
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/view/MotionEvent;->nativeWriteToParcel(ILandroid/os/Parcel;)V

    .line 3566
    return-void
.end method
