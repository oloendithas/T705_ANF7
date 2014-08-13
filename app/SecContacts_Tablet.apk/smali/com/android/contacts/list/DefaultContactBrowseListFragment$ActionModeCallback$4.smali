.class Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback$4;
.super Ljava/lang/Object;
.source "DefaultContactBrowseListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;

.field final synthetic val$mode:Landroid/view/ActionMode;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;Landroid/view/ActionMode;)V
    .locals 0

    .prologue
    .line 4988
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback$4;->this$1:Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;

    iput-object p2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback$4;->val$mode:Landroid/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 4991
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback$4;->val$mode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 4992
    return-void
.end method
