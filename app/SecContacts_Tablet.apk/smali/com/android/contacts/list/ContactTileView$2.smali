.class Lcom/android/contacts/list/ContactTileView$2;
.super Ljava/lang/Object;
.source "ContactTileView.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/ContactTileView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactTileView;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ContactTileView;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileView$2;->this$0:Lcom/android/contacts/list/ContactTileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .param p1, "contextMenu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "contextMenuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView$2;->this$0:Lcom/android/contacts/list/ContactTileView;

    # getter for: Lcom/android/contacts/list/ContactTileView;->mListener:Lcom/android/contacts/list/ContactTileView$Listener;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileView;->access$000(Lcom/android/contacts/list/ContactTileView;)Lcom/android/contacts/list/ContactTileView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView$2;->this$0:Lcom/android/contacts/list/ContactTileView;

    # getter for: Lcom/android/contacts/list/ContactTileView;->mListener:Lcom/android/contacts/list/ContactTileView$Listener;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileView;->access$000(Lcom/android/contacts/list/ContactTileView;)Lcom/android/contacts/list/ContactTileView$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileView$2;->this$0:Lcom/android/contacts/list/ContactTileView;

    invoke-interface {v0, v1}, Lcom/android/contacts/list/ContactTileView$Listener;->onContextContactSelected(Lcom/android/contacts/list/ContactTileView;)V

    .line 226
    :cond_0
    return-void
.end method
