.class public Lcom/sec/android/app/camera/CeStatePreviewing;
.super Lcom/sec/android/app/camera/AbstractCeState;
.source "CeStatePreviewing.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CeStatePreviewing"


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/CommonEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V
    .locals 0
    .param p1, "commonEngine"    # Lcom/sec/android/app/camera/CommonEngine;
    .param p2, "requestQueue"    # Lcom/sec/android/app/camera/CeRequestQueue;
    .param p3, "id"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/AbstractCeState;-><init>(Lcom/sec/android/app/camera/CommonEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    .line 32
    return-void
.end method


# virtual methods
.method public cancelRequest(Lcom/sec/android/app/camera/CeRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/sec/android/app/camera/CeRequest;

    .prologue
    .line 36
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 214
    const-string v0, "CeStatePreviewing"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HandleMessage - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 218
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->autoFocusCompleted()V

    .line 219
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 225
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->imageStoringCompleted()V

    goto :goto_0

    .line 228
    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 231
    :sswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 234
    :sswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 237
    :sswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 241
    :sswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 244
    :sswitch_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 249
    :sswitch_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 252
    :sswitch_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 215
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_2
        0x8 -> :sswitch_5
        0x9 -> :sswitch_6
        0xa -> :sswitch_a
        0xb -> :sswitch_7
        0xc -> :sswitch_7
        0xd -> :sswitch_8
        0x65 -> :sswitch_9
    .end sparse-switch
.end method

.method public handleRequest(Lcom/sec/android/app/camera/CeRequest;)Z
    .locals 4
    .param p1, "request"    # Lcom/sec/android/app/camera/CeRequest;

    .prologue
    const/4 v1, 0x1

    .line 39
    const-string v0, "CeStatePreviewing"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HandleRequest - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 207
    :pswitch_0
    const-string v0, "CeStatePreviewing"

    const-string v1, "invalid request id for current state"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    .line 210
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 42
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStopPreviewDummySync()V

    .line 43
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 44
    goto :goto_0

    .line 46
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStopPreviewSync()V

    .line 47
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 48
    goto :goto_0

    .line 50
    :pswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doSwitchToCamcorderPreviewSync()V

    move v0, v1

    .line 51
    goto :goto_0

    .line 53
    :pswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doSwitchToCameraPreviewSync()V

    move v0, v1

    .line 54
    goto :goto_0

    .line 56
    :pswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStopPreviewSync()V

    .line 57
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStopEngineSync()V

    .line 58
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 59
    goto :goto_0

    .line 61
    :pswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doAutoFocusAsync()V

    move v0, v1

    .line 62
    goto :goto_0

    .line 64
    :pswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CommonEngine;->doSetParameterSync(Ljava/lang/Object;)V

    .line 65
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 66
    goto :goto_0

    .line 68
    :pswitch_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CommonEngine;->doChangeParameterSync(Ljava/lang/Object;)V

    .line 69
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 70
    goto :goto_0

    .line 72
    :pswitch_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CommonEngine;->doSetMultipleParametersSync(Ljava/lang/Object;)V

    .line 73
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 74
    goto/16 :goto_0

    .line 76
    :pswitch_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CommonEngine;->doShutterTimerAsync(I)V

    move v0, v1

    .line 77
    goto/16 :goto_0

    .line 79
    :pswitch_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doSetAllParamsSync()V

    .line 80
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 81
    goto/16 :goto_0

    .line 83
    :pswitch_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStartSmileDetectionAsync()V

    move v0, v1

    .line 84
    goto/16 :goto_0

    .line 86
    :pswitch_d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStopSmileDetectionSync()V

    .line 87
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 88
    goto/16 :goto_0

    .line 90
    :pswitch_e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CommonEngine;->doWaitAsync(I)V

    move v0, v1

    .line 91
    goto/16 :goto_0

    .line 93
    :pswitch_f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStartBurstAsync()V

    move v0, v1

    .line 94
    goto/16 :goto_0

    .line 96
    :pswitch_10
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStopBurstSync()V

    move v0, v1

    .line 97
    goto/16 :goto_0

    .line 99
    :pswitch_11
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStartPanoramaAsync()V

    move v0, v1

    .line 100
    goto/16 :goto_0

    .line 102
    :pswitch_12
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStopPanoramaSync()V

    .line 103
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 104
    goto/16 :goto_0

    .line 106
    :pswitch_13
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStartActionShotSync()V

    .line 107
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 108
    goto/16 :goto_0

    .line 110
    :pswitch_14
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStopActionShotSync()V

    .line 111
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 112
    goto/16 :goto_0

    .line 114
    :pswitch_15
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doProcessBackSync()V

    .line 115
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 116
    goto/16 :goto_0

    .line 118
    :pswitch_16
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CommonEngine;->doSetOnShutterSound(I)V

    .line 119
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 120
    goto/16 :goto_0

    .line 122
    :pswitch_17
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStartDramaShotSync()V

    .line 123
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 124
    goto/16 :goto_0

    .line 126
    :pswitch_18
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStopDramaShotSync()V

    .line 127
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 128
    goto/16 :goto_0

    .line 130
    :pswitch_19
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStartMagicShotSync()V

    .line 131
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 132
    goto/16 :goto_0

    .line 134
    :pswitch_1a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStopMagicShotSync()V

    .line 135
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 136
    goto/16 :goto_0

    .line 139
    :pswitch_1b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doPrepareVideoRecordingAsync()V

    move v0, v1

    .line 140
    goto/16 :goto_0

    .line 142
    :pswitch_1c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStartVideoRecordingAsync()V

    .line 143
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CommonEngine;->changeEngineState(I)V

    move v0, v1

    .line 144
    goto/16 :goto_0

    .line 146
    :pswitch_1d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStopVideoRecordingSync()V

    move v0, v1

    .line 149
    goto/16 :goto_0

    .line 151
    :pswitch_1e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doCancelVideoRecordingSync()V

    .line 152
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CommonEngine;->changeEngineState(I)V

    .line 153
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 154
    goto/16 :goto_0

    .line 156
    :pswitch_1f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doSetSingleEffect()V

    .line 157
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 158
    goto/16 :goto_0

    .line 160
    :pswitch_20
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doCamcorderRecordingStartSound()V

    .line 161
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 162
    goto/16 :goto_0

    .line 164
    :pswitch_21
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doCamcorderRecordingStopSound()V

    .line 165
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 166
    goto/16 :goto_0

    .line 168
    :pswitch_22
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStartDualCameraSync()V

    .line 169
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 170
    goto/16 :goto_0

    .line 172
    :pswitch_23
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStartDualPreviewSync()V

    .line 173
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 174
    goto/16 :goto_0

    .line 176
    :pswitch_24
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStartRecordDualPreviewSync()V

    .line 177
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 178
    goto/16 :goto_0

    .line 180
    :pswitch_25
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doSetTrackingVisibleSync()V

    .line 181
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 182
    goto/16 :goto_0

    .line 184
    :pswitch_26
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CommonEngine;->doSetEffectOrientationSync(I)V

    .line 185
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 186
    goto/16 :goto_0

    .line 188
    :pswitch_27
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CommonEngine;->doSetSingleEffectSync(Ljava/lang/Object;)V

    .line 189
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 190
    goto/16 :goto_0

    .line 192
    :pswitch_28
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CommonEngine;->doSetDualCaptureModeSync(I)V

    .line 193
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 194
    goto/16 :goto_0

    .line 196
    :pswitch_29
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doHideCoverCameraAsync()V

    move v0, v1

    .line 197
    goto/16 :goto_0

    .line 199
    :pswitch_2a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doSetExternalShootingModesSync()V

    .line 200
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 201
    goto/16 :goto_0

    .line 203
    :pswitch_2b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CommonEngine;->doSetFaceRetouchLevelSync(I)V

    .line 204
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 205
    goto/16 :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1f
        :pswitch_0
        :pswitch_22
        :pswitch_0
        :pswitch_0
        :pswitch_20
        :pswitch_21
        :pswitch_0
        :pswitch_23
        :pswitch_24
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_26
        :pswitch_0
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_25
        :pswitch_19
        :pswitch_1a
        :pswitch_2a
        :pswitch_2b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1b
        :pswitch_1c
        :pswitch_0
        :pswitch_0
        :pswitch_1d
        :pswitch_1e
    .end packed-switch
.end method
