.class public Lcom/sec/android/app/contacts/group/AutoGroupingQueryHelper;
.super Ljava/lang/Object;
.source "AutoGroupingQueryHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/group/AutoGroupingQueryHelper$VideoCallGroup;,
        Lcom/sec/android/app/contacts/group/AutoGroupingQueryHelper$VideoCallGroupCount;,
        Lcom/sec/android/app/contacts/group/AutoGroupingQueryHelper$GroupType;
    }
.end annotation


# static fields
.field public static final AUTO_GROUP_CONTENTS_URI:Landroid/net/Uri;

.field public static final HAS_EMAIL:Ljava/lang/String; = "has_email"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "data"

    const-string v2, "data_groupby"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/group/AutoGroupingQueryHelper;->AUTO_GROUP_CONTENTS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method


# virtual methods
.method public getGroupCountcursor(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 10
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 116
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_1

    .line 117
    :cond_0
    const/4 v7, 0x0

    .line 141
    :goto_0
    return-object v7

    .line 120
    :cond_1
    const/4 v6, 0x0

    .line 121
    .local v6, "contents":Ljava/lang/String;
    const/4 v5, 0x0

    .line 122
    .local v5, "groupingTarget":Ljava/lang/String;
    const/4 v2, 0x0

    .line 123
    .local v2, "projection":[Ljava/lang/String;
    sget-object v1, Lcom/sec/android/app/contacts/group/AutoGroupingQueryHelper;->AUTO_GROUP_CONTENTS_URI:Landroid/net/Uri;

    .line 124
    .local v1, "uri":Landroid/net/Uri;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 125
    .local v8, "selection":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 127
    .local v4, "selectionArg":[Ljava/lang/String;
    const-string v6, "vnd.android.cursor.item/phone_v2"

    .line 128
    const-string v5, "data5"

    .line 129
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "countlist"

    const-string v9, ""

    invoke-virtual {v0, v3, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 130
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "groupby"

    invoke-virtual {v0, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 131
    sget-object v2, Lcom/sec/android/app/contacts/group/AutoGroupingQueryHelper$VideoCallGroupCount;->PROJECTION_VIDEOCALL_GROUPCNT:[Ljava/lang/String;

    .line 132
    const-string v0, "mimetype"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    const-string v0, " = ? AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    const-string v0, " data5 = 3 "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .end local v4    # "selectionArg":[Ljava/lang/String;
    const/4 v0, 0x0

    aput-object v6, v4, v0

    .line 139
    .restart local v4    # "selectionArg":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 141
    .local v7, "cursor":Landroid/database/Cursor;
    goto :goto_0
.end method
