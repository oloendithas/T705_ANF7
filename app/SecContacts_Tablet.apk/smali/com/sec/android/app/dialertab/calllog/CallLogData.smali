.class public Lcom/sec/android/app/dialertab/calllog/CallLogData;
.super Ljava/lang/Object;
.source "CallLogData.java"


# static fields
.field public static final BLOCKED_TYPE:I = 0x4

.field public static final INCOMING_TYPE:I = 0x1

.field public static final MISSED_TYPE:I = 0x3

.field public static final OUTGOING_TYPE:I = 0x2

.field public static final RECIEVE_MMS_TYPE:I = 0xf

.field public static final RECIEVE_SMS_TYPE:I = 0xd

.field public static final RECIEVE_VIMS_TYPE:I = 0x13

.field public static final RECIEVE_VOMS_TYPE:I = 0x11

.field public static final SEND_MMS_TYPE:I = 0x10

.field public static final SEND_SMS_TYPE:I = 0xe

.field public static final SEND_VIMS_TYPE:I = 0x14

.field public static final SEND_VOMS_TYPE:I = 0x12

.field public static final SPAM_MSG_TYPE:I = 0x15

.field private static final TAG:Ljava/lang/String; = "CallLogData"


# instance fields
.field private CALL_TYPE:[Ljava/lang/String;

.field private final CONTENT_URI_CALL_LOG:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "content://logs/addcall"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogData;->CONTENT_URI_CALL_LOG:Landroid/net/Uri;

    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Incoming Call"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Outgoing Call"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Missed Call"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogData;->CALL_TYPE:[Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogData;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method


# virtual methods
.method public clearCallog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 72
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 73
    .local v0, "uri":Landroid/net/Uri;
    const-string v1, "_id!=null"

    .line 74
    .local v1, "where":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogData;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 75
    const-string v1, "_id==null"

    .line 76
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogData;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 77
    return-void
.end method

.method public getCallLogTypeString(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogData;->CALL_TYPE:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getCount()I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 48
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogData;->CONTENT_URI_CALL_LOG:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 50
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 51
    .local v6, "callCount":I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 52
    const-string v0, "CallLogData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return v6
.end method

.method public getCount(I)I
    .locals 9
    .param p1, "type"    # I

    .prologue
    const/4 v4, 0x0

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, "where":Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogData;->CONTENT_URI_CALL_LOG:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "type"

    aput-object v8, v2, v5

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 61
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 62
    .local v6, "callCount":I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 63
    const-string v0, "CallLogData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count(type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return v6
.end method

.method public insert(Ljava/lang/String;IIJ)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "duration"    # I
    .param p4, "time"    # J

    .prologue
    .line 37
    const-string v1, "CallLogData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert - number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 40
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "number"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v1, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 42
    const-string v1, "duration"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 43
    const-string v1, "date"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 44
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogData;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogData;->CONTENT_URI_CALL_LOG:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 45
    return-void
.end method
