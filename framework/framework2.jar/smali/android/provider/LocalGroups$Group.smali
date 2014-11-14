.class public Landroid/provider/LocalGroups$Group;
.super Ljava/lang/Object;
.source "LocalGroups.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/LocalGroups;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Group"
.end annotation


# instance fields
.field private count:I

.field private id:J

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/provider/LocalGroups$Group;->id:J

    .line 62
    const-string v0, ""

    iput-object v0, p0, Landroid/provider/LocalGroups$Group;->title:Ljava/lang/String;

    return-void
.end method

.method public static restoreGroup(Landroid/database/Cursor;)Landroid/provider/LocalGroups$Group;
    .registers 4
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 91
    if-nez p0, :cond_a

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_a

    .line 92
    const/4 v0, 0x0

    .line 98
    :goto_9
    return-object v0

    .line 94
    :cond_a
    new-instance v0, Landroid/provider/LocalGroups$Group;

    invoke-direct {v0}, Landroid/provider/LocalGroups$Group;-><init>()V

    .line 95
    .local v0, "group":Landroid/provider/LocalGroups$Group;
    const-string v1, "_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/provider/LocalGroups$Group;->setId(J)V

    .line 96
    const-string/jumbo v1, "title"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/provider/LocalGroups$Group;->setTitle(Ljava/lang/String;)V

    .line 97
    const-string v1, "count"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/provider/LocalGroups$Group;->setCount(I)V

    goto :goto_9
.end method

.method public static restoreGroupById(Landroid/content/ContentResolver;J)Landroid/provider/LocalGroups$Group;
    .registers 11
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "groupId"    # J

    .prologue
    const/4 v7, 0x0

    .line 141
    sget-object v0, Landroid/provider/LocalGroups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 142
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 144
    .local v6, "c":Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :try_start_d
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 145
    if-eqz v6, :cond_2a

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 146
    invoke-static {v6}, Landroid/provider/LocalGroups$Group;->restoreGroup(Landroid/database/Cursor;)Landroid/provider/LocalGroups$Group;
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_23

    move-result-object v0

    .line 148
    if-eqz v6, :cond_22

    .line 149
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 151
    :cond_22
    :goto_22
    return-object v0

    .line 148
    :catchall_23
    move-exception v0

    if-eqz v6, :cond_29

    .line 149
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 148
    :cond_29
    throw v0

    :cond_2a
    if-eqz v6, :cond_2f

    .line 149
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2f
    move-object v0, v7

    .line 151
    goto :goto_22
.end method


# virtual methods
.method public delete(Landroid/content/ContentResolver;)Z
    .registers 9
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 131
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "mimetype=? and data1=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "vnd.android.cursor.item/local-groups"

    aput-object v5, v4, v1

    invoke-virtual {p0}, Landroid/provider/LocalGroups$Group;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 135
    sget-object v2, Landroid/provider/LocalGroups;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    new-array v4, v0, [Ljava/lang/String;

    iget-wide v5, p0, Landroid/provider/LocalGroups$Group;->id:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_31

    :goto_30
    return v0

    :cond_31
    move v0, v1

    goto :goto_30
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 83
    iget v0, p0, Landroid/provider/LocalGroups$Group;->count:I

    return v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 67
    iget-wide v0, p0, Landroid/provider/LocalGroups$Group;->id:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Landroid/provider/LocalGroups$Group;->title:Ljava/lang/String;

    return-object v0
.end method

.method public save(Landroid/content/ContentResolver;)Z
    .registers 6
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v1, 0x0

    .line 109
    if-nez p1, :cond_4

    .line 117
    :cond_3
    :goto_3
    return v1

    .line 112
    :cond_4
    sget-object v2, Landroid/provider/LocalGroups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/provider/LocalGroups$Group;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 113
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_3

    .line 114
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/provider/LocalGroups$Group;->setId(J)V

    .line 115
    const/4 v1, 0x1

    goto :goto_3
.end method

.method public setCount(I)V
    .registers 2
    .param p1, "count"    # I

    .prologue
    .line 87
    iput p1, p0, Landroid/provider/LocalGroups$Group;->count:I

    .line 88
    return-void
.end method

.method public setId(J)V
    .registers 3
    .param p1, "id"    # J

    .prologue
    .line 71
    iput-wide p1, p0, Landroid/provider/LocalGroups$Group;->id:J

    .line 72
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Landroid/provider/LocalGroups$Group;->title:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .registers 4

    .prologue
    .line 102
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 103
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "title"

    invoke-virtual {p0}, Landroid/provider/LocalGroups$Group;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v1, "count"

    invoke-virtual {p0}, Landroid/provider/LocalGroups$Group;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    return-object v0
.end method

.method public update(Landroid/content/ContentResolver;)Z
    .registers 10
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 122
    if-nez p1, :cond_5

    .line 125
    :goto_4
    return v1

    :cond_5
    sget-object v2, Landroid/provider/LocalGroups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/provider/LocalGroups$Group;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "_id=?"

    new-array v5, v0, [Ljava/lang/String;

    iget-wide v6, p0, Landroid/provider/LocalGroups$Group;->id:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1f

    :goto_1d
    move v1, v0

    goto :goto_4

    :cond_1f
    move v0, v1

    goto :goto_1d
.end method
