.class public Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;
.super Lcom/android/contacts/list/DefaultContactBrowseListFragment;
.source "EabContactBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment$RefreshTask;,
        Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment$DatabaseTask;
    }
.end annotation


# static fields
.field public static final SUBSCRIBE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "EAB-EabContactBrowseListFragment"


# instance fields
.field private final HANDLE_200OK_EVENT:I

.field private final NOTIFICATION_INFO_EVT:I

.field dialog:Landroid/app/Dialog;

.field private mContactListhandler:Landroid/os/Handler;

.field mEabDaemon:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;-><init>()V

    .line 57
    const/16 v0, 0xc

    iput v0, p0, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;->NOTIFICATION_INFO_EVT:I

    .line 58
    const/16 v0, 0xd

    iput v0, p0, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;->HANDLE_200OK_EVENT:I

    .line 61
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;->mEabDaemon:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;->dialog:Landroid/app/Dialog;

    .line 140
    new-instance v0, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment$1;-><init>(Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;->mContactListhandler:Landroid/os/Handler;

    .line 209
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;)Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    return-object v0
.end method

.method private getContentResolver()Landroid/content/ContentResolver;
    .locals 4

    .prologue
    .line 134
    invoke-static {}, Lcom/android/contacts/ContactsApplication;->getInstance()Lcom/android/contacts/ContactsApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/ContactsApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 135
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "EAB-EabContactBrowseListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EabContactBrowseListFragment - getContentResolver() Cr "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-object v0
.end method

.method private startRefresh()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 129
    new-instance v0, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment$RefreshTask;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment$RefreshTask;-><init>(Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment$RefreshTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 130
    return-void
.end method

.method private subscribe(J)V
    .locals 3
    .param p1, "contactId"    # J

    .prologue
    .line 122
    iget-object v1, p0, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;->mContactListhandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 123
    .local v0, "subscribe":Landroid/os/Message;
    long-to-int v1, p1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 124
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 125
    iget-object v1, p0, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;->mContactListhandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 126
    return-void
.end method


# virtual methods
.method protected bridge synthetic createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;->createListAdapter()Lcom/android/contacts/list/ContactListAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactListAdapter;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 93
    const-string v1, "EAB-EabContactBrowseListFragment"

    const-string v2, "EabContactBrowseListFragment - createListAdapter"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;->isDeleteContactsInGroup()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    new-instance v0, Lcom/sec/android/app/contacts/group/DeleteContactsInGroupListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/group/DeleteContactsInGroupListAdapter;-><init>(Landroid/content/Context;)V

    .line 102
    .local v0, "adapter":Lcom/android/contacts/list/DefaultContactListAdapter;
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 103
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/DefaultContactListAdapter;->setDisplayPhotos(Z)V

    .line 105
    sget-boolean v1, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;->sIsTwoPaneMode:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setItemViewLayerTypeSoftware(Z)V

    .line 106
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableCallButtonInList"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/DefaultContactListAdapter;->setDisplayCallButton(Z)V

    .line 110
    :cond_0
    return-object v0

    .line 99
    .end local v0    # "adapter":Lcom/android/contacts/list/DefaultContactListAdapter;
    :cond_1
    new-instance v0, Lcom/sec/android/app/contacts/eab/EabContactListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/eab/EabContactListAdapter;-><init>(Landroid/content/Context;)V

    .restart local v0    # "adapter":Lcom/android/contacts/list/DefaultContactListAdapter;
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const-string v0, "EAB-EabContactBrowseListFragment"

    const-string v1, "EabContactBrowseListFragment - onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;->mEabDaemon:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    iget-object v1, p0, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;->mContactListhandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->registerContactListHandler(Landroid/os/Handler;)V

    .line 73
    new-instance v0, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment$DatabaseTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment$DatabaseTask;-><init>(Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "data"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment$DatabaseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 74
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onDestroy()V

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;->mEabDaemon:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->deregisterContactListHandler()V

    .line 89
    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    .line 115
    const-string v0, "EAB-EabContactBrowseListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EabContactBrowseListFragment viewContact - position - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onItemClick(IJ)V

    .line 118
    invoke-direct {p0, p2, p3}, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;->subscribe(J)V

    .line 119
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onResume()V

    .line 82
    return-void
.end method
