.class Lcom/android/contacts/list/DefaultContactListAdapter$ShowEABPresenceTask;
.super Landroid/os/AsyncTask;
.source "DefaultContactListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/DefaultContactListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowEABPresenceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final imageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/contacts/list/ContactListItemView;",
            ">;"
        }
    .end annotation
.end field

.field mContactId:J

.field mContext:Landroid/content/Context;

.field mItemView:Lcom/android/contacts/list/ContactListItemView;

.field mPosition:I

.field final synthetic this$0:Lcom/android/contacts/list/DefaultContactListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/contacts/list/DefaultContactListAdapter;Lcom/android/contacts/list/ContactListItemView;Landroid/content/Context;IJ)V
    .locals 1
    .param p2, "imageView"    # Lcom/android/contacts/list/ContactListItemView;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "position"    # I
    .param p5, "contactId"    # J

    .prologue
    .line 1065
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactListAdapter$ShowEABPresenceTask;->this$0:Lcom/android/contacts/list/DefaultContactListAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1067
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter$ShowEABPresenceTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    .line 1068
    iput-object p3, p0, Lcom/android/contacts/list/DefaultContactListAdapter$ShowEABPresenceTask;->mContext:Landroid/content/Context;

    .line 1069
    iput p4, p0, Lcom/android/contacts/list/DefaultContactListAdapter$ShowEABPresenceTask;->mPosition:I

    .line 1070
    iput-wide p5, p0, Lcom/android/contacts/list/DefaultContactListAdapter$ShowEABPresenceTask;->mContactId:J

    .line 1071
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 6
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 1076
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactListAdapter$ShowEABPresenceTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/ContactListItemView;

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactListAdapter$ShowEABPresenceTask;->mItemView:Lcom/android/contacts/list/ContactListItemView;

    .line 1077
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactListAdapter$ShowEABPresenceTask;->mItemView:Lcom/android/contacts/list/ContactListItemView;

    if-eqz v1, :cond_0

    .line 1078
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactListAdapter$ShowEABPresenceTask;->this$0:Lcom/android/contacts/list/DefaultContactListAdapter;

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactListAdapter$ShowEABPresenceTask;->mItemView:Lcom/android/contacts/list/ContactListItemView;

    iget v3, p0, Lcom/android/contacts/list/DefaultContactListAdapter$ShowEABPresenceTask;->mPosition:I

    iget-wide v4, p0, Lcom/android/contacts/list/DefaultContactListAdapter$ShowEABPresenceTask;->mContactId:J

    # invokes: Lcom/android/contacts/list/DefaultContactListAdapter;->bindEabPresence(Lcom/android/contacts/list/ContactListItemView;IJ)Ljava/lang/Integer;
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/contacts/list/DefaultContactListAdapter;->access$1000(Lcom/android/contacts/list/DefaultContactListAdapter;Lcom/android/contacts/list/ContactListItemView;IJ)Ljava/lang/Integer;

    move-result-object v0

    .line 1080
    .local v0, "presence":Ljava/lang/Integer;
    const-string v1, "EAB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " presence value in doInBackground: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    .end local v0    # "presence":Ljava/lang/Integer;
    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1052
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/DefaultContactListAdapter$ShowEABPresenceTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "presence"    # Ljava/lang/Integer;

    .prologue
    .line 1089
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1092
    const-string v1, "EAB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " presence : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactListAdapter$ShowEABPresenceTask;->mItemView:Lcom/android/contacts/list/ContactListItemView;

    if-eqz v1, :cond_1

    .line 1094
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactListAdapter$ShowEABPresenceTask;->mItemView:Lcom/android/contacts/list/ContactListItemView;

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactListAdapter$ShowEABPresenceTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/list/ContactListItemView;->getEabPresenceIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1096
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isEABReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1098
    const-string v1, "EAB"

    const-string v2, "showEabPresence CONTACT_AVAILABILITY_ON: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactListAdapter$ShowEABPresenceTask;->mItemView:Lcom/android/contacts/list/ContactListItemView;

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListItemView;->setPresenceForEAB(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1111
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_0
    monitor-exit p0

    return-void

    .line 1102
    .restart local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    :try_start_1
    const-string v1, "EAB"

    const-string v2, "showEabPresence CONTACT_AVAILABILITY_OFF: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactListAdapter$ShowEABPresenceTask;->mItemView:Lcom/android/contacts/list/ContactListItemView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactListItemView;->setPresenceForEAB(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1089
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1107
    :cond_1
    :try_start_2
    const-string v1, "EAB"

    const-string v2, "NPE handled "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1052
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/DefaultContactListAdapter$ShowEABPresenceTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
