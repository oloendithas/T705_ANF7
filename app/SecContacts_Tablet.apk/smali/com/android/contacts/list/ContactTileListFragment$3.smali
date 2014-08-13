.class Lcom/android/contacts/list/ContactTileListFragment$3;
.super Ljava/lang/Object;
.source "ContactTileListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/ContactTileListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactTileListFragment;

.field final synthetic val$config:I


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ContactTileListFragment;I)V
    .locals 0

    .prologue
    .line 581
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment$3;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    iput p2, p0, Lcom/android/contacts/list/ContactTileListFragment$3;->val$config:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$3;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mPositionChangeListener:Lcom/android/contacts/list/ContactTileListFragment$PositionChangeListener;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileListFragment;->access$400(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileListFragment$PositionChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$3;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mTopIndex:I
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$200(Lcom/android/contacts/list/ContactTileListFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment$3;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mTopOffset:I
    invoke-static {v2}, Lcom/android/contacts/list/ContactTileListFragment;->access$300(Lcom/android/contacts/list/ContactTileListFragment;)I

    move-result v2

    iget v3, p0, Lcom/android/contacts/list/ContactTileListFragment$3;->val$config:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/contacts/list/ContactTileListFragment$PositionChangeListener;->loadSelection(III)V

    .line 585
    return-void
.end method
