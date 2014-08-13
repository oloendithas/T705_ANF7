.class public Lcom/sec/android/app/contacts/eab/EabContactListAdapter;
.super Lcom/android/contacts/list/DefaultContactListAdapter;
.source "EabContactListAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EAB"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected bindEabPresence(Lcom/sec/android/app/contacts/eab/EabContactListItemView;Landroid/database/Cursor;I)V
    .locals 8
    .param p1, "view"    # Lcom/sec/android/app/contacts/eab/EabContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "position"    # I

    .prologue
    .line 63
    const-string v0, "EAB"

    const-string v1, "EabContactListAdapter - bindPresense "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    if-nez p2, :cond_0

    .line 67
    const-string v0, "EAB"

    const-string v1, "EabContactListAdapter - bindEabPresense  Invalid Cursor detected returning"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/eab/EabContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v7

    .line 73
    .local v7, "contactUri":Landroid/net/Uri;
    if-eqz v7, :cond_1

    .line 75
    invoke-static {v7}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 78
    .local v3, "contactId":J
    const/4 v5, 0x5

    const/4 v6, 0x6

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/contacts/eab/EabContactListItemView;->showEabPresence(Landroid/database/Cursor;IJII)V

    goto :goto_0

    .line 83
    .end local v3    # "contactId":J
    :cond_1
    const-string v0, "EAB"

    const-string v1, "EabContactListAdapter - bindEabPresense  contactUri is null "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 3
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I

    .prologue
    .line 56
    const-string v0, "EAB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EabContactListAdapter - bindView - position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindView(Landroid/view/View;ILandroid/database/Cursor;I)V

    .line 59
    check-cast p1, Lcom/sec/android/app/contacts/eab/EabContactListItemView;

    .end local p1    # "itemView":Landroid/view/View;
    invoke-virtual {p0, p1, p3, p4}, Lcom/sec/android/app/contacts/eab/EabContactListAdapter;->bindEabPresence(Lcom/sec/android/app/contacts/eab/EabContactListItemView;Landroid/database/Cursor;I)V

    .line 60
    return-void
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 41
    const-string v1, "EAB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EabContactListAdapter - newView - position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance v0, Lcom/sec/android/app/contacts/eab/EabContactListItemView;

    invoke-direct {v0, p1, v4}, Lcom/sec/android/app/contacts/eab/EabContactListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    .local v0, "view":Lcom/android/contacts/list/ContactListItemView;
    iget-object v1, p0, Lcom/sec/android/app/contacts/eab/EabContactListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setUnknownNameText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/EabContactListAdapter;->isQuickContactEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setQuickContactEnabled(Z)V

    .line 45
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/EabContactListAdapter;->isSelectionVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setActivatedStateSupported(Z)V

    .line 47
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/eab/EabContactListAdapter;->mIsItemViewLayerTypeSoftware:Z

    if-eqz v1, :cond_0

    .line 48
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4}, Lcom/android/contacts/list/ContactListItemView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 50
    :cond_0
    return-object v0
.end method
