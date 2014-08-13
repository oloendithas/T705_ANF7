.class Lcom/sec/android/app/contacts/list/SpeedDialListActivity$2;
.super Landroid/database/ContentObserver;
.source "SpeedDialListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/list/SpeedDialListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$2;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 377
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$2;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    iget-object v0, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mAdapter:Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$2;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    iget-object v0, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mAdapter:Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 379
    :cond_0
    return-void
.end method
