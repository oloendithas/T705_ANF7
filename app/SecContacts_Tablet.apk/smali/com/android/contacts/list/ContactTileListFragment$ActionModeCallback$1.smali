.class Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback$1;
.super Ljava/lang/Object;
.source "ContactTileListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;)V
    .locals 0

    .prologue
    .line 1932
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback$1;->this$1:Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1934
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback$1;->this$1:Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;

    iget-object v0, v0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileListFragment;->showShareViaList()V

    .line 1935
    return-void
.end method
