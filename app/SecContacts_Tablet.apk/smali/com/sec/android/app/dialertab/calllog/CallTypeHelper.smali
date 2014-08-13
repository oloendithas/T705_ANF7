.class public Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;
.super Ljava/lang/Object;
.source "CallTypeHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CallTypeHelper"


# instance fields
.field private final mAutoRejectedCallName:Ljava/lang/CharSequence;

.field private final mDialledVoiecCallName:Ljava/lang/CharSequence;

.field private final mIncomingName:Ljava/lang/CharSequence;

.field private final mMissedCallName:Ljava/lang/CharSequence;

.field private final mMissedName:Ljava/lang/CharSequence;

.field private final mNewMissedColor:I

.field private final mNewVoicemailColor:I

.field private final mOutgoingName:Ljava/lang/CharSequence;

.field private final mReceivedInternetCallName:Ljava/lang/CharSequence;

.field private final mReceivedMessageName:Ljava/lang/CharSequence;

.field private final mReceivedMmsMessageName:Ljava/lang/CharSequence;

.field private final mReceivedVideoCallName:Ljava/lang/CharSequence;

.field private final mReceivedVoiecCallName:Ljava/lang/CharSequence;

.field private final mSentInternetCallName:Ljava/lang/CharSequence;

.field private final mSentMessageName:Ljava/lang/CharSequence;

.field private final mSentMmsMessageName:Ljava/lang/CharSequence;

.field private final mSentVideoCallName:Ljava/lang/CharSequence;

.field private final mVoicemailMessageName:Ljava/lang/CharSequence;

.field private final mVoicemailName:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const v0, 0x7f0e00b1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mIncomingName:Ljava/lang/CharSequence;

    .line 63
    const v0, 0x7f0e00b2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mOutgoingName:Ljava/lang/CharSequence;

    .line 64
    const v0, 0x7f0e00b3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mMissedName:Ljava/lang/CharSequence;

    .line 65
    const v0, 0x7f0e00b4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mVoicemailName:Ljava/lang/CharSequence;

    .line 66
    const v0, 0x7f0b0018

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mNewMissedColor:I

    .line 67
    const v0, 0x7f0b0019

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mNewVoicemailColor:I

    .line 69
    const v0, 0x7f0e032d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mReceivedVoiecCallName:Ljava/lang/CharSequence;

    .line 70
    const v0, 0x7f0e032e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mDialledVoiecCallName:Ljava/lang/CharSequence;

    .line 72
    const v0, 0x7f0e032f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mReceivedVideoCallName:Ljava/lang/CharSequence;

    .line 73
    const v0, 0x7f0e0330

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mSentVideoCallName:Ljava/lang/CharSequence;

    .line 75
    const v0, 0x7f0e0331

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mReceivedInternetCallName:Ljava/lang/CharSequence;

    .line 76
    const v0, 0x7f0e0332

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mSentInternetCallName:Ljava/lang/CharSequence;

    .line 78
    const v0, 0x7f0e0333

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mMissedCallName:Ljava/lang/CharSequence;

    .line 79
    const v0, 0x7f0e0334

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mAutoRejectedCallName:Ljava/lang/CharSequence;

    .line 81
    const v0, 0x7f0e0335

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mReceivedMessageName:Ljava/lang/CharSequence;

    .line 82
    const v0, 0x7f0e0336

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mSentMessageName:Ljava/lang/CharSequence;

    .line 84
    const v0, 0x7f0e0337

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mReceivedMmsMessageName:Ljava/lang/CharSequence;

    .line 85
    const v0, 0x7f0e0338

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mSentMmsMessageName:Ljava/lang/CharSequence;

    .line 87
    const v0, 0x7f0e0339

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mVoicemailMessageName:Ljava/lang/CharSequence;

    .line 89
    return-void
.end method


# virtual methods
.method public getCallTypeText(I)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "callType"    # I

    .prologue
    .line 93
    sparse-switch p1, :sswitch_data_0

    .line 119
    const-string v0, "CallTypeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid call type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mOutgoingName:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    .line 97
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mIncomingName:Ljava/lang/CharSequence;

    goto :goto_0

    .line 103
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mOutgoingName:Ljava/lang/CharSequence;

    goto :goto_0

    .line 107
    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mMissedName:Ljava/lang/CharSequence;

    goto :goto_0

    .line 110
    :sswitch_3
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mVoicemailName:Ljava/lang/CharSequence;

    goto :goto_0

    .line 113
    :sswitch_4
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mVoicemailName:Ljava/lang/CharSequence;

    goto :goto_0

    .line 116
    :sswitch_5
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mVoicemailName:Ljava/lang/CharSequence;

    goto :goto_0

    .line 93
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0xb -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_0
        0xe -> :sswitch_2
        0xf -> :sswitch_0
        0x32 -> :sswitch_1
    .end sparse-switch
.end method

.method public getCallTypeTextForTalkback(II)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "callType"    # I
    .param p2, "logType"    # I

    .prologue
    .line 126
    sparse-switch p1, :sswitch_data_0

    .line 178
    const-string v0, "CallTypeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid call type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mDialledVoiecCallName:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    .line 129
    :sswitch_0
    sparse-switch p2, :sswitch_data_1

    .line 148
    :sswitch_1
    sparse-switch p2, :sswitch_data_2

    .line 165
    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mMissedCallName:Ljava/lang/CharSequence;

    goto :goto_0

    .line 132
    :sswitch_3
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mReceivedVoiecCallName:Ljava/lang/CharSequence;

    goto :goto_0

    .line 134
    :sswitch_4
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mReceivedVideoCallName:Ljava/lang/CharSequence;

    goto :goto_0

    .line 136
    :sswitch_5
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mReceivedInternetCallName:Ljava/lang/CharSequence;

    goto :goto_0

    .line 138
    :sswitch_6
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mReceivedMessageName:Ljava/lang/CharSequence;

    goto :goto_0

    .line 140
    :sswitch_7
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mReceivedMmsMessageName:Ljava/lang/CharSequence;

    goto :goto_0

    .line 151
    :sswitch_8
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mDialledVoiecCallName:Ljava/lang/CharSequence;

    goto :goto_0

    .line 153
    :sswitch_9
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mSentVideoCallName:Ljava/lang/CharSequence;

    goto :goto_0

    .line 155
    :sswitch_a
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mSentInternetCallName:Ljava/lang/CharSequence;

    goto :goto_0

    .line 157
    :sswitch_b
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mSentMessageName:Ljava/lang/CharSequence;

    goto :goto_0

    .line 159
    :sswitch_c
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mSentMmsMessageName:Ljava/lang/CharSequence;

    goto :goto_0

    .line 168
    :sswitch_d
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mVoicemailMessageName:Ljava/lang/CharSequence;

    goto :goto_0

    .line 172
    :sswitch_e
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mVoicemailName:Ljava/lang/CharSequence;

    goto :goto_0

    .line 175
    :sswitch_f
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mAutoRejectedCallName:Ljava/lang/CharSequence;

    goto :goto_0

    .line 126
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_d
        0x5 -> :sswitch_e
        0x6 -> :sswitch_f
        0xb -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_0
        0xe -> :sswitch_2
        0xf -> :sswitch_e
        0x32 -> :sswitch_1
    .end sparse-switch

    .line 129
    :sswitch_data_1
    .sparse-switch
        0x64 -> :sswitch_3
        0xc8 -> :sswitch_7
        0x12c -> :sswitch_6
        0x1f4 -> :sswitch_4
        0x320 -> :sswitch_5
        0x3e8 -> :sswitch_3
    .end sparse-switch

    .line 148
    :sswitch_data_2
    .sparse-switch
        0x64 -> :sswitch_8
        0xc8 -> :sswitch_c
        0x12c -> :sswitch_b
        0x1f4 -> :sswitch_9
        0x320 -> :sswitch_a
        0x3e8 -> :sswitch_8
    .end sparse-switch
.end method

.method public getHighlightedColor(I)Ljava/lang/Integer;
    .locals 4
    .param p1, "callType"    # I

    .prologue
    const/4 v0, 0x0

    .line 185
    sparse-switch p1, :sswitch_data_0

    .line 213
    const-string v1, "CallTypeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid call type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :goto_0
    :sswitch_0
    return-object v0

    .line 201
    :sswitch_1
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mNewMissedColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 204
    :sswitch_2
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mNewVoicemailColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 207
    :sswitch_3
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mNewVoicemailColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 210
    :sswitch_4
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mNewVoicemailColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 185
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_1
        0xf -> :sswitch_0
        0x32 -> :sswitch_0
    .end sparse-switch
.end method
