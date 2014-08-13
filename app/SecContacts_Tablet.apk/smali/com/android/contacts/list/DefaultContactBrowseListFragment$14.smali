.class Lcom/android/contacts/list/DefaultContactBrowseListFragment$14;
.super Ljava/lang/Object;
.source "DefaultContactBrowseListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/DefaultContactBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V
    .locals 0

    .prologue
    .line 1651
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$14;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1656
    const/4 v0, 0x0

    # setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isDeleteConfirmPopupShowing:Z
    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$902(Z)Z

    .line 1657
    return-void
.end method
