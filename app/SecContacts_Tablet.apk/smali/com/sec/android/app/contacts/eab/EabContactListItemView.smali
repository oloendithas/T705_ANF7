.class public Lcom/sec/android/app/contacts/eab/EabContactListItemView;
.super Lcom/android/contacts/list/ContactListItemView;
.source "EabContactListItemView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EAB"


# instance fields
.field mEabPresenceIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/list/ContactListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method


# virtual methods
.method public getEabPresence(ILandroid/database/Cursor;J)I
    .locals 10
    .param p1, "position"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "contactid"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 74
    const-string v8, ""

    .line 75
    .local v8, "rawcontactid":Ljava/lang/String;
    const-string v1, "EAB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contactid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string v7, "1"

    .line 77
    .local v7, "capability":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/contacts/eab/EabContactListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 78
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->capabilitymap:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    .line 79
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

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 82
    .local v6, "cLook":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 87
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 89
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 91
    const-string v1, "EAB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bind view cLook No of rows :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 97
    if-eqz v8, :cond_3

    const-string v1, ""

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "0"

    sget-object v2, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->capabilitymap:Ljava/util/HashMap;

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 105
    const-string v7, "0"

    .line 115
    :cond_1
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 119
    .end local v6    # "cLook":Landroid/database/Cursor;
    :cond_2
    const-string v1, "EAB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value of capability :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 111
    .restart local v6    # "cLook":Landroid/database/Cursor;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public getEabPresenceIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "status"    # I

    .prologue
    .line 153
    packed-switch p2, :pswitch_data_0

    .line 163
    :pswitch_0
    const-string v0, "EAB"

    const-string v1, "EAB status is not on, so showing lte_not_connected icon"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0203e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    .line 159
    :pswitch_1
    const-string v0, "EAB"

    const-string v1, "EAB status is on, so showing the lte_connected icon"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0203e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 153
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

.method public setEabPresence(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 131
    const-string v0, "EAB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EabContactListItemView - setEabPresense "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    if-eqz p1, :cond_2

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EabContactListItemView;->mEabPresenceIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/eab/EabContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/eab/EabContactListItemView;->mEabPresenceIcon:Landroid/widget/ImageView;

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EabContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/sec/android/app/contacts/eab/EabContactListItemView;->mEabPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->addView(Landroid/view/View;)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EabContactListItemView;->mEabPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EabContactListItemView;->mEabPresenceIcon:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EabContactListItemView;->mEabPresenceIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    :cond_1
    :goto_0
    return-void

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EabContactListItemView;->mEabPresenceIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EabContactListItemView;->mEabPresenceIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showEabPresence(Landroid/database/Cursor;IJII)V
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "position"    # I
    .param p3, "contactid"    # J
    .param p5, "presenceColumnIndex"    # I
    .param p6, "contactStatusColumnIndex"    # I

    .prologue
    .line 48
    const-string v3, "EAB"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EabContactListItemView -  position - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " presenceColumnIndex "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " contactStatusColumnIndex"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v1, 0x0

    .line 52
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/sec/android/app/contacts/eab/EabContactListItemView;->getEabPresence(ILandroid/database/Cursor;J)I

    move-result v2

    .line 56
    .local v2, "presence":I
    sget v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mCapabilityDiscover:I

    .line 58
    .local v0, "capDisc":I
    const-string v3, "EAB"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EabContactListItemView - capDisc : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/EabContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0203e9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/eab/EabContactListItemView;->setPresence(Landroid/graphics/drawable/Drawable;)V

    .line 71
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/EabContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/sec/android/app/contacts/eab/EabContactListItemView;->getEabPresenceIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 65
    if-nez v2, :cond_1

    .line 66
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/eab/EabContactListItemView;->setPresence(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 68
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/eab/EabContactListItemView;->setPresence(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
