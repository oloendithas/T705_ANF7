.class Lcom/android/contacts/group/GroupDetailFragment$1;
.super Ljava/lang/Object;
.source "GroupDetailFragment.java"

# interfaces
.implements Lcom/android/contacts/list/ContactTileAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/group/GroupDetailFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/group/GroupDetailFragment;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/contacts/group/GroupDetailFragment$1;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactSelected(Landroid/net/Uri;)V
    .locals 1
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment$1;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    # getter for: Lcom/android/contacts/group/GroupDetailFragment;->mListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;
    invoke-static {v0}, Lcom/android/contacts/group/GroupDetailFragment;->access$000(Lcom/android/contacts/group/GroupDetailFragment;)Lcom/android/contacts/group/GroupDetailFragment$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/contacts/group/GroupDetailFragment$Listener;->onContactSelected(Landroid/net/Uri;)V

    .line 212
    return-void
.end method

.method public onContextContactSelected(Lcom/android/contacts/list/ContactTileView;)V
    .locals 0
    .param p1, "contactTileView"    # Lcom/android/contacts/list/ContactTileView;

    .prologue
    .line 217
    return-void
.end method
