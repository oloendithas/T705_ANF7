.class public abstract Lcom/sec/android/app/dialertab/calllog/IntentProvider;
.super Ljava/lang/Object;
.source "IntentProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IntentProvider"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallDetailIntentProvider(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;IJILjava/lang/String;)Lcom/sec/android/app/dialertab/calllog/IntentProvider;
    .locals 1
    .param p0, "adapter"    # Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
    .param p1, "position"    # I
    .param p2, "id"    # J
    .param p4, "groupSize"    # I
    .param p5, "number"    # Ljava/lang/String;

    .prologue
    .line 297
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$9;

    invoke-direct {v0, p0, p1, p5, p4}, Lcom/sec/android/app/dialertab/calllog/IntentProvider$9;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;ILjava/lang/String;I)V

    return-object v0
.end method

.method public static getPlayVoicemailIntentProvider(JLjava/lang/String;)Lcom/sec/android/app/dialertab/calllog/IntentProvider;
    .locals 1
    .param p0, "rowId"    # J
    .param p2, "voicemailUri"    # Ljava/lang/String;

    .prologue
    .line 198
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/dialertab/calllog/IntentProvider$7;-><init>(JLjava/lang/String;)V

    return-object v0
.end method

.method public static getReturnCallIntentProvider(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/IntentProvider;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 50
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/IntentProvider$1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getReturnCallIntentProvider(Ljava/lang/String;I)Lcom/sec/android/app/dialertab/calllog/IntentProvider;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "logType"    # I

    .prologue
    .line 83
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/IntentProvider$2;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getReturnCallIntentProviderLGT(Ljava/lang/String;I)Lcom/sec/android/app/dialertab/calllog/IntentProvider;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "CallType"    # I

    .prologue
    .line 123
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$4;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/dialertab/calllog/IntentProvider$4;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static getReturnCallIntentProviderLGT(Ljava/lang/String;II)Lcom/sec/android/app/dialertab/calllog/IntentProvider;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "CallType"    # I
    .param p2, "logType"    # I

    .prologue
    .line 152
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$5;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/dialertab/calllog/IntentProvider$5;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static getReturnMessageIntentProvider(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/IntentProvider;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 186
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/IntentProvider$6;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getReturnVoicemailVZWIntentProvider(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/IntentProvider;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 111
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$3;

    invoke-direct {v0, p1}, Lcom/sec/android/app/dialertab/calllog/IntentProvider$3;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getVIPCallDetailIntentProvider(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;IJILjava/lang/String;)Lcom/sec/android/app/dialertab/calllog/IntentProvider;
    .locals 1
    .param p0, "adapter"    # Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
    .param p1, "position"    # I
    .param p2, "id"    # J
    .param p4, "groupSize"    # I
    .param p5, "number"    # Ljava/lang/String;

    .prologue
    .line 217
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$8;

    invoke-direct {v0, p0, p1, p5, p4}, Lcom/sec/android/app/dialertab/calllog/IntentProvider$8;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;ILjava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public abstract getIntent(Landroid/content/Context;)Landroid/content/Intent;
.end method
