.class Lcom/android/contacts/group/GroupBrowseListFragment$6;
.super Ljava/lang/Object;
.source "GroupBrowseListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/group/GroupBrowseListFragment;->configureCustomActionBarAtBottom()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/group/GroupBrowseListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/group/GroupBrowseListFragment;)V
    .locals 0

    .prologue
    .line 3037
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$6;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3040
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$6;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # invokes: Lcom/android/contacts/group/GroupBrowseListFragment;->constructPopupMenu(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$4300(Lcom/android/contacts/group/GroupBrowseListFragment;Landroid/view/View;)V

    .line 3041
    return-void
.end method
