.class Lcom/android/contacts/list/ContactTileListFragment$6;
.super Ljava/lang/Object;
.source "ContactTileListFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/ContactTileListFragment;->constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactTileListFragment;

.field final synthetic val$popupMenu:Landroid/widget/PopupMenu;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ContactTileListFragment;Landroid/widget/PopupMenu;)V
    .locals 0

    .prologue
    .line 894
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment$6;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    iput-object p2, p0, Lcom/android/contacts/list/ContactTileListFragment$6;->val$popupMenu:Landroid/widget/PopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 897
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$6;->val$popupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 898
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$6;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
