.class public Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;
.super Ljava/lang/Object;
.source "ResourceIDMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    }
.end annotation


# instance fields
.field protected mResourceIDs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 21

    .prologue
    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    .line 72
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x63

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f02030f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x7f0b0000

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f0202e8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x7f0b0000

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f0202e8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0b01a2

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f0200d6

    const v4, 0x7f0200d8

    const/4 v5, 0x0

    const v6, 0x7f0b02d8

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x6f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f0200af

    const v4, 0x7f0200b1

    const v5, 0x7f0200b0

    const v6, 0x7f0b0168

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020085

    const v4, 0x7f020087

    const/4 v5, 0x0

    const v6, 0x7f0b0139

    const v7, 0x7f0b02f9

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v9, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f0202e8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0b0138

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f0202e8

    const v4, 0x7f0202e8

    const/4 v5, 0x0

    const v6, 0x7f0b0129

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f0202e8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0b012c

    const v7, 0x7f0b030a

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v9, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020261

    const v4, 0x7f020263

    const v5, 0x7f020262

    const v6, 0x7f0b001f

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f0202e8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0b013d

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f0202e8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0b012b

    const v7, 0x7f0b0306

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v9, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const v6, 0x7f0b013b

    .line 111
    .local v6, "exposureValueString":I
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020068

    const v4, 0x7f02006a

    const v5, 0x7f020069

    const v7, 0x7f0b02f7

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v9, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200d3

    const v10, 0x7f0200d5

    const v11, 0x7f0200d4

    const v12, 0x7f0b0130

    const v13, 0x7f0b02f6

    const/4 v14, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v14}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x62

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0202e8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x7f0b0165

    const v13, 0x7f0b0302

    const/4 v14, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v14}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0202e8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x7f0b012f

    const v13, 0x7f0b0309

    const/4 v14, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v14}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0202e8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x7f0b0134

    const v13, 0x7f0b030c

    const/4 v14, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v14}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0202e8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x7f0b013f

    const v13, 0x7f0b02fd

    const/4 v14, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v14}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0202e8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x7f0b0150

    const v13, 0x7f0b030f

    const/4 v14, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v14}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0202e8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x7f0b0141

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0202e8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x7f0b0144

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0202e8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x7f0b013e

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0202e8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x7f0b015c

    const v13, 0x7f0b02fa

    const/4 v14, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v14}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0202e8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x7f0b0145

    const v13, 0x7f0b02fc

    const/4 v14, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v14}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0202e8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x7f0b0151

    const v13, 0x7f0b0301

    const/4 v14, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v14}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0202e8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x7f0b0146

    const v13, 0x7f0b0300

    const/4 v14, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v14}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0202e8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x7f0b0156

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0202e8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x7f0b0135

    const v13, 0x7f0b0303

    const/4 v14, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v14}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0202e8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x7f0b0149

    const v13, 0x7f0b0304

    const/4 v14, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v14}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02025b

    const v10, 0x7f02025d

    const v11, 0x7f02025c

    const v12, 0x7f0b014b

    const v13, 0x7f0b030d

    const/4 v14, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v14}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0202e8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x7f0b014f

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0202e8

    const v10, 0x7f0202e8

    const/4 v11, 0x0

    const v12, 0x7f0b0166

    const v13, 0x7f0b030b

    const/4 v14, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v14}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbb9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0202e8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x7f0b012d

    const v13, 0x7f0b0310

    const/4 v14, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v14}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbb8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0202e8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x7f0b013c

    const v13, 0x7f0b030e

    const/4 v14, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v14}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbbb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0202e8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x7f0b0147

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbbc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0202e8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x7f0b0148

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbbf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0202e8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x7f0b0142

    const v13, 0x7f0b0307

    const/4 v14, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v14}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x47

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0202e8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x7f0b0155

    const v13, 0x7f0b0308

    const/4 v14, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v14}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x22

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0202e8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x7f0b015d

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x48

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0202e8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x7f0b015b

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x4d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0202e8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x7f0b0157

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x51

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0202e8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x7f0b0032

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbc3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0202e8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x7f0b0150

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbc4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0202e8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x7f0b0139

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x56

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0202e8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x7f0b015f

    const v13, 0x7f0b02f8

    const/4 v14, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v14}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x61

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0202e8

    const v10, 0x7f0202e8

    const/4 v11, 0x0

    const v12, 0x7f0b0160

    const v13, 0x7f0b0305

    const/4 v14, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v14}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x55

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020264

    const v10, 0x7f02026a

    const/4 v11, 0x0

    const v12, 0x7f0b01c6

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x170e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0202e8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x7f0b010e

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x170f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0202e8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x7f0b010f

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1710

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020264

    const v10, 0x7f02026a

    const/4 v11, 0x0

    const v12, 0x7f0b0122

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const v12, 0x7f0b0162

    .line 227
    .local v12, "autoNightDetectionString":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x5c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0202e8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v13, 0x7f0b02fe

    const/4 v14, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v14}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x5e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b0243

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x60

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b029f

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbc7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b0163

    const v19, 0x7f0b02f5

    const/16 v20, 0x0

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v20}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x70

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b02f2

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x72

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b0167

    const v19, 0x7f0b02ff

    const/16 v20, 0x0

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v20}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b0152

    const v19, 0x7f0b0152

    const/16 v20, 0x0

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v20}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x78

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b0164

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xc8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200d6

    const v16, 0x7f0200d8

    const v17, 0x7f0200d7

    const/high16 v18, 0x7f0b0000

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xc9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200d6

    const v16, 0x7f0200d8

    const v17, 0x7f0200d7

    const/high16 v18, 0x7f0b0000

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1a2c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02027e

    const v16, 0x7f020280

    const v17, 0x7f02027f

    const v18, 0x7f0b0123

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1a2d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020281

    const v16, 0x7f020283

    const v17, 0x7f020282

    const v18, 0x7f0b0122

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1bbc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0201f1

    const v16, 0x7f0201f3

    const v17, 0x7f0201f2

    const v18, 0x7f0b0123

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1bbd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0201f4

    const v16, 0x7f0201f6

    const v17, 0x7f0201f5

    const v18, 0x7f0b0122

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const/16 v1, 0x12c

    invoke-static {v1}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 266
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x12c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02034b

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b0041

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_0
    const/16 v1, 0x12d

    invoke-static {v1}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 269
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x12d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02034d

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b002d

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    :cond_1
    const/16 v1, 0x12e

    invoke-static {v1}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 272
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x12e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020357

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b002f

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :cond_2
    const/16 v1, 0x12f

    invoke-static {v1}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 275
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x12f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200e3

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b0030

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    :cond_3
    const/16 v1, 0x130

    invoke-static {v1}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 278
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x130

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x7f0b0000

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    :cond_4
    const/16 v1, 0x131

    invoke-static {v1}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 281
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x131

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b0031

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    :cond_5
    const/16 v1, 0x133

    invoke-static {v1}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 284
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x133

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02034c

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b0032

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :cond_6
    const/16 v1, 0x135

    invoke-static {v1}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 287
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x135

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b0034

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    :cond_7
    const/16 v1, 0x136

    invoke-static {v1}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 290
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x136

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200e1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b0035

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_8
    const/16 v1, 0x137

    invoke-static {v1}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 293
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x137

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b0036

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    :cond_9
    const/16 v1, 0x139

    invoke-static {v1}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v1

    if-nez v1, :cond_a

    .line 296
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x139

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200e2

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b0037

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    :cond_a
    const/16 v1, 0x13a

    invoke-static {v1}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 299
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x13a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020358

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b0042

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    :cond_b
    const/16 v1, 0x13c

    invoke-static {v1}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v1

    if-nez v1, :cond_c

    .line 305
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x13c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02034d

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b0166

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    :cond_c
    const/16 v1, 0x13f

    invoke-static {v1}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v1

    if-nez v1, :cond_d

    .line 309
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x13f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b003e

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    :cond_d
    const/16 v1, 0x13e

    invoke-static {v1}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 312
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x13e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b00f6

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    :cond_e
    const/16 v1, 0x140

    invoke-static {v1}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v1

    if-nez v1, :cond_f

    .line 315
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x140

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b003a

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    :cond_f
    const/16 v1, 0x141

    invoke-static {v1}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v1

    if-nez v1, :cond_10

    .line 318
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x141

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b003b

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    :cond_10
    const/16 v1, 0x143

    invoke-static {v1}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v1

    if-nez v1, :cond_11

    .line 321
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x143

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b003f

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    :cond_11
    const/16 v1, 0x147

    invoke-static {v1}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v1

    if-nez v1, :cond_12

    .line 324
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x147

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020352

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b0045

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    :cond_12
    const/16 v1, 0x148

    invoke-static {v1}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v1

    if-nez v1, :cond_13

    .line 327
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x148

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b0046

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    :cond_13
    const/16 v1, 0x149

    invoke-static {v1}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v1

    if-nez v1, :cond_14

    .line 330
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x149

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02035a

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b0049

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    :cond_14
    const/16 v1, 0x14b

    invoke-static {v1}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v1

    if-nez v1, :cond_15

    .line 333
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x14b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02035c

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b004b

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    :cond_15
    const/16 v1, 0x14c

    invoke-static {v1}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v1

    if-nez v1, :cond_16

    .line 336
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x14c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020349

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b004c

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    :cond_16
    const/16 v1, 0x14d

    invoke-static {v1}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v1

    if-nez v1, :cond_17

    .line 339
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x14d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020355

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b003e

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    :cond_17
    const/16 v1, 0x14e

    invoke-static {v1}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v1

    if-nez v1, :cond_18

    .line 342
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x14e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02035b

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b0117

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    :cond_18
    const/16 v1, 0x14f

    invoke-static {v1}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v1

    if-nez v1, :cond_19

    .line 345
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x14f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02034a

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b004d

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    :cond_19
    const/16 v1, 0x150

    invoke-static {v1}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 348
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x150

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020350

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b004f

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    :cond_1a
    const/16 v1, 0x151

    invoke-static {v1}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 351
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x151

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020356

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b0165

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    :cond_1b
    const/16 v1, 0x152

    invoke-static {v1}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 354
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x152

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020353

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b0047

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    :cond_1c
    const/16 v1, 0x153

    invoke-static {v1}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 357
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x153

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020344

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b0052

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    :cond_1d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x18f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02034e

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b00a5

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x232f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020354

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b00a4

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x258

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020088

    const v16, 0x7f02008a

    const v17, 0x7f020089

    const v18, 0x7f0b0123

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x259

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020085

    const v16, 0x7f020087

    const v17, 0x7f020086

    const v18, 0x7f0b0122

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x25a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020082

    const v16, 0x7f020084

    const v17, 0x7f020083

    const v18, 0x7f0b00f3

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x25b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02008b

    const v16, 0x7f02008c

    const/16 v17, 0x0

    const/high16 v18, 0x7f0b0000

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x2bc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200db

    const v16, 0x7f0200dc

    const v17, 0x7f0200da

    const v18, 0x7f0b0123

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x2bd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200db

    const v16, 0x7f0200dc

    const v17, 0x7f0200da

    const v18, 0x7f0b00f4

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x2be

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200de

    const v16, 0x7f0200df

    const v17, 0x7f0200dd

    const v18, 0x7f0b00f5

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x2bf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200db

    const v16, 0x7f0200dc

    const/16 v17, 0x0

    const v18, 0x7f0b00f6

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x320

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202a0

    const v16, 0x7f0202a2

    const v17, 0x7f0202a1

    const v18, 0x7f0b0123

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x321

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020290

    const v16, 0x7f020292

    const v17, 0x7f020291

    const v18, 0x7f0b00fb

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x322

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020293

    const v16, 0x7f020295

    const v17, 0x7f020294

    const v18, 0x7f0b00fd

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x323

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02028d

    const v16, 0x7f02028f

    const v17, 0x7f02028e

    const v18, 0x7f0b00fe

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x384

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202cb

    const v16, 0x7f0202cd

    const v17, 0x7f0202cc

    const v18, 0x7f0b0072

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x385

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202d1

    const v16, 0x7f0202d3

    const v17, 0x7f0202d2

    const v18, 0x7f0b0074

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x386

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202ce

    const v16, 0x7f0202d0

    const v17, 0x7f0202cf

    const v18, 0x7f0b0073

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x387

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202d7

    const v16, 0x7f0202d9

    const v17, 0x7f0202d8

    const v18, 0x7f0b0078

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x388

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202d4

    const v16, 0x7f0202d6

    const v17, 0x7f0202d5

    const v18, 0x7f0b0075

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x389

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b0077

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x38a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b0076

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020304

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b0080

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3e9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020303

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b0083

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3ea

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020302

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b0081

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3eb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202fb

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b0082

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3fd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02030d

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b008c

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02030b

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b008b

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x404

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020305

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b0092

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x405

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020300

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b0093

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x406

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020309

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b0094

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x407

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02030b

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b0095

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x408

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020306

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b0096

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x409

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202fd

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b0097

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x40a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020307

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b0098

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x40b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020301

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b0099

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x40c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02030c

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b009a

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x40d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020304

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b009b

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x40e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020304

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b009c

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x40f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020304

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b009d

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x410

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020304

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b009e

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x411

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020304

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b009f

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x412

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020304

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b00a0

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x413

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020304

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b00a1

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x414

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020304

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b00a2

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x415

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020304

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b00a3

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3fe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02030d

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b008c

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3f7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020308

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b008a

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3f8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202fc

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b008f

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3f9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02030e

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b0091

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x41a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020055

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b00a9

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x41b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02004d

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b00aa

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x41c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020051

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b00ab

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x41d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020053

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b00ac

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x41f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020052

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b00ae

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x420

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02004e

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b00af

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x422

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020050

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b00b1

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x424

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020054

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b00b3

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x426

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02004f

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b00b4

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x425

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202fe

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b00a5

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1f40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020304

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x7f0b0000

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x232a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02006f

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b00a5

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x232e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020071

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b01a5

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x232d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020072

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x7f0b0000

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x44c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200c1

    const v16, 0x7f0200c3

    const v17, 0x7f0200c2

    const v18, 0x7f0b0072

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x44d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b0079

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x44e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200b5

    const v16, 0x7f0200b7

    const v17, 0x7f0200b6

    const v18, 0x7f0b007a

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x44f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200b8

    const v16, 0x7f0200ba

    const v17, 0x7f0200b9

    const v18, 0x7f0b007b

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x450

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200bb

    const v16, 0x7f0200bd

    const v17, 0x7f0200bc

    const v18, 0x7f0b007c

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x451

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200be

    const v16, 0x7f0200c0

    const v17, 0x7f0200bf

    const v18, 0x7f0b007d

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x452

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x7f0b0000

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x453

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b007e

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x454

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x7f0b0000

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x455

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b007f

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x456

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x7f0b0000

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x457

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x7f0b0000

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x458

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x7f0b0000

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x4b0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200ca

    const v16, 0x7f0200cc

    const v17, 0x7f0200cb

    const v18, 0x7f0b0103

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x4b1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200d0

    const v16, 0x7f0200d2

    const v17, 0x7f0200d1

    const v18, 0x7f0b0104

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x4b2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200cd

    const v16, 0x7f0200cf

    const v17, 0x7f0200ce

    const v18, 0x7f0b0105

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x514

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200a9

    const v16, 0x7f0200ab

    const v17, 0x7f0200aa

    const v18, 0x7f0b0123

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x515

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200ac

    const v16, 0x7f0200ae

    const v17, 0x7f0200ad

    const v18, 0x7f0b0122

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x578

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202a7

    const v16, 0x7f0202a9

    const v17, 0x7f0202a8

    const v18, 0x7f0b0123

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x579

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202aa

    const v16, 0x7f0202ac

    const v17, 0x7f0202ab

    const v18, 0x7f0b0122

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x57a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0203de

    const v16, 0x7f0203e0

    const v17, 0x7f0203df

    const v18, 0x7f0b0123

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x57b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0203dc

    const v16, 0x7f0203e1

    const v17, 0x7f0203dd

    const v18, 0x7f0b0122

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x5dc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b0123

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x5dd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b0122

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x6a4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b00f9

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x6a5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b00fa

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x6a6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b006e

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x6a7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b00f9

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x6a8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b00fa

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x6a9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b006e

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x708

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200a3

    const v16, 0x7f0200a5

    const v17, 0x7f0200a4

    const v18, 0x7f0b0123

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x709

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200a6

    const v16, 0x7f0200a8

    const v17, 0x7f0200a7

    const v18, 0x7f0b0122

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x640

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0201fe

    const v16, 0x7f020200

    const v17, 0x7f0201ff

    const v18, 0x7f0b0282

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x641

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0201fc

    const v16, 0x7f020201

    const v17, 0x7f0201fd

    const v18, 0x7f0b0281

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x76c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020249

    const v16, 0x7f02024b

    const v17, 0x7f02024a

    const v18, 0x7f0b0123

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x76d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020243

    const v16, 0x7f02024c

    const v17, 0x7f020248

    const v18, 0x7f0b0122

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x76e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020244

    const v16, 0x7f020245

    const/16 v17, 0x0

    const v18, 0x7f0b00fb

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x76f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020246

    const v16, 0x7f020247

    const/16 v17, 0x0

    const v18, 0x7f0b00fd

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xfa0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02026b

    const v16, 0x7f02026d

    const v17, 0x7f02026c

    const v18, 0x7f0b0123

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xfa1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020274

    const v16, 0x7f020275

    const/16 v17, 0x0

    const v18, 0x7f0b022d

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xfa2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020265

    const v16, 0x7f020267

    const v17, 0x7f020266

    const v18, 0x7f0b022e

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xfa5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02026e

    const v16, 0x7f020270

    const v17, 0x7f02026f

    const v18, 0x7f0b0167

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x37

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020261

    const v16, 0x7f020263

    const/16 v17, 0x0

    const v18, 0x7f0b01b6

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x38

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020261

    const v16, 0x7f020263

    const/16 v17, 0x0

    const v18, 0x7f0b01b7

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1006

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020261

    const v16, 0x7f020263

    const/16 v17, 0x0

    const v18, 0x7f0b0123

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1007

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020261

    const v16, 0x7f020263

    const/16 v17, 0x0

    const v18, 0x7f0b0122

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x39

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020261

    const v16, 0x7f020263

    const/16 v17, 0x0

    const v18, 0x7f0b01b8

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x7d0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02009d

    const v16, 0x7f02009f

    const v17, 0x7f02009e

    const v18, 0x7f0b0123

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x7d1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200a0

    const v16, 0x7f0200a2

    const v17, 0x7f0200a1

    const v18, 0x7f0b0122

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x834

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020278

    const v16, 0x7f02027a

    const v17, 0x7f020279

    const v18, 0x7f0b0123

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x835

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02027b

    const v16, 0x7f02027d

    const v17, 0x7f02027c

    const v18, 0x7f0b0122

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x898

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020289

    const v16, 0x7f02028b

    const v17, 0x7f02028a

    const v18, 0x7f0b0107

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x899

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020286

    const v16, 0x7f020288

    const v17, 0x7f020287

    const v18, 0x7f0b0108

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x91f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0201b9

    const v16, 0x7f0201bb

    const v17, 0x7f0201ba

    const v18, 0x7f0b00b7

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x924

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0201b3

    const v16, 0x7f0201b5

    const v17, 0x7f0201b4

    const v18, 0x7f0b00b8

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x8fc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0201ce

    const v16, 0x7f0201d0

    const v17, 0x7f0201cf

    const v18, 0x7f0b00b9

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x8fd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0201e6

    const v16, 0x7f0201e8

    const v17, 0x7f0201e7

    const v18, 0x7f0b00ba

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x8fe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0201ce

    const v16, 0x7f0201d0

    const v17, 0x7f0201cf

    const v18, 0x7f0b00bb

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x8ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0201cb

    const v16, 0x7f0201cd

    const v17, 0x7f0201cc

    const v18, 0x7f0b00bc

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x920

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0201b3

    const v16, 0x7f0201b5

    const v17, 0x7f0201b4

    const v18, 0x7f0b00bd

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x925

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0201e0

    const v16, 0x7f0201e2

    const v17, 0x7f0201e1

    const v18, 0x7f0b00be

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x900

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0201dd

    const v16, 0x7f0201df

    const v17, 0x7f0201de

    const v18, 0x7f0b00bf

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x901

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const v16, 0x7f0202e8

    const/16 v17, 0x0

    const v18, 0x7f0b00c0

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x902

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0201da

    const v16, 0x7f0201dc

    const v17, 0x7f0201db

    const v18, 0x7f0b00c1

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x903

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const v16, 0x7f0202e8

    const/16 v17, 0x0

    const v18, 0x7f0b00c2

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x904

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const v16, 0x7f0202e8

    const/16 v17, 0x0

    const v18, 0x7f0b00c3

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x921

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0201e0

    const v16, 0x7f0201e2

    const v17, 0x7f0201e1

    const v18, 0x7f0b00c4

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x905

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const v16, 0x7f0202e8

    const/16 v17, 0x0

    const v18, 0x7f0b00c6

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x923

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0201c2

    const v16, 0x7f0201c4

    const v17, 0x7f0201c3

    const v18, 0x7f0b00ca

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x926

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0201d7

    const v16, 0x7f0201d9

    const v17, 0x7f0201d8

    const v18, 0x7f0b00c5

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x906

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0201d1

    const v16, 0x7f0201d1

    const/16 v17, 0x0

    const v18, 0x7f0b00c7

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x908

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0201c8

    const v16, 0x7f0201ca

    const v17, 0x7f0201c9

    const v18, 0x7f0b00c9

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x909

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0201bf

    const v16, 0x7f0201c1

    const v17, 0x7f0201c0

    const v18, 0x7f0b00cb

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x90a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0201bc

    const v16, 0x7f0201be

    const v17, 0x7f0201bd

    const v18, 0x7f0b00cc

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x90b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0201bc

    const v16, 0x7f0201be

    const v17, 0x7f0201bd

    const v18, 0x7f0b00cd

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x90c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const v16, 0x7f0202e8

    const/16 v17, 0x0

    const v18, 0x7f0b00ce

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x90d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0201c5

    const v16, 0x7f0201c7

    const v17, 0x7f0201c6

    const v18, 0x7f0b00cf

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x90f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const v16, 0x7f0202e8

    const/16 v17, 0x0

    const v18, 0x7f0b00d3

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x910

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const v16, 0x7f0202e8

    const/16 v17, 0x0

    const v18, 0x7f0b00d1

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x911

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const v16, 0x7f0202e8

    const/16 v17, 0x0

    const v18, 0x7f0b00d4

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x913

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0201b0

    const v16, 0x7f0201b2

    const v17, 0x7f0201b1

    const v18, 0x7f0b00d0

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x912

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0201b6

    const v16, 0x7f0201b8

    const v17, 0x7f0201b7

    const v18, 0x7f0b00d5

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x915

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0201e3

    const v16, 0x7f0201e5

    const v17, 0x7f0201e4

    const v18, 0x7f0b00d7

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x916

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const v16, 0x7f0202e8

    const/16 v17, 0x0

    const v18, 0x7f0b00d8

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x922

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0201ad

    const v16, 0x7f0201af

    const v17, 0x7f0201ae

    const v18, 0x7f0b00d9

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x91c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const v16, 0x7f0202e8

    const/16 v17, 0x0

    const v18, 0x7f0b00db

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x919

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0201d4

    const v16, 0x7f0201d6

    const v17, 0x7f0201d5

    const v18, 0x7f0b00df

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x917

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const v16, 0x7f0202e8

    const/16 v17, 0x0

    const v18, 0x7f0b00dc

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x91a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const v16, 0x7f0202e8

    const/16 v17, 0x0

    const v18, 0x7f0b00e2

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x918

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0201aa

    const v16, 0x7f0201ac

    const v17, 0x7f0201ab

    const v18, 0x7f0b00dd

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x91b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const v16, 0x7f0202e8

    const/16 v17, 0x0

    const v18, 0x7f0b00e4

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x91d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const v16, 0x7f0202e8

    const/16 v17, 0x0

    const v18, 0x7f0b00e5

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x96a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202b3

    const v16, 0x7f0202b5

    const v17, 0x7f0202b4

    const v18, 0x7f0b00f1

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x96d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202b9

    const v16, 0x7f0202bb

    const v17, 0x7f0202ba

    const v18, 0x7f0b00f2

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x96c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202ad

    const v16, 0x7f0202af

    const v17, 0x7f0202ae

    const v18, 0x7f0b00e6

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x960

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202ad

    const v16, 0x7f0202af

    const v17, 0x7f0202ae

    const v18, 0x7f0b00e6

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x962

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202b0

    const v16, 0x7f0202b2

    const v17, 0x7f0202b1

    const v18, 0x7f0b00e9

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x963

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020186

    const v16, 0x7f020188

    const v17, 0x7f020187

    const v18, 0x7f0b00ea

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x964

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const v16, 0x7f0202e8

    const/16 v17, 0x0

    const v18, 0x7f0b00eb

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x965

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020183

    const v16, 0x7f020185

    const v17, 0x7f020184

    const v18, 0x7f0b00ec

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x966

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202b6

    const v16, 0x7f0202b8

    const v17, 0x7f0202b7

    const v18, 0x7f0b00ed

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x967

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const v16, 0x7f0202e8

    const/16 v17, 0x0

    const v18, 0x7f0b00e1

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x968

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020180

    const v16, 0x7f020182

    const v17, 0x7f020181

    const v18, 0x7f0b00ef

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x969

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02017d

    const v16, 0x7f02017f

    const v17, 0x7f02017e

    const v18, 0x7f0b00f0

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xc1c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02022b

    const v16, 0x7f02022d

    const v17, 0x7f02022c

    const v18, 0x7f0b010b

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xc1d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02022e

    const v16, 0x7f020230

    const v17, 0x7f02022f

    const v18, 0x7f0b010c

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x170e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020231

    const v16, 0x7f020233

    const v17, 0x7f020232

    const v18, 0x7f0b010e

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x170f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020222

    const v16, 0x7f020224

    const v17, 0x7f020223

    const v18, 0x7f0b010f

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xc20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02022b

    const v16, 0x7f02022d

    const v17, 0x7f02022c

    const v18, 0x7f0b0111

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xc21

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02022e

    const v16, 0x7f020230

    const v17, 0x7f02022f

    const v18, 0x7f0b010d

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xc22

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02021f

    const v16, 0x7f020221

    const v17, 0x7f020220

    const v18, 0x7f0b0112

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xc80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x7f0b0000

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xc81

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x7f0b0000

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xd48

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020195

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b0123

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xd49

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020196

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b0122

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xdac

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b0123

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xdad

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b0122

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xe10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020079

    const v16, 0x7f02007a

    const/16 v17, 0x0

    const v18, 0x7f0b01a7

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xe11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020077

    const v16, 0x7f020078

    const/16 v17, 0x0

    const v18, 0x7f0b01af

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xe12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020068

    const v16, 0x7f02006a

    const v17, 0x7f020069

    const v18, 0x7f0b01af

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xe13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020068

    const v16, 0x7f02006a

    const v17, 0x7f020069

    const v18, 0x7f0b01ae

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xe14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020068

    const v16, 0x7f02006a

    const v17, 0x7f020069

    const v18, 0x7f0b01ad

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xe15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020068

    const v16, 0x7f02006a

    const v17, 0x7f020069

    const v18, 0x7f0b01ac

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xe16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020068

    const v16, 0x7f02006a

    const v17, 0x7f020069

    const v18, 0x7f0b01ab

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xe17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020068

    const v16, 0x7f02006a

    const v17, 0x7f020069

    const v18, 0x7f0b01aa

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xe18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020068

    const v16, 0x7f02006a

    const v17, 0x7f020069

    const v18, 0x7f0b01a9

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xe19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020068

    const v16, 0x7f02006a

    const v17, 0x7f020069

    const v18, 0x7f0b01a8

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xe1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020068

    const v16, 0x7f02006a

    const v17, 0x7f020069

    const v18, 0x7f0b01a7

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xe74

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02018f

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b01a2

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xe75

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020191

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b0168

    const v19, 0x7f0b02fb

    const/16 v20, 0x0

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v20}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xe76

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020193

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b01a3

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xe77

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020194

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b01a4

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xe78

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020192

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b01a5

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xe79

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020190

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b01a6

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xed8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b0123

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xed9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202e8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b0122

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xf3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020251

    const v16, 0x7f020253

    const v17, 0x7f020252

    const v18, 0x7f0b0123

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xf3d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02024f

    const v16, 0x7f020254

    const v17, 0x7f020250

    const v18, 0x7f0b0122

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1194

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02003b

    const v16, 0x7f02003d

    const v17, 0x7f02003c

    const v18, 0x7f0b0123

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1195

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020029

    const v16, 0x7f02002b

    const v17, 0x7f02002a

    const v18, 0x7f0b0122

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x125c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202bf

    const v16, 0x7f0202c1

    const v17, 0x7f0202c0

    const v18, 0x7f0b0123

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x125d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202bc

    const v16, 0x7f0202be

    const v17, 0x7f0202bd

    const v18, 0x7f0b0122

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x12c0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02024d

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b027f

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x12c1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02024e

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b027e

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1388

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202c8

    const v16, 0x7f0202ca

    const v17, 0x7f0202c9

    const v18, 0x7f0b0251

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1389

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202c5

    const v16, 0x7f0202c7

    const v17, 0x7f0202c6

    const v18, 0x7f0b0252

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x138a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202c2

    const v16, 0x7f0202c4

    const v17, 0x7f0202c3

    const v18, 0x7f0b0253

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1450

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020389

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b024a

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1451

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02038d

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0b024b

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1518

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02001f

    const v16, 0x7f020020

    const/16 v17, 0x0

    const v18, 0x7f0b027c

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1519

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02001d

    const v16, 0x7f02001e

    const/16 v17, 0x0

    const v18, 0x7f0b027d

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x16a8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02007c

    const v16, 0x7f02007e

    const v17, 0x7f02007d

    const v18, 0x7f0b0123

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x16a9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02007f

    const v16, 0x7f020081

    const v17, 0x7f020080

    const v18, 0x7f0b0122

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x189c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020189

    const v16, 0x7f02018b

    const v17, 0x7f02018a

    const v18, 0x7f0b0123

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x189d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02018c

    const v16, 0x7f02018e

    const v17, 0x7f02018d

    const v18, 0x7f0b0122

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1770

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020238

    const v16, 0x7f020239

    const/16 v17, 0x0

    const v18, 0x7f0b0213

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1771

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020236

    const v16, 0x7f020237

    const/16 v17, 0x0

    const v18, 0x7f0b0214

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1772

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020234

    const v16, 0x7f020235

    const/16 v17, 0x0

    const v18, 0x7f0b0215

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1773

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020225

    const v16, 0x7f020226

    const/16 v17, 0x0

    const v18, 0x7f0b0210

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1774

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020227

    const v16, 0x7f020228

    const/16 v17, 0x0

    const v18, 0x7f0b0211

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1775

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020229

    const v16, 0x7f02022a

    const/16 v17, 0x0

    const v18, 0x7f0b0212

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x15e0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202a7

    const v16, 0x7f0202a9

    const v17, 0x7f0202a8

    const v18, 0x7f0b0123

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x15e1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202aa

    const v16, 0x7f0202ac

    const v17, 0x7f0202ab

    const v18, 0x7f0b0122

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1964

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202ef

    const v16, 0x7f0202ef

    const v17, 0x7f0202ef

    const v18, 0x7f0b0246

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1965

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0202ee

    const v16, 0x7f0202ee

    const/16 v17, 0x0

    const v18, 0x7f0b0247

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1838

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02007c

    const v16, 0x7f02007e

    const v17, 0x7f02007d

    const v18, 0x7f0b0123

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1839

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02007f

    const v16, 0x7f020081

    const/16 v17, 0x0

    const v18, 0x7f0b0122

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x17d7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020011

    const v16, 0x7f020013

    const v17, 0x7f020012

    const v18, 0x7f0b0123

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x17d6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020014

    const v16, 0x7f020016

    const v17, 0x7f020015

    const v18, 0x7f0b0122

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1a90

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020271

    const v16, 0x7f020273

    const v17, 0x7f020272

    const v18, 0x7f0b0123

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1a91

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02026e

    const v16, 0x7f020270

    const v17, 0x7f02026f

    const v18, 0x7f0b0122

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1af4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02008d

    const v16, 0x7f02008f

    const v17, 0x7f02008e

    const v18, 0x7f0b0123

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1af5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020090

    const v16, 0x7f020092

    const v17, 0x7f020091

    const v18, 0x7f0b0122

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x51e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02005f

    const v16, 0x7f020061

    const v17, 0x7f020060

    const v18, 0x7f0b0123

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x51f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020062

    const v16, 0x7f020064

    const v17, 0x7f020063

    const v18, 0x7f0b0122

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x262

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020059

    const v16, 0x7f02005b

    const v17, 0x7f02005a

    const v18, 0x7f0b0123

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x263

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02005c

    const v16, 0x7f02005e

    const v17, 0x7f02005d

    const v18, 0x7f0b0122

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x264

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020056

    const v16, 0x7f020058

    const v17, 0x7f020057

    const v18, 0x7f0b00f3

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 744
    return-void
.end method

.method public get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    .locals 2
    .param p1, "commandId"    # I

    .prologue
    .line 730
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getResourceIDByIndex(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 738
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 739
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    return-object v1
.end method
