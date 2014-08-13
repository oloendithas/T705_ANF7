.class Lcom/android/contacts/list/DefaultContactBrowseListFragment$11;
.super Ljava/lang/Object;
.source "DefaultContactBrowseListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/DefaultContactBrowseListFragment;->createCustomSearchbar()V
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
    .line 1375
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$11;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$11;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # invokes: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->constructPopupMenu(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Landroid/view/View;)V

    .line 1379
    return-void
.end method
