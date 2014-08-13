.class Lcom/android/contacts/list/ContactTileView$3;
.super Ljava/lang/Object;
.source "ContactTileView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 228
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileView$3;->this$0:Lcom/android/contacts/list/ContactTileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keycode"    # I
    .param p3, "keyevent"    # Landroid/view/KeyEvent;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView$3;->this$0:Lcom/android/contacts/list/ContactTileView;

    # getter for: Lcom/android/contacts/list/ContactTileView;->mListener:Lcom/android/contacts/list/ContactTileView$Listener;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileView;->access$000(Lcom/android/contacts/list/ContactTileView;)Lcom/android/contacts/list/ContactTileView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView$3;->this$0:Lcom/android/contacts/list/ContactTileView;

    # getter for: Lcom/android/contacts/list/ContactTileView;->mListener:Lcom/android/contacts/list/ContactTileView$Listener;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileView;->access$000(Lcom/android/contacts/list/ContactTileView;)Lcom/android/contacts/list/ContactTileView$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileView$3;->this$0:Lcom/android/contacts/list/ContactTileView;

    invoke-interface {v0, v1, p2, p3}, Lcom/android/contacts/list/ContactTileView$Listener;->onKey(Lcom/android/contacts/list/ContactTileView;ILandroid/view/KeyEvent;)V

    .line 236
    const/4 v0, 0x1

    .line 239
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
