.class public Lcom/android/server/ssrm/HotGameList;
.super Ljava/lang/Object;
.source "HotGameList.java"


# static fields
.field public static HotGameGroup0:[Ljava/lang/String;

.field public static HotGameGroup1:[Ljava/lang/String;

.field public static HotGameGroup2:[Ljava/lang/String;

.field public static HotGameGroup3:[Ljava/lang/String;

.field public static HotGameGroup4:[Ljava/lang/String;

.field public static HotGameGroup5:[Ljava/lang/String;

.field static sKnownGameHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/16 v9, 0x19

    const/16 v8, 0x14

    const/16 v7, 0x23

    .line 27
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/16 v5, 0x1a

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-static {v5}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const/16 v5, 0x1b

    new-array v5, v5, [I

    fill-array-data v5, :array_1

    invoke-static {v5}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    sput-object v4, Lcom/android/server/ssrm/HotGameList;->HotGameGroup0:[Ljava/lang/String;

    .line 40
    const/16 v4, 0x32

    new-array v4, v4, [Ljava/lang/String;

    const/16 v5, 0x13

    new-array v5, v5, [I

    fill-array-data v5, :array_2

    invoke-static {v5}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const/16 v5, 0x12

    new-array v5, v5, [I

    fill-array-data v5, :array_3

    invoke-static {v5}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    const/4 v5, 0x2

    new-array v6, v7, [I

    fill-array-data v6, :array_4

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-array v6, v7, [I

    fill-array-data v6, :array_5

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    new-array v6, v7, [I

    fill-array-data v6, :array_6

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const/16 v6, 0x24

    new-array v6, v6, [I

    fill-array-data v6, :array_7

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const/16 v6, 0x1a

    new-array v6, v6, [I

    fill-array-data v6, :array_8

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const/16 v6, 0x1e

    new-array v6, v6, [I

    fill-array-data v6, :array_9

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const/16 v6, 0x1f

    new-array v6, v6, [I

    fill-array-data v6, :array_a

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const/16 v6, 0x21

    new-array v6, v6, [I

    fill-array-data v6, :array_b

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xa

    new-array v6, v9, [I

    fill-array-data v6, :array_c

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const/16 v6, 0x16

    new-array v6, v6, [I

    fill-array-data v6, :array_d

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const/16 v6, 0x1a

    new-array v6, v6, [I

    fill-array-data v6, :array_e

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xd

    const/16 v6, 0x15

    new-array v6, v6, [I

    fill-array-data v6, :array_f

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xe

    const/16 v6, 0x21

    new-array v6, v6, [I

    fill-array-data v6, :array_10

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xf

    const/16 v6, 0x15

    new-array v6, v6, [I

    fill-array-data v6, :array_11

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x10

    new-array v6, v9, [I

    fill-array-data v6, :array_12

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x11

    const/16 v6, 0x12

    new-array v6, v6, [I

    fill-array-data v6, :array_13

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x12

    new-array v6, v9, [I

    fill-array-data v6, :array_14

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x13

    const/16 v6, 0x1d

    new-array v6, v6, [I

    fill-array-data v6, :array_15

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x13

    new-array v5, v5, [I

    fill-array-data v5, :array_16

    invoke-static {v5}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/16 v5, 0x15

    new-array v6, v8, [I

    fill-array-data v6, :array_17

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x16

    const/16 v6, 0x13

    new-array v6, v6, [I

    fill-array-data v6, :array_18

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x17

    const/16 v6, 0x21

    new-array v6, v6, [I

    fill-array-data v6, :array_19

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x18

    const/16 v6, 0x1d

    new-array v6, v6, [I

    fill-array-data v6, :array_1a

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x18

    new-array v5, v5, [I

    fill-array-data v5, :array_1b

    invoke-static {v5}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/16 v5, 0x1a

    const/16 v6, 0x1d

    new-array v6, v6, [I

    fill-array-data v6, :array_1c

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x1b

    const/16 v6, 0x1a

    new-array v6, v6, [I

    fill-array-data v6, :array_1d

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x1c

    new-array v6, v9, [I

    fill-array-data v6, :array_1e

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x1d

    const/16 v6, 0x11

    new-array v6, v6, [I

    fill-array-data v6, :array_1f

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x1e

    new-array v6, v8, [I

    fill-array-data v6, :array_20

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x1f

    new-array v6, v8, [I

    fill-array-data v6, :array_21

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x20

    const/16 v6, 0x1b

    new-array v6, v6, [I

    fill-array-data v6, :array_22

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x21

    const/16 v6, 0x16

    new-array v6, v6, [I

    fill-array-data v6, :array_23

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x22

    const/16 v6, 0xf

    new-array v6, v6, [I

    fill-array-data v6, :array_24

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x18

    new-array v5, v5, [I

    fill-array-data v5, :array_25

    invoke-static {v5}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/16 v5, 0x24

    const/16 v6, 0x10

    new-array v6, v6, [I

    fill-array-data v6, :array_26

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x25

    new-array v6, v7, [I

    fill-array-data v6, :array_27

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x26

    new-array v6, v7, [I

    fill-array-data v6, :array_28

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x27

    new-array v6, v7, [I

    fill-array-data v6, :array_29

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x28

    new-array v6, v7, [I

    fill-array-data v6, :array_2a

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x29

    new-array v6, v7, [I

    fill-array-data v6, :array_2b

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x2a

    const/16 v6, 0xb

    new-array v6, v6, [I

    fill-array-data v6, :array_2c

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x2b

    const/16 v6, 0xb

    new-array v6, v6, [I

    fill-array-data v6, :array_2d

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x2c

    new-array v6, v8, [I

    fill-array-data v6, :array_2e

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x2d

    const/16 v6, 0x15

    new-array v6, v6, [I

    fill-array-data v6, :array_2f

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x2e

    const/16 v6, 0xa

    new-array v6, v6, [I

    fill-array-data v6, :array_30

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x2f

    const/16 v6, 0x17

    new-array v6, v6, [I

    fill-array-data v6, :array_31

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x30

    const/16 v6, 0x1b

    new-array v6, v6, [I

    fill-array-data v6, :array_32

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x31

    const/16 v6, 0x10

    new-array v6, v6, [I

    fill-array-data v6, :array_33

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    sput-object v4, Lcom/android/server/ssrm/HotGameList;->HotGameGroup1:[Ljava/lang/String;

    .line 281
    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const/16 v5, 0x10

    new-array v5, v5, [I

    fill-array-data v5, :array_34

    invoke-static {v5}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const/16 v5, 0xf

    new-array v5, v5, [I

    fill-array-data v5, :array_35

    invoke-static {v5}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    const/4 v5, 0x2

    const/16 v6, 0x12

    new-array v6, v6, [I

    fill-array-data v6, :array_36

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const/16 v6, 0x12

    new-array v6, v6, [I

    fill-array-data v6, :array_37

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const/16 v6, 0x1c

    new-array v6, v6, [I

    fill-array-data v6, :array_38

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const/16 v6, 0x10

    new-array v6, v6, [I

    fill-array-data v6, :array_39

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    sput-object v4, Lcom/android/server/ssrm/HotGameList;->HotGameGroup2:[Ljava/lang/String;

    .line 309
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    new-array v5, v9, [I

    fill-array-data v5, :array_3a

    invoke-static {v5}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const/16 v5, 0x13

    new-array v5, v5, [I

    fill-array-data v5, :array_3b

    invoke-static {v5}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    const/4 v5, 0x2

    const/16 v6, 0x12

    new-array v6, v6, [I

    fill-array-data v6, :array_3c

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    sput-object v4, Lcom/android/server/ssrm/HotGameList;->HotGameGroup3:[Ljava/lang/String;

    .line 325
    const/16 v4, 0xc

    new-array v4, v4, [Ljava/lang/String;

    const/16 v5, 0x1b

    new-array v5, v5, [I

    fill-array-data v5, :array_3d

    invoke-static {v5}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const/16 v5, 0x22

    new-array v5, v5, [I

    fill-array-data v5, :array_3e

    invoke-static {v5}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    const/4 v5, 0x2

    const/16 v6, 0x16

    new-array v6, v6, [I

    fill-array-data v6, :array_3f

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const/16 v6, 0x1b

    new-array v6, v6, [I

    fill-array-data v6, :array_40

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const/16 v6, 0x15

    new-array v6, v6, [I

    fill-array-data v6, :array_41

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    new-array v6, v8, [I

    fill-array-data v6, :array_42

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const/16 v6, 0x1a

    new-array v6, v6, [I

    fill-array-data v6, :array_43

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    new-array v6, v8, [I

    fill-array-data v6, :array_44

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const/16 v6, 0x1d

    new-array v6, v6, [I

    fill-array-data v6, :array_45

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const/16 v6, 0x21

    new-array v6, v6, [I

    fill-array-data v6, :array_46

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const/16 v6, 0xc

    new-array v6, v6, [I

    fill-array-data v6, :array_47

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xb

    new-array v6, v9, [I

    fill-array-data v6, :array_48

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    sput-object v4, Lcom/android/server/ssrm/HotGameList;->HotGameGroup4:[Ljava/lang/String;

    .line 385
    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    new-array v5, v7, [I

    fill-array-data v5, :array_49

    invoke-static {v5}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    new-array v5, v7, [I

    fill-array-data v5, :array_4a

    invoke-static {v5}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    const/4 v5, 0x2

    new-array v6, v7, [I

    fill-array-data v6, :array_4b

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-array v6, v7, [I

    fill-array-data v6, :array_4c

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    new-array v6, v7, [I

    fill-array-data v6, :array_4d

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const/16 v6, 0xb

    new-array v6, v6, [I

    fill-array-data v6, :array_4e

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const/16 v6, 0xb

    new-array v6, v6, [I

    fill-array-data v6, :array_4f

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    sput-object v4, Lcom/android/server/ssrm/HotGameList;->HotGameGroup5:[Ljava/lang/String;

    .line 421
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/android/server/ssrm/HotGameList;->sKnownGameHashMap:Ljava/util/HashMap;

    .line 424
    sget-object v0, Lcom/android/server/ssrm/HotGameList;->HotGameGroup0:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 425
    .local v3, "s":Ljava/lang/String;
    sget-object v4, Lcom/android/server/ssrm/HotGameList;->sKnownGameHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 427
    .end local v3    # "s":Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/android/server/ssrm/HotGameList;->HotGameGroup1:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 428
    .restart local v3    # "s":Ljava/lang/String;
    sget-object v4, Lcom/android/server/ssrm/HotGameList;->sKnownGameHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 430
    .end local v3    # "s":Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/android/server/ssrm/HotGameList;->HotGameGroup2:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 431
    .restart local v3    # "s":Ljava/lang/String;
    sget-object v4, Lcom/android/server/ssrm/HotGameList;->sKnownGameHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 433
    .end local v3    # "s":Ljava/lang/String;
    :cond_2
    sget-object v0, Lcom/android/server/ssrm/HotGameList;->HotGameGroup3:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 434
    .restart local v3    # "s":Ljava/lang/String;
    sget-object v4, Lcom/android/server/ssrm/HotGameList;->sKnownGameHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 436
    .end local v3    # "s":Ljava/lang/String;
    :cond_3
    sget-object v0, Lcom/android/server/ssrm/HotGameList;->HotGameGroup4:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    .line 437
    .restart local v3    # "s":Ljava/lang/String;
    sget-object v4, Lcom/android/server/ssrm/HotGameList;->sKnownGameHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 439
    .end local v3    # "s":Ljava/lang/String;
    :cond_4
    sget-object v0, Lcom/android/server/ssrm/HotGameList;->HotGameGroup5:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v2, :cond_5

    aget-object v3, v0, v1

    .line 440
    .restart local v3    # "s":Ljava/lang/String;
    sget-object v4, Lcom/android/server/ssrm/HotGameList;->sKnownGameHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 443
    .end local v3    # "s":Ljava/lang/String;
    :cond_5
    sget-object v4, Lcom/android/server/ssrm/HotGameList;->sKnownGameHashMap:Ljava/util/HashMap;

    new-array v5, v8, [I

    fill-array-data v5, :array_50

    invoke-static {v5}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    sget-object v4, Lcom/android/server/ssrm/HotGameList;->sKnownGameHashMap:Ljava/util/HashMap;

    const/16 v5, 0x15

    new-array v5, v5, [I

    fill-array-data v5, :array_51

    invoke-static {v5}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    sget-object v4, Lcom/android/server/ssrm/HotGameList;->sKnownGameHashMap:Ljava/util/HashMap;

    const/16 v5, 0x1c

    new-array v5, v5, [I

    fill-array-data v5, :array_52

    invoke-static {v5}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    sget-object v4, Lcom/android/server/ssrm/HotGameList;->sKnownGameHashMap:Ljava/util/HashMap;

    const/16 v5, 0x10

    new-array v5, v5, [I

    fill-array-data v5, :array_53

    invoke-static {v5}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    return-void

    .line 27
    :array_0
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x19
        0x10
        0x1f
        0x14
        0x17
        0x54
        0x37
        0x15
        0x1e
        0x15
        0x15
        0x37
        0x1b
        0x8
        0x18
        0x16
        0x1f
        0x31
        0x1b
        0x11
        0x1b
        0x15
    .end array-data

    :array_1
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x8
        0x18
        0x9
        0xe
        0xf
        0x1e
        0x13
        0x15
        0x9
        0x54
        0xe
        0x13
        0x11
        0x13
        0x11
        0x1b
        0x8
        0xe
        0x1c
        0x8
        0x1f
        0x1f
    .end array-data

    .line 40
    :array_2
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1f
        0x1b
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x9
        0x54
        0x8
        0x49
        0x25
        0x8
        0x15
        0xd
    .end array-data

    :array_3
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1f
        0x1b
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x9
        0x54
        0x8
        0x49
        0x25
        0x14
        0x1b
    .end array-data

    :array_4
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x16
        0x15
        0x1c
        0xe
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x3b
        0x34
        0x37
        0x2a
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x33
        0x37
        0x32
        0x37
    .end array-data

    :array_5
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x16
        0x15
        0x1c
        0xe
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x3b
        0x34
        0x37
        0x2a
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x33
        0x3b
        0x32
        0x37
    .end array-data

    :array_6
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x16
        0x15
        0x1c
        0xe
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x3b
        0x34
        0x37
        0x2a
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x37
        0x38
        0x32
        0x37
    .end array-data

    :array_7
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1f
        0x2
        0xa
        0x1f
        0x8
        0x13
        0x1f
        0x14
        0x19
        0x1f
        0x25
        0x1d
        0x1b
        0x17
        0x1f
        0x25
        0x49
        0x1e
        0x54
        0xe
        0x8
        0xf
        0x19
        0x11
        0x54
        0xa
        0x1b
        0x8
        0x11
        0x13
        0x14
        0x1d
    .end array-data

    :array_8
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x13
        0x19
        0x16
        0x15
        0xf
        0x1e
        0x0
        0x15
        0x14
        0x1f
        0x54
        0x2e
        0x8
        0xf
        0x19
        0x11
        0x2a
        0x1b
        0x8
        0x11
        0x49
        0x3e
    .end array-data

    :array_9
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1c
        0xf
        0x14
        0x1d
        0x1b
        0x17
        0x1f
        0x9
        0x54
        0xe
        0x8
        0xf
        0x19
        0x11
        0x54
        0xa
        0x1b
        0x8
        0x11
        0x13
        0x14
        0x1d
        0x54
        0x18
        0xf
        0x9
    .end array-data

    :array_a
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x8
        0x15
        0x17
        0x1b
        0x14
        0x13
        0x1b
        0x54
        0xe
        0x8
        0xf
        0x19
        0x11
        0xa
        0x1b
        0x8
        0x11
        0x13
        0x14
        0x1d
    .end array-data

    :array_b
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0xe
        0x1b
        0xa
        0x13
        0x14
        0x1b
        0xe
        0x15
        0x8
        0x54
        0xe
        0x8
        0xf
        0x19
        0x11
        0x54
        0xa
        0x1b
        0x8
        0x11
        0x13
        0x14
        0x1d
        0x54
        0x18
        0xf
        0x9
        0x49
        0x1e
    .end array-data

    :array_c
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x2a
        0xf
        0x16
        0x9
        0x1b
        0x8
        0x54
        0x2a
        0x1b
        0x8
        0x11
        0x13
        0x14
        0x1d
        0x2e
        0x8
        0xf
        0x19
        0x11
        0x49
        0x3e
    .end array-data

    :array_d
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1c
        0x13
        0x8
        0x1f
        0xe
        0x8
        0xf
        0x19
        0x11
        0xa
        0x1b
        0x8
        0x11
        0x13
        0x14
        0x1d
        0x49
        0x1e
    .end array-data

    :array_e
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x8
        0x15
        0x17
        0x1b
        0x14
        0x13
        0x1b
        0x54
        0x1f
        0xf
        0xe
        0x8
        0xf
        0x19
        0x11
    .end array-data

    :array_f
    .array-data 4
        0x1b
        0x13
        0x8
        0x54
        0x2e
        0x8
        0xf
        0x19
        0x11
        0x2a
        0x1b
        0x8
        0x11
        0x13
        0x14
        0x1d
        0x37
        0x1b
        0x14
        0x13
        0x1b
    .end array-data

    :array_10
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x17
        0x1b
        0x1e
        0x1f
        0x16
        0x1f
        0x13
        0x14
        0x1f
        0x9
        0x17
        0x13
        0xe
        0x12
        0x9
        0x13
        0x54
        0xe
        0x8
        0xf
        0x19
        0x11
        0xa
        0x1b
        0x8
        0x11
        0x13
        0x14
        0x1d
    .end array-data

    :array_11
    .array-data 4
        0xa
        0x16
        0x54
        0x9
        0xf
        0x8
        0x13
        0x2
        0x54
        0xa
        0x1b
        0x8
        0x11
        0x13
        0x14
        0x1d
        0xe
        0x8
        0xf
        0x19
        0x11
    .end array-data

    :array_12
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x18
        0x13
        0xe
        0xe
        0x1b
        0x16
        0x1f
        0x9
        0x54
        0xe
        0x8
        0xf
        0x19
        0x11
        0xa
        0x1b
        0x8
        0x11
        0x13
        0x14
        0x1d
    .end array-data

    :array_13
    .array-data 4
        0xd
        0xd
        0xd
        0x54
        0x19
        0x12
        0x13
        0x54
        0x2a
        0x1b
        0x8
        0x11
        0x13
        0x14
        0x1d
        0x39
        0x1b
        0x8
    .end array-data

    :array_14
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0xa
        0x1b
        0x14
        0x15
        0x9
        0x15
        0x1c
        0xe
        0x54
        0xa
        0x1b
        0x8
        0x11
        0x13
        0x14
        0x1d
        0xe
        0x8
        0xf
        0x19
        0x11
    .end array-data

    :array_15
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0xa
        0x1b
        0x14
        0x15
        0x9
        0x15
        0x1c
        0xe
        0x54
        0xa
        0x1b
        0x8
        0x11
        0x13
        0x14
        0x1d
        0xe
        0x8
        0xf
        0x19
        0x11
        0x1c
        0x8
        0x1f
        0x1f
    .end array-data

    :array_16
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0xc
        0x1d
        0x54
        0xe
        0x8
        0xf
        0x19
        0x11
        0xa
        0x1b
        0x8
        0x11
        0x13
        0x14
        0x1d
    .end array-data

    :array_17
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x17
        0x19
        0x11
        0x54
        0x9
        0xa
        0x1f
        0x1f
        0x1e
        0xa
        0x1b
        0x8
        0x11
        0x13
        0x14
        0x1d
    .end array-data

    :array_18
    .array-data 4
        0x1b
        0x13
        0x8
        0x54
        0x36
        0x1f
        0x1b
        0x8
        0x14
        0x1f
        0x8
        0x9
        0x2a
        0x1b
        0x8
        0x11
        0x13
        0x14
        0x1d
    .end array-data

    :array_19
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0xe
        0xf
        0x1e
        0x13
        0x15
        0x49
        0xd
        0x1d
        0x54
        0x17
        0x15
        0x14
        0x9
        0xe
        0x1f
        0x8
        0xe
        0x8
        0xf
        0x19
        0x11
        0xa
        0x1b
        0x8
        0x11
        0x13
        0x14
        0x1d
    .end array-data

    :array_1a
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0xe
        0x13
        0x17
        0x1f
        0x11
        0x13
        0x16
        0x16
        0x1f
        0x8
        0x54
        0xe
        0x8
        0xf
        0x19
        0x11
        0xa
        0x1b
        0x8
        0x11
        0x13
        0x14
        0x1d
        0x49
        0x3e
    .end array-data

    :array_1b
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0xe
        0x8
        0x13
        0x1c
        0x13
        0x14
        0x1d
        0x1d
        0x1f
        0x8
        0x54
        0xe
        0x8
        0xf
        0x19
        0x11
        0xa
        0x1b
        0x8
        0x11
    .end array-data

    :array_1c
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x14
        0x19
        0x12
        0x15
        0x8
        0x1d
        0x1b
        0x17
        0x1f
        0x54
        0xe
        0x8
        0xf
        0x19
        0x11
        0xa
        0x1b
        0x8
        0x11
        0x13
        0x14
        0x1d
        0x48
        0x1e
    .end array-data

    :array_1d
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0xa
        0x1b
        0x16
        0x17
        0xa
        0x16
        0x1f
        0x54
        0x11
        0x15
        0x8
        0x1f
        0x9
        0x18
        0x16
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
    .end array-data

    :array_1e
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0xa
        0x1b
        0xe
        0x13
        0x9
        0xe
        0xf
        0x1e
        0x13
        0x15
        0x54
        0x17
        0x13
        0x16
        0x19
        0x4e
        0x11
        0x1b
        0x11
        0x1b
        0x15
    .end array-data

    :array_1f
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x19
        0x10
        0x1f
        0x14
        0x17
        0x54
        0x17
        0x15
        0x14
        0x9
        0xe
        0x1f
        0x8
    .end array-data

    :array_20
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x8
        0x15
        0xc
        0x13
        0x15
        0x54
        0x1b
        0x14
        0x1d
        0x8
        0x3
        0x18
        0x13
        0x8
        0x1e
        0x9
    .end array-data

    :array_21
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x13
        0x17
        0x1b
        0x14
        0x1d
        0x13
        0x54
        0xe
        0x1f
        0x17
        0xa
        0x16
        0x1f
        0x8
        0xf
        0x14
    .end array-data

    :array_22
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x16
        0xa
        0x12
        0x1b
        0x19
        0x16
        0x15
        0xf
        0x1e
        0x54
        0x19
        0x1b
        0x9
        0xe
        0x16
        0x1f
        0x17
        0x1b
        0x9
        0xe
        0x1f
        0x8
    .end array-data

    :array_23
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0xe
        0xf
        0x1e
        0x13
        0x15
        0x4d
        0x4d
        0x4d
        0x4f
        0x54
        0x38
        0x1f
        0x1b
        0xe
        0x37
        0x2a
        0x49
    .end array-data

    :array_24
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x19
        0x10
        0x1f
        0x14
        0x17
        0x54
        0x18
        0x15
        0x15
        0x14
        0x1d
    .end array-data

    :array_25
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1c
        0xe
        0xe
        0x54
        0x9
        0xf
        0x12
        0x15
        0x10
        0x13
        0x25
        0x1d
        0x16
        0x25
        0x4e
        0x11
        0x1b
        0x11
        0x1b
        0x15
    .end array-data

    :array_26
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x18
        0x13
        0x19
        0x15
        0x8
        0x1f
        0x54
        0x1d
        0x8
        0x15
        0x1b
        0x1e
    .end array-data

    :array_27
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x16
        0x15
        0x1c
        0xe
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x3b
        0x34
        0x37
        0x2a
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x3b
        0x4c
        0x32
        0x2a
    .end array-data

    :array_28
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x16
        0x15
        0x1c
        0xe
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x3d
        0x3b
        0x34
        0x3e
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x3b
        0x4c
        0x32
        0x2a
    .end array-data

    :array_29
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x16
        0x15
        0x1c
        0xe
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x3b
        0x34
        0x37
        0x2a
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x3b
        0x4d
        0x32
        0x37
    .end array-data

    :array_2a
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x16
        0x15
        0x1c
        0xe
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x3d
        0x3b
        0x34
        0x3e
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x4d
        0x3b
        0x29
        0x29
    .end array-data

    :array_2b
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x16
        0x15
        0x1c
        0xe
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x3b
        0x34
        0x37
        0x2a
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x3b
        0x42
        0x32
        0x37
    .end array-data

    :array_2c
    .array-data 4
        0x3d
        0x3b
        0x34
        0x3e
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x3b
    .end array-data

    :array_2d
    .array-data 4
        0x3b
        0x34
        0x37
        0x2a
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x3b
    .end array-data

    :array_2e
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1f
        0x1b
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x54
        0xa
        0xc
        0x0
        0x48
        0x25
        0x8
        0x15
        0xd
    .end array-data

    :array_2f
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x14
        0x15
        0x11
        0x14
        0x15
        0x11
        0x54
        0x38
        0x3f
        0x3b
        0x2f
        0x2e
        0x23
        0x39
        0x33
        0x2e
        0x23
    .end array-data

    :array_30
    .array-data 4
        0x17
        0x1f
        0x54
        0xa
        0x15
        0xf
        0x54
        0x1b
        0xa
        0xa
    .end array-data

    :array_31
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x16
        0xf
        0x54
        0x17
        0x15
        0x1e
        0xd
        0x1b
        0x8
        0x9
        0x14
        0x13
        0xa
        0x1f
        0x8
        0x25
        0x43
        0x4b
    .end array-data

    :array_32
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1f
        0x1b
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x9
        0x54
        0x14
        0x1c
        0x9
        0x4b
        0x49
        0x25
        0x8
        0x15
        0x25
        0x16
        0x15
        0xd
        0x1f
        0x8
    .end array-data

    :array_33
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x16
        0xf
        0x54
        0x1c
        0x16
        0x19
        0x14
        0x25
        0x14
        0x1f
        0xd
    .end array-data

    .line 281
    :array_34
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x16
        0xf
        0x54
        0x1d
        0xf
        0x14
        0x18
        0x8
        0x15
        0x9
        0x48
    .end array-data

    :array_35
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x16
        0xf
        0x54
        0x8
        0x15
        0x18
        0x15
        0x19
        0x15
        0xa
    .end array-data

    :array_36
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1f
        0x1d
        0x1b
        0x54
        0x9
        0x15
        0x14
        0x13
        0x19
        0x1e
        0x1b
        0x9
        0x12
    .end array-data

    :array_37
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x16
        0xf
        0x54
        0x1f
        0xd
        0x1b
        0x8
        0x8
        0x13
        0x15
        0x8
        0x9
        0x49
    .end array-data

    :array_38
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x15
        0x19
        0x13
        0x1b
        0x16
        0xb
        0xf
        0x1b
        0x14
        0xe
        0xf
        0x17
        0x54
        0x1b
        0x19
        0x13
        0xe
        0x3
        0x11
        0x1b
        0x11
        0x1b
        0x15
    .end array-data

    :array_39
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x19
        0x10
        0x1f
        0x14
        0x17
        0x54
        0x12
        0x1f
        0x8
        0x15
        0x1f
        0x9
    .end array-data

    .line 309
    :array_3a
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1f
        0xa
        0x13
        0x19
        0x1d
        0x1b
        0x17
        0x1f
        0x9
        0x54
        0x3f
        0xa
        0x13
        0x19
        0x39
        0x13
        0xe
        0x1b
        0x1e
        0x1f
        0x16
    .end array-data

    :array_3b
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1f
        0x1b
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x9
        0x54
        0x8
        0x49
        0x25
        0x8
        0x15
        0xd
    .end array-data

    :array_3c
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1f
        0x1b
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x9
        0x54
        0x8
        0x49
        0x25
        0x14
        0x1b
    .end array-data

    .line 325
    :array_3d
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x18
        0x1f
        0x9
        0xe
        0x9
        0x15
        0x16
        0x13
        0xe
        0x1b
        0x13
        0x8
        0x1f
        0x54
        0x9
        0x15
        0x16
        0x13
        0xe
        0x1b
        0x13
        0x8
        0x1f
    .end array-data

    :array_3e
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x19
        0x8
        0x1f
        0x9
        0x19
        0x1f
        0x14
        0xe
        0x17
        0x15
        0x15
        0x14
        0x1d
        0x1b
        0x17
        0x1f
        0x9
        0x54
        0x18
        0x16
        0x15
        0x19
        0x11
        0x3
        0x25
        0x8
        0x15
        0x1b
        0x1e
        0x9
    .end array-data

    :array_3f
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x17
        0x19
        0x11
        0x54
        0xe
        0x8
        0xf
        0x19
        0x11
        0x9
        0x13
        0x17
        0xf
        0x16
        0x1b
        0xe
        0x15
        0x8
    .end array-data

    :array_40
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x15
        0xc
        0x13
        0x16
        0x1f
        0x2
        0x54
        0xe
        0x8
        0xf
        0x19
        0x11
        0x9
        0x13
        0x17
        0xf
        0x16
        0x1b
        0xe
        0x15
        0x8
        0x49
        0x1e
    .end array-data

    :array_41
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1e
        0x15
        0x3
        0x1f
        0x15
        0x14
        0x54
        0x3c
        0xa
        0x9
        0x3e
        0x1f
        0x1c
        0x1f
        0x14
        0x19
        0x1f
    .end array-data

    :array_42
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x11
        0x13
        0x16
        0x15
        0x15
        0x54
        0x9
        0xf
        0x18
        0xd
        0x1b
        0x3
        0x9
        0xf
        0x8
        0x1c
    .end array-data

    :array_43
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0xa
        0x14
        0x13
        0x2
        0x1d
        0x1b
        0x17
        0x1f
        0x9
        0x54
        0xd
        0x13
        0x14
        0xe
        0x1f
        0x8
        0x9
        0xa
        0x15
        0x8
        0xe
        0x9
    .end array-data

    :array_44
    .array-data 4
        0xa
        0x16
        0x54
        0x17
        0x1b
        0x19
        0x1b
        0xb
        0xf
        0x1f
        0x54
        0x12
        0x1b
        0x14
        0x1d
        0x17
        0x1b
        0x14
        0xa
        0x16
    .end array-data

    :array_45
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1e
        0x13
        0x9
        0x14
        0x1f
        0x3
        0x54
        0xd
        0x12
        0x1f
        0x8
        0x1f
        0x9
        0x17
        0x3
        0xd
        0x1b
        0xe
        0x1f
        0x8
        0x48
        0x25
        0x1d
        0x15
        0x15
    .end array-data

    :array_46
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x17
        0x13
        0x1e
        0x1b
        0x9
        0xa
        0x16
        0x1b
        0x3
        0x1f
        0x8
        0x54
        0x1b
        0xa
        0xa
        0x9
        0x54
        0xa
        0x1b
        0xa
        0x1b
        0xa
        0x1f
        0x1b
        0x8
        0x9
        0x1b
        0x1d
        0x1b
    .end array-data

    :array_47
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x19
        0x12
        0x13
        0x54
        0x38
        0x15
        0x1b
        0xe
    .end array-data

    :array_48
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0xa
        0x1f
        0x8
        0xa
        0x16
        0x1f
        0x16
        0x1b
        0x18
        0x54
        0x9
        0x1b
        0x17
        0xa
        0x16
        0x4e
        0x11
        0x1b
        0x11
        0x1b
        0x15
    .end array-data

    .line 385
    :array_49
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x16
        0x15
        0x1c
        0xe
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x3b
        0x34
        0x37
        0x2a
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x3b
        0x4c
        0x32
        0x2a
    .end array-data

    :array_4a
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x16
        0x15
        0x1c
        0xe
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x3d
        0x3b
        0x34
        0x3e
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x3b
        0x4c
        0x32
        0x2a
    .end array-data

    :array_4b
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x16
        0x15
        0x1c
        0xe
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x3b
        0x34
        0x37
        0x2a
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x3b
        0x4d
        0x32
        0x37
    .end array-data

    :array_4c
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x16
        0x15
        0x1c
        0xe
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x3d
        0x3b
        0x34
        0x3e
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x4d
        0x3b
        0x29
        0x29
    .end array-data

    :array_4d
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x16
        0x15
        0x1c
        0xe
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x3b
        0x34
        0x37
        0x2a
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x3b
        0x42
        0x32
        0x37
    .end array-data

    :array_4e
    .array-data 4
        0x3d
        0x3b
        0x34
        0x3e
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x3b
    .end array-data

    :array_4f
    .array-data 4
        0x3b
        0x34
        0x37
        0x2a
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x3b
    .end array-data

    .line 443
    :array_50
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x8
        0x15
        0xc
        0x13
        0x15
        0x54
        0x1b
        0x14
        0x1d
        0x8
        0x3
        0x18
        0x13
        0x8
        0x1e
        0x9
    .end array-data

    .line 447
    :array_51
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x13
        0x17
        0x1b
        0x14
        0x1d
        0x13
        0x54
        0xe
        0x1f
        0x17
        0xa
        0x16
        0x1f
        0x8
        0xf
        0x14
        0x48
    .end array-data

    .line 451
    :array_52
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x16
        0xf
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1d
        0xf
        0x14
        0x18
        0x8
        0x15
        0x9
        0x25
        0x1c
        0x8
        0x1f
        0x1f
    .end array-data

    .line 456
    :array_53
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x16
        0xf
        0x54
        0x1d
        0xf
        0x14
        0x18
        0x8
        0x15
        0x9
        0x48
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isKnownGame(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 462
    sget-object v0, Lcom/android/server/ssrm/HotGameList;->sKnownGameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static updateDssPolicy()V
    .locals 9

    .prologue
    const/16 v8, 0x23

    const-wide/high16 v6, 0x3ff0000000000000L

    const-wide/high16 v4, 0x3fe0000000000000L

    .line 470
    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_CHAGALL:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_KLIMT:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_TF:Z

    if-eqz v3, :cond_2

    .line 471
    :cond_0
    invoke-static {}, Landroid/os/DssHelper;->getInstance()Landroid/os/DssHelper;

    move-result-object v0

    .line 472
    .local v0, "dssHelper":Landroid/os/DssHelper;
    sget-object v3, Lcom/android/server/ssrm/HotGameList;->sKnownGameHashMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 473
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/DssHelper;->addPackage(Ljava/lang/String;D)V

    goto :goto_0

    .line 476
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const/16 v3, 0x1c

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-static {v3}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/DssHelper;->addPackage(Ljava/lang/String;D)V

    .line 481
    const/16 v3, 0x18

    new-array v3, v3, [I

    fill-array-data v3, :array_1

    invoke-static {v3}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/DssHelper;->addPackage(Ljava/lang/String;D)V

    .line 486
    new-array v3, v8, [I

    fill-array-data v3, :array_2

    invoke-static {v3}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/DssHelper;->addPackage(Ljava/lang/String;D)V

    .line 491
    const/16 v3, 0x19

    new-array v3, v3, [I

    fill-array-data v3, :array_3

    invoke-static {v3}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/DssHelper;->addPackage(Ljava/lang/String;D)V

    .line 496
    const/16 v3, 0x13

    new-array v3, v3, [I

    fill-array-data v3, :array_4

    invoke-static {v3}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/DssHelper;->addPackage(Ljava/lang/String;D)V

    .line 500
    new-array v3, v8, [I

    fill-array-data v3, :array_5

    invoke-static {v3}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/DssHelper;->addPackage(Ljava/lang/String;D)V

    .line 506
    const/16 v3, 0x12

    new-array v3, v3, [I

    fill-array-data v3, :array_6

    invoke-static {v3}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v6, v7}, Landroid/os/DssHelper;->addPackage(Ljava/lang/String;D)V

    .line 510
    const/16 v3, 0x21

    new-array v3, v3, [I

    fill-array-data v3, :array_7

    invoke-static {v3}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v6, v7}, Landroid/os/DssHelper;->addPackage(Ljava/lang/String;D)V

    .line 515
    :cond_2
    return-void

    .line 476
    nop

    :array_0
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x12
        0x1b
        0x16
        0x1c
        0x18
        0x8
        0x13
        0x19
        0x11
        0x54
        0x1c
        0x8
        0xf
        0x13
        0xe
        0x14
        0x13
        0x14
        0x10
        0x1b
        0x1c
        0x8
        0x1f
        0x1f
    .end array-data

    .line 481
    :array_1
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x12
        0x1b
        0x16
        0x1c
        0x18
        0x8
        0x13
        0x19
        0x11
        0x54
        0x1c
        0x8
        0xf
        0x13
        0xe
        0x14
        0x13
        0x14
        0x10
        0x1b
    .end array-data

    .line 486
    :array_2
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x16
        0x15
        0x1c
        0xe
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x3b
        0x34
        0x37
        0x2a
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x3e
        0x37
        0x32
        0x37
    .end array-data

    .line 491
    :array_3
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1f
        0x1b
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x54
        0x9
        0x13
        0x17
        0xa
        0x9
        0x15
        0x14
        0x9
        0x4e
        0x25
        0x8
        0x15
        0xd
    .end array-data

    .line 496
    :array_4
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x17
        0x1b
        0x19
        0x12
        0x13
        0x14
        0x1f
        0x0
        0x15
        0x14
        0x1f
        0x54
        0x1d
        0x15
        0xd
    .end array-data

    .line 500
    :array_5
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x16
        0x15
        0x1c
        0xe
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x3b
        0x34
        0x37
        0x2a
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x3e
        0x4e
        0x32
        0x37
    .end array-data

    .line 506
    :array_6
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x16
        0xf
        0x54
        0x1f
        0xd
        0x1b
        0x8
        0x8
        0x13
        0x15
        0x8
        0x9
        0x49
    .end array-data

    .line 510
    :array_7
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x17
        0x13
        0x1e
        0x1b
        0x9
        0xa
        0x16
        0x1b
        0x3
        0x1f
        0x8
        0x54
        0x1b
        0xa
        0xa
        0x9
        0x54
        0xa
        0x1b
        0xa
        0x1b
        0xa
        0x1f
        0x1b
        0x8
        0x9
        0x1b
        0x1d
        0x1b
    .end array-data
.end method

.method public static x([I)Ljava/lang/String;
    .locals 1
    .param p0, "raw"    # [I

    .prologue
    .line 466
    invoke-static {p0}, Lcom/android/server/ssrm/SSRMUtil;->x([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
