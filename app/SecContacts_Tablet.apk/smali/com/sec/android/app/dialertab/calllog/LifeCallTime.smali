.class public Lcom/sec/android/app/dialertab/calllog/LifeCallTime;
.super Ljava/lang/Object;
.source "LifeCallTime.java"


# static fields
.field static final OEM_CALL_GET_LIFETIMECALL:I = 0xa

.field static final OEM_FUNCTION_ID_CALL:I = 0xb

.field static final OEM_FUNCTION_ID_HIDDENMENU:I = 0x51

.field private static final TAG:Ljava/lang/String; = "LifeCallTime"


# instance fields
.field private convertosix_digit_format:Z

.field mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field mLifeCallTime:[B

.field private mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceMessenger:Landroid/os/Messenger;

.field private mSvcModeMessenger:Landroid/os/Messenger;

.field private mTotalCallDial:Landroid/widget/TextView;

.field private mTotalCallReceive:Landroid/widget/TextView;

.field private mTotalCallTime:Landroid/widget/TextView;

.field private mTotalCount:Landroid/widget/TextView;

.field private mTotalCountDial:Landroid/widget/TextView;

.field private mTotalCountReceive:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mTotalCall"    # Landroid/widget/TextView;
    .param p3, "mDialedTime"    # Landroid/widget/TextView;
    .param p4, "mReceivedTime"    # Landroid/widget/TextView;
    .param p5, "mTotalCnt"    # Landroid/widget/TextView;
    .param p6, "mDialedCnt"    # Landroid/widget/TextView;
    .param p7, "mReceivedCnt"    # Landroid/widget/TextView;

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mServiceMessenger:Landroid/os/Messenger;

    .line 32
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mTotalCallTime:Landroid/widget/TextView;

    .line 33
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mTotalCallDial:Landroid/widget/TextView;

    .line 34
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mTotalCallReceive:Landroid/widget/TextView;

    .line 35
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mTotalCount:Landroid/widget/TextView;

    .line 36
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mTotalCountDial:Landroid/widget/TextView;

    .line 37
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mTotalCountReceive:Landroid/widget/TextView;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->convertosix_digit_format:Z

    .line 47
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/LifeCallTime$1;-><init>(Lcom/sec/android/app/dialertab/calllog/LifeCallTime;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mHandler:Landroid/os/Handler;

    .line 123
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/LifeCallTime$2;-><init>(Lcom/sec/android/app/dialertab/calllog/LifeCallTime;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    .line 137
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mSvcModeMessenger:Landroid/os/Messenger;

    .line 85
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mContext:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mTotalCallTime:Landroid/widget/TextView;

    .line 88
    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mTotalCallDial:Landroid/widget/TextView;

    .line 89
    iput-object p4, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mTotalCallReceive:Landroid/widget/TextView;

    .line 90
    iput-object p5, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mTotalCount:Landroid/widget/TextView;

    .line 91
    iput-object p6, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mTotalCountDial:Landroid/widget/TextView;

    .line 92
    iput-object p7, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mTotalCountReceive:Landroid/widget/TextView;

    .line 94
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->connectToRilService()V

    .line 104
    return-void
.end method

.method private CoverttoSixDig(I)Ljava/lang/String;
    .locals 5
    .param p1, "value"    # I

    .prologue
    .line 286
    const v3, 0xf4240

    add-int/2addr v3, p1

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 287
    .local v0, "LongValue":Ljava/lang/Long;
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 288
    .local v1, "string":Ljava/lang/String;
    const/4 v2, 0x0

    .line 290
    .local v2, "subString":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 291
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 293
    :cond_0
    return-object v2
.end method

.method static synthetic access$000(Lcom/sec/android/app/dialertab/calllog/LifeCallTime;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/LifeCallTime;
    .param p1, "x1"    # [B

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->setLifeTimerCall([B)V

    return-void
.end method

.method static synthetic access$102(Lcom/sec/android/app/dialertab/calllog/LifeCallTime;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/LifeCallTime;
    .param p1, "x1"    # Landroid/os/Messenger;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mServiceMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/dialertab/calllog/LifeCallTime;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/LifeCallTime;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->getOemData(II)V

    return-void
.end method

.method private static byteArrayToInt([BI)I
    .locals 3
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 297
    const/4 v0, 0x0

    .line 298
    .local v0, "result":I
    add-int/lit8 v1, p1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    .line 299
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 300
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 301
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 302
    return v0
.end method

.method private connectToRilService()V
    .locals 4

    .prologue
    .line 108
    const-string v1, "LifeCallTime"

    const-string v2, "connect To Secphone service"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 110
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.phone"

    const-string v2, "com.sec.phone.SecPhoneService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 112
    return-void
.end method

.method private disConnectToRilService()V
    .locals 2

    .prologue
    .line 116
    const-string v0, "LifeCallTime"

    const-string v1, "disConnectToRilService To Secphone service"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 118
    const-string v0, "LifeCallTime"

    const-string v1, "disConnected"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 121
    :cond_0
    return-void
.end method

.method private formatDuration(J)Ljava/lang/String;
    .locals 9
    .param p1, "elapsedSeconds"    # J

    .prologue
    .line 230
    const-wide/16 v1, 0x0

    .line 231
    .local v1, "hours":J
    const-wide/16 v3, 0x0

    .line 232
    .local v3, "minutes":J
    const-wide/16 v5, 0x0

    .line 234
    .local v5, "seconds":J
    const-wide/16 v7, 0xe10

    cmp-long v7, p1, v7

    if-ltz v7, :cond_0

    .line 235
    const-wide/16 v7, 0xe10

    div-long v1, p1, v7

    .line 236
    const-wide/16 v7, 0xe10

    mul-long/2addr v7, v1

    sub-long/2addr p1, v7

    .line 238
    :cond_0
    const-wide/16 v7, 0x3c

    cmp-long v7, p1, v7

    if-ltz v7, :cond_1

    .line 239
    const-wide/16 v7, 0x3c

    div-long v3, p1, v7

    .line 240
    const-wide/16 v7, 0x3c

    mul-long/2addr v7, v3

    sub-long/2addr p1, v7

    .line 242
    :cond_1
    move-wide v5, p1

    .line 244
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 245
    .local v0, "duration":Ljava/lang/StringBuffer;
    const-wide/16 v7, 0xa

    cmp-long v7, v1, v7

    if-gez v7, :cond_2

    .line 246
    const/16 v7, 0x30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 248
    :cond_2
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 249
    const/16 v7, 0x3a

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 251
    const-wide/16 v7, 0xa

    cmp-long v7, v3, v7

    if-gez v7, :cond_3

    .line 252
    const/16 v7, 0x30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 254
    :cond_3
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 255
    const/16 v7, 0x3a

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 257
    const-wide/16 v7, 0xa

    cmp-long v7, v5, v7

    if-gez v7, :cond_4

    .line 258
    const/16 v7, 0x30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 260
    :cond_4
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 262
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private getOemData(I)V
    .locals 1
    .param p1, "oemid"    # I

    .prologue
    .line 156
    const/16 v0, 0x51

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->getOemData(II)V

    .line 157
    return-void
.end method

.method private getOemData(II)V
    .locals 7
    .param p1, "mainOemid"    # I
    .param p2, "subOemid"    # I

    .prologue
    .line 160
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 161
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 163
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/4 v3, 0x3

    .line 164
    .local v3, "fileSize":I
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 165
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 166
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 169
    invoke-virtual {v1}, Ljava/io/FilterOutputStream;->close()V

    .line 170
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    const-string v4, "LifeCallTime"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getOemData with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 178
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v2

    .line 172
    .local v2, "e":Ljava/io/IOException;
    const-string v4, "LifeCallTime"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getOemData(int, int).. exception occured during operation"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 140
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 141
    .local v0, "req":Landroid/os/Bundle;
    const-string v1, "request"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 143
    invoke-virtual {p2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 144
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mSvcModeMessenger:Landroid/os/Messenger;

    iput-object v1, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 153
    :goto_0
    return-void

    .line 150
    :cond_0
    const-string v1, "LifeCallTime"

    const-string v2, "mServiceMessenger is null. Do nothing."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setLifeTimerCall([B)V
    .locals 9
    .param p1, "data"    # [B

    .prologue
    const/4 v4, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 181
    const/4 v1, 0x7

    new-array v0, v1, [I

    .line 183
    .local v0, "mTotalLifeCallTime":[I
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mLifeCallTime:[B

    .line 185
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mLifeCallTime:[B

    invoke-static {v1, v5}, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->byteArrayToInt([BI)I

    move-result v1

    aput v1, v0, v5

    .line 186
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mLifeCallTime:[B

    invoke-static {v1, v6}, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->byteArrayToInt([BI)I

    move-result v1

    aput v1, v0, v7

    .line 187
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mLifeCallTime:[B

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->byteArrayToInt([BI)I

    move-result v1

    aput v1, v0, v8

    .line 188
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mLifeCallTime:[B

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->byteArrayToInt([BI)I

    move-result v1

    aput v1, v0, v4

    .line 189
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mLifeCallTime:[B

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->byteArrayToInt([BI)I

    move-result v1

    aput v1, v0, v6

    .line 190
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mLifeCallTime:[B

    const/16 v3, 0x14

    invoke-static {v2, v3}, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->byteArrayToInt([BI)I

    move-result v2

    aput v2, v0, v1

    .line 191
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mLifeCallTime:[B

    const/16 v3, 0x18

    invoke-static {v2, v3}, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->byteArrayToInt([BI)I

    move-result v2

    aput v2, v0, v1

    .line 193
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mTotalCallTime:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mTotalCallTime:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    int-to-long v3, v3

    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mTotalCallDial:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mTotalCallDial:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v6

    int-to-long v3, v3

    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mTotalCallReceive:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mTotalCallReceive:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    aget v3, v0, v3

    int-to-long v3, v3

    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mTotalCount:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mTotalCount:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mTotalCountDial:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mTotalCountDial:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mTotalCountReceive:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mTotalCountReceive:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->disConnectToRilService()V

    .line 227
    return-void
.end method


# virtual methods
.method public getLifeTimerCall()[I
    .locals 7

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x4

    const/4 v3, 0x0

    .line 267
    new-array v1, v6, [I

    .line 269
    .local v1, "mTotalLifeCallTime":[I
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mLifeCallTime:[B

    invoke-static {v2, v3}, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->byteArrayToInt([BI)I

    move-result v2

    aput v2, v1, v3

    .line 270
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mLifeCallTime:[B

    invoke-static {v3, v5}, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->byteArrayToInt([BI)I

    move-result v3

    aput v3, v1, v2

    .line 271
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mLifeCallTime:[B

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->byteArrayToInt([BI)I

    move-result v3

    aput v3, v1, v2

    .line 272
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mLifeCallTime:[B

    const/16 v4, 0xc

    invoke-static {v3, v4}, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->byteArrayToInt([BI)I

    move-result v3

    aput v3, v1, v2

    .line 273
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mLifeCallTime:[B

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->byteArrayToInt([BI)I

    move-result v2

    aput v2, v1, v5

    .line 274
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mLifeCallTime:[B

    const/16 v4, 0x14

    invoke-static {v3, v4}, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->byteArrayToInt([BI)I

    move-result v3

    aput v3, v1, v2

    .line 275
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mLifeCallTime:[B

    const/16 v4, 0x18

    invoke-static {v3, v4}, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->byteArrayToInt([BI)I

    move-result v3

    aput v3, v1, v2

    .line 277
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 278
    const-string v2, "LifeCallTime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    :cond_0
    return-object v1
.end method
