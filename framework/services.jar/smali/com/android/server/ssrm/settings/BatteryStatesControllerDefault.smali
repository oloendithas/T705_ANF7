.class public Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;
.super Lcom/android/server/ssrm/settings/BatteryStatesController;
.source "BatteryStatesControllerDefault.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault$TopDumpThread;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final MAX_BUFFER_SIZE:I = 0x190

.field private static final TAG:Ljava/lang/String; = "SSRMv2:BatteryStatesControllerDefault"

.field static final mDumpThreadSyncObject:Ljava/lang/Object;

.field static sArrayCircularBuffer:Lcom/android/server/ssrm/CircularBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/ssrm/CircularBuffer",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActiveId:I

.field private mActiveLevel:I

.field private mActiveState:Lcom/android/server/ssrm/settings/BatteryState;

.field mHandler:Landroid/os/Handler;

.field private mPrevId:I

.field private mStates:Lcom/android/server/ssrm/settings/SortedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/ssrm/settings/SortedArrayList",
            "<",
            "Lcom/android/server/ssrm/settings/BatteryState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/android/server/ssrm/CircularBuffer;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Lcom/android/server/ssrm/CircularBuffer;-><init>(I)V

    sput-object v0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->sArrayCircularBuffer:Lcom/android/server/ssrm/CircularBuffer;

    .line 112
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mDumpThreadSyncObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/server/ssrm/settings/BatteryStatesController;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveLevel:I

    .line 48
    const/16 v0, -0x63

    iput v0, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveId:I

    .line 50
    iget v0, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveId:I

    iput v0, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mPrevId:I

    .line 114
    return-void
.end method

.method private createHandler(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 180
    new-instance v0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault$1;-><init>(Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mHandler:Landroid/os/Handler;

    .line 194
    return-void
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 60
    return-void
.end method


# virtual methods
.method public addState(Lcom/android/server/ssrm/settings/BatteryState;)V
    .locals 1
    .param p1, "state"    # Lcom/android/server/ssrm/settings/BatteryState;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mStates:Lcom/android/server/ssrm/settings/SortedArrayList;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/android/server/ssrm/settings/SortedArrayList;

    invoke-direct {v0}, Lcom/android/server/ssrm/settings/SortedArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mStates:Lcom/android/server/ssrm/settings/SortedArrayList;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mStates:Lcom/android/server/ssrm/settings/SortedArrayList;

    invoke-virtual {v0, p1}, Lcom/android/server/ssrm/settings/SortedArrayList;->insertSorted(Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method protected dumpStateChangeData()Ljava/lang/String;
    .locals 4

    .prologue
    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v3, "TOP DUMP Based on SIOP Level"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    const-string v3, "\n================================================"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    sget-object v3, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->sArrayCircularBuffer:Lcom/android/server/ssrm/CircularBuffer;

    if-eqz v3, :cond_0

    .line 257
    sget-object v3, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->sArrayCircularBuffer:Lcom/android/server/ssrm/CircularBuffer;

    invoke-virtual {v3}, Lcom/android/server/ssrm/CircularBuffer;->get()[Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, "temp":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 259
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 260
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    .end local v0    # "i":I
    .end local v2    # "temp":[Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected findAndSetActive(I)V
    .locals 5
    .param p1, "temperature"    # I

    .prologue
    .line 197
    iget-object v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mStates:Lcom/android/server/ssrm/settings/SortedArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 198
    .local v1, "count":I
    iget-object v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveState:Lcom/android/server/ssrm/settings/BatteryState;

    if-eqz v3, :cond_0

    .line 199
    iget-object v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveState:Lcom/android/server/ssrm/settings/BatteryState;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/ssrm/settings/BatteryState;->setActive(Z)V

    .line 201
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->findStateIndexByTemperature(I)Lcom/android/server/ssrm/settings/BatteryState;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveState:Lcom/android/server/ssrm/settings/BatteryState;

    .line 202
    iget-object v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveState:Lcom/android/server/ssrm/settings/BatteryState;

    if-eqz v3, :cond_2

    .line 203
    const/4 v2, 0x0

    .local v2, "ii":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 204
    iget-object v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mStates:Lcom/android/server/ssrm/settings/SortedArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/settings/BatteryState;

    .line 205
    .local v0, "battState":Lcom/android/server/ssrm/settings/BatteryState;
    iget-object v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveState:Lcom/android/server/ssrm/settings/BatteryState;

    invoke-virtual {v3}, Lcom/android/server/ssrm/settings/BatteryState;->temperature()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/server/ssrm/settings/BatteryState;->temperature()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 206
    iput v2, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveLevel:I

    .line 207
    iget-object v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveState:Lcom/android/server/ssrm/settings/BatteryState;

    invoke-virtual {v3}, Lcom/android/server/ssrm/settings/BatteryState;->getId()I

    move-result v3

    iput v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveId:I

    .line 211
    .end local v0    # "battState":Lcom/android/server/ssrm/settings/BatteryState;
    :cond_1
    iget-object v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveState:Lcom/android/server/ssrm/settings/BatteryState;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/ssrm/settings/BatteryState;->setActive(Z)V

    .line 213
    .end local v2    # "ii":I
    :cond_2
    return-void

    .line 203
    .restart local v0    # "battState":Lcom/android/server/ssrm/settings/BatteryState;
    .restart local v2    # "ii":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected findStateIndexByTemperature(I)Lcom/android/server/ssrm/settings/BatteryState;
    .locals 6
    .param p1, "temperature"    # I

    .prologue
    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "battState":Lcom/android/server/ssrm/settings/BatteryState;
    const/4 v3, -0x1

    .line 218
    .local v3, "mBattLevel":I
    iget-object v4, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mStates:Lcom/android/server/ssrm/settings/SortedArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 219
    .local v1, "count":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "ii":I
    :goto_0
    if-ltz v2, :cond_0

    .line 220
    iget-object v4, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mStates:Lcom/android/server/ssrm/settings/SortedArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "battState":Lcom/android/server/ssrm/settings/BatteryState;
    check-cast v0, Lcom/android/server/ssrm/settings/BatteryState;

    .line 221
    .restart local v0    # "battState":Lcom/android/server/ssrm/settings/BatteryState;
    invoke-virtual {v0}, Lcom/android/server/ssrm/settings/BatteryState;->temperature()I

    move-result v4

    if-lt p1, v4, :cond_1

    .line 222
    move v3, v2

    .line 226
    :cond_0
    if-nez v0, :cond_2

    .line 227
    const/4 v4, 0x0

    .line 236
    :goto_1
    return-object v4

    .line 219
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 229
    :cond_2
    iget v4, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveLevel:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    iget v4, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveLevel:I

    if-le v4, v3, :cond_3

    .line 230
    invoke-virtual {v0}, Lcom/android/server/ssrm/settings/BatteryState;->temperature()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-lt p1, v4, :cond_3

    .line 231
    add-int/lit8 v3, v3, 0x1

    .line 232
    iget-object v4, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mStates:Lcom/android/server/ssrm/settings/SortedArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "battState":Lcom/android/server/ssrm/settings/BatteryState;
    check-cast v0, Lcom/android/server/ssrm/settings/BatteryState;

    .line 235
    .restart local v0    # "battState":Lcom/android/server/ssrm/settings/BatteryState;
    :cond_3
    iget v4, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveId:I

    iput v4, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mPrevId:I

    move-object v4, v0

    .line 236
    goto :goto_1
.end method

.method public getActiveBatteryState(Z)Lcom/android/server/ssrm/settings/BatteryState;
    .locals 5
    .param p1, "dumpEnable"    # Z

    .prologue
    .line 89
    if-eqz p1, :cond_2

    iget v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mPrevId:I

    iget v4, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveId:I

    if-eq v3, v4, :cond_2

    .line 94
    sget-object v3, Lcom/android/server/ssrm/Monitor;->sHandlerThread:Landroid/os/HandlerThread;

    if-eqz v3, :cond_1

    .line 95
    iget-object v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mHandler:Landroid/os/Handler;

    if-nez v3, :cond_0

    .line 96
    sget-object v3, Lcom/android/server/ssrm/Monitor;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->createHandler(Landroid/os/Looper;)V

    .line 98
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 99
    .local v1, "time":J
    iget-object v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 100
    .local v0, "msg":Landroid/os/Message;
    iget v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mPrevId:I

    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 101
    iget v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveId:I

    iput v3, v0, Landroid/os/Message;->arg2:I

    .line 102
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 103
    iget-object v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 106
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "time":J
    :cond_1
    iget v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveId:I

    iput v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mPrevId:I

    .line 109
    :cond_2
    iget-object v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveState:Lcom/android/server/ssrm/settings/BatteryState;

    return-object v3
.end method

.method public removeState(Lcom/android/server/ssrm/settings/BatteryState;)V
    .locals 1
    .param p1, "state"    # Lcom/android/server/ssrm/settings/BatteryState;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mStates:Lcom/android/server/ssrm/settings/SortedArrayList;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mStates:Lcom/android/server/ssrm/settings/SortedArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 76
    :cond_0
    return-void
.end method

.method protected setActiveState(II)V
    .locals 2
    .param p1, "oldTemperature"    # I
    .param p2, "newTemperature"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mStates:Lcom/android/server/ssrm/settings/SortedArrayList;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SSRM. There are no states in battery state machine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->findAndSetActive(I)V

    .line 85
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v3, "Battery states:\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    iget-object v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mStates:Lcom/android/server/ssrm/settings/SortedArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/settings/BatteryState;

    .line 244
    .local v2, "state":Lcom/android/server/ssrm/settings/BatteryState;
    invoke-virtual {v2}, Lcom/android/server/ssrm/settings/BatteryState;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/android/server/ssrm/settings/Util;->indentText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 246
    .end local v2    # "state":Lcom/android/server/ssrm/settings/BatteryState;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
