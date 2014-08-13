.class public Lcom/sec/android/app/contacts/eab/EabContactTileView;
.super Lcom/android/contacts/list/ContactTileView;
.source "EabContactTileView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mEabPresenceIcon:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/sec/android/app/contacts/eab/EabContactTileView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/eab/EabContactTileView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/list/ContactTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public static getEabPresenceIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "status"    # I

    .prologue
    .line 131
    packed-switch p1, :pswitch_data_0

    .line 141
    :pswitch_0
    sget-object v0, Lcom/sec/android/app/contacts/eab/EabContactTileView;->TAG:Ljava/lang/String;

    const-string v1, "EAB status is not on, so showing lte_not_connected icon"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0203e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    .line 137
    :pswitch_1
    sget-object v0, Lcom/sec/android/app/contacts/eab/EabContactTileView;->TAG:Ljava/lang/String;

    const-string v1, "EAB status is on, so showing the lte_connected icon"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0203e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getEabPresence(J)I
    .locals 10
    .param p1, "contactid"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 92
    const-string v8, ""

    .line 93
    .local v8, "rawcontactid":Ljava/lang/String;
    sget-object v1, Lcom/sec/android/app/contacts/eab/EabContactTileView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contactid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v6, "1"

    .line 95
    .local v6, "capability":Ljava/lang/String;
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 96
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->capabilitymap:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    .line 97
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 100
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 102
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 103
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 104
    sget-object v1, Lcom/sec/android/app/contacts/eab/EabContactTileView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bind view cursor No of rows :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 107
    if-eqz v8, :cond_3

    const-string v1, ""

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 108
    sget-object v1, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->capabilitymap:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->capabilitymap:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 109
    const-string v6, "0"

    .line 116
    :cond_1
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 120
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_2
    sget-object v1, Lcom/sec/android/app/contacts/eab/EabContactTileView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value of capability :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 114
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public loadFromContact(Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;I)V
    .locals 0
    .param p1, "entry"    # Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;
    .param p2, "viewType"    # I

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactTileView;->loadFromContact(Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;I)V

    .line 77
    return-void
.end method

.method public setEabPresence(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, -0x2

    .line 51
    if-eqz p1, :cond_2

    .line 52
    iget-object v1, p0, Lcom/sec/android/app/contacts/eab/EabContactTileView;->mEabPresenceIcon:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/eab/EabContactTileView;->mEabPresenceIcon:Landroid/widget/ImageView;

    .line 54
    const/4 v0, 0x0

    .line 56
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x15

    invoke-direct {v0, v3, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 59
    .restart local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/sec/android/app/contacts/eab/EabContactTileView;->mEabPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/eab/EabContactTileView;->mEabPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    iget-object v1, p0, Lcom/sec/android/app/contacts/eab/EabContactTileView;->mEabPresenceIcon:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 63
    iget-object v1, p0, Lcom/sec/android/app/contacts/eab/EabContactTileView;->mEabPresenceIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    :cond_1
    :goto_0
    return-void

    .line 65
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/eab/EabContactTileView;->mEabPresenceIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 66
    iget-object v1, p0, Lcom/sec/android/app/contacts/eab/EabContactTileView;->mEabPresenceIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showEabPresence(J)V
    .locals 5
    .param p1, "contactid"    # J

    .prologue
    .line 80
    sget-object v2, Lcom/sec/android/app/contacts/eab/EabContactTileView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showEabPresence -  contactid - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/eab/EabContactTileView;->getEabPresence(J)I

    move-result v1

    .line 83
    .local v1, "presence":I
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/sec/android/app/contacts/eab/EabContactTileView;->getEabPresenceIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 84
    if-nez v1, :cond_0

    .line 85
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/eab/EabContactTileView;->setEabPresence(Landroid/graphics/drawable/Drawable;)V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/eab/EabContactTileView;->setEabPresence(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
