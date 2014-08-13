.class Lcom/android/contacts/list/ContactTileListFragment$1;
.super Ljava/lang/Object;
.source "ContactTileListFragment.java"

# interfaces
.implements Lcom/android/contacts/list/ContactTileAdapter$onItemCheckedStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/ContactTileListFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactTileListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ContactTileListFragment;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment$1;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemCheckedStateChanged(JZ)V
    .locals 2
    .param p1, "contactId"    # J
    .param p3, "checked"    # Z

    .prologue
    .line 269
    if-eqz p3, :cond_1

    .line 270
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$1;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileListFragment;->access$000(Lcom/android/contacts/list/ContactTileListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$1;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mActionModeCallback:Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileListFragment;->access$100(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$1;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mActionModeCallback:Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileListFragment;->access$100(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->refreshActionBarMode()V

    :cond_0
    return-void

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$1;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileListFragment;->access$000(Lcom/android/contacts/list/ContactTileListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
