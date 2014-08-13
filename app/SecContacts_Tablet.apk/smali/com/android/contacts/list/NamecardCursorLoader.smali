.class public Lcom/android/contacts/list/NamecardCursorLoader;
.super Landroid/content/CursorLoader;
.source "NamecardCursorLoader.java"


# instance fields
.field private mOrder:Ljava/lang/String;

.field private mProjection:[Ljava/lang/String;

.field private mSelection:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "order"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object p2, p0, Lcom/android/contacts/list/NamecardCursorLoader;->mUri:Landroid/net/Uri;

    .line 37
    iput-object p3, p0, Lcom/android/contacts/list/NamecardCursorLoader;->mProjection:[Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/android/contacts/list/NamecardCursorLoader;->mSelection:Ljava/lang/String;

    .line 39
    packed-switch p5, :pswitch_data_0

    .line 50
    const-string v0, "_id DESC"

    iput-object v0, p0, Lcom/android/contacts/list/NamecardCursorLoader;->mOrder:Ljava/lang/String;

    .line 53
    :goto_0
    return-void

    .line 41
    :pswitch_0
    const-string v0, "_id ASC"

    iput-object v0, p0, Lcom/android/contacts/list/NamecardCursorLoader;->mOrder:Ljava/lang/String;

    goto :goto_0

    .line 44
    :pswitch_1
    const-string v0, "sort_key"

    iput-object v0, p0, Lcom/android/contacts/list/NamecardCursorLoader;->mOrder:Ljava/lang/String;

    goto :goto_0

    .line 47
    :pswitch_2
    const-string v0, "CASE WHEN data1 IS NULL THEN 1 ELSE 0 END, data1"

    iput-object v0, p0, Lcom/android/contacts/list/NamecardCursorLoader;->mOrder:Ljava/lang/String;

    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 7

    .prologue
    .line 58
    invoke-virtual {p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/NamecardCursorLoader;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/list/NamecardCursorLoader;->mProjection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/list/NamecardCursorLoader;->mSelection:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/contacts/list/NamecardCursorLoader;->mOrder:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 59
    .local v6, "cursor":Landroid/database/Cursor;
    return-object v6
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/android/contacts/list/NamecardCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
